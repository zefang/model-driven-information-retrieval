/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.blackboard.impl;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterHelper;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.utils.digest.DigestHelper;

/**
 * A non-persisting Blackboard implementation.
 */
public class TransientBlackboardImpl implements Blackboard {

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * Blackboard records map.
   */
  private final Map<String, Record> _recordMap = new HashMap<String, Record>();

  /**
   * Map of local temp files caching attachments: record Id -> { attachment name -> attachment file }.
   */
  private final Map<String, Map<String, File>> _attachmentMap = new HashMap<String, Map<String, File>>();

  /**
   * Global notes map: { note name -> note value }.
   */
  private final Map<String, Serializable> _globalNotes = new HashMap<String, Serializable>();

  /**
   * Record notes map: record Id -> { note name -> note value }.
   */
  private final Map<String, Map<String, Serializable>> _recordNotesMap =
    new HashMap<String, Map<String, Serializable>>();

  /**
   * The record filter helper.
   */
  private final RecordFilterHelper _filterHelper;

  /**
   * Directory where cached attachments are stored.
   */
  private final File _attachmentsTempDir;

  /**
   * the data factory used in this blackboard for creating new records.
   */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * create instance.
   * 
   * @param filterHelper
   *          record filter manager.
   * @param attachmentsTempDir
   *          directory to use for temporary attachment files.
   */
  public TransientBlackboardImpl(final RecordFilterHelper filterHelper, final File attachmentsTempDir) {
    super();
    _filterHelper = filterHelper;
    _attachmentsTempDir = attachmentsTempDir;
  }

  /** {@inheritDoc} */
  @Override
  public DataFactory getDataFactory() {
    return _dataFactory;
  }

  /** {@inheritDoc} */
  @Override
  public Record getRecord(final String id) throws BlackboardAccessException {
    synchronized (_recordMap) {
      final Record record = _recordMap.get(id);
      if (record != null) {
        return record;
      }
      this.load(id);
      return _recordMap.get(id);
    }
  }

  /** {@inheritDoc} */
  @Override
  public AnyMap getMetadata(final String id) throws BlackboardAccessException {
    final Record record = getRecord(id);
    if (record != null) {
      return record.getMetadata();
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Record getRecord(final String id, final String filterName) throws RecordFilterNotFoundException,
    BlackboardAccessException {
    final Record record = getRecord(id);
    return filterRecord(record, filterName);
  }

  /** {@inheritDoc} */
  @Override
  public Record filterRecord(final Record record, final String filterName) throws RecordFilterNotFoundException {
    Record newRecord = null;
    if (record != null) {
      newRecord = _filterHelper.filter(record, filterName);
      if (_log.isDebugEnabled()) {
        _log.debug("RECORD BEFORE FILTERING:" + record);
        _log.debug("RECORD AFTER  FILTERING:" + newRecord);
      }
    }
    return newRecord;
  }

  /** {@inheritDoc} */
  @Override
  public void setRecord(final Record record) throws BlackboardAccessException {
    final String id = record.getId();
    synchronized (_recordMap) {
      _recordMap.put(id, record);
    }
  }

  /** {@inheritDoc} */
  @Override
  public Record copyRecord(final String id, final String newId) throws BlackboardAccessException {
    final Record record = _recordMap.get(id);
    final Record copyRecord = _dataFactory.createRecord();
    copyRecord.getMetadata().putAll(_dataFactory.cloneAnyMap(record.getMetadata()));
    copyRecord.setId(newId);
    _recordMap.put(newId, copyRecord);
    // Copy record notes to the new id
    if (_recordNotesMap.containsKey(id)) {
      _recordNotesMap.put(newId, _recordNotesMap.get(id));
    }
    return copyRecord;
  }

  /** {@inheritDoc} */
  @Override
  public void synchronizeRecord(final Record record) throws BlackboardAccessException {
    if (record == null) {
      throw new IllegalArgumentException("record must not be null!");
    }
    if (record.getId() == null) {
      throw new IllegalArgumentException("record.id must not be null!");
    }
    if (record.getMetadata() == null) {
      throw new IllegalArgumentException("record.metadata must not be null!");
    }
    Record oldRecord = null;
    synchronized (_recordMap) {
      try {
        // try to load
        this.load(record.getId());
        oldRecord = _recordMap.get(record.getId());
      } catch (final Exception e) {
        _log
          .warn("Error synchronizing record " + record.getId() + " with record storage, creating a new record", e);
      }
    }
    if (oldRecord == null) {
      // no old version exists or can be loaded -> use new record as is
      this.setRecord(record);
      return;
    }
    synchronized (oldRecord) {
      final AnyMap metadata = record.getMetadata();
      if (!metadata.isEmpty()) {
        copyAttributes(metadata, oldRecord.getMetadata());
      }
      for (final Iterator<String> attachmentNames = record.getAttachmentNames(); attachmentNames.hasNext();) {
        final String attachmentName = attachmentNames.next();
        oldRecord.setAttachment(attachmentName, record.getAttachment(attachmentName));
      }
    }
    this.setRecord(oldRecord);
  }

  /** {@inheritDoc} */
  @Override
  public void commit() throws BlackboardAccessException {
    // try to commit each single record.
    final int numberOfRecords = _recordMap.size();
    int commitFailures = 0;
    for (final String id : getIds()) {
      try {
        commit(id);
      } catch (final Exception ex) {
        commitFailures++;
        _log.error("failed to commit " + id, ex);
      }
    }
    // make sure that the blackboard is empty afterwards.
    invalidate();
    if (commitFailures > 0) {
      throw new BlackboardAccessException("Failed to commit " + commitFailures + " of " + numberOfRecords
        + " records on blackboard, see log for IDs.");
    }
  }

  /** {@inheritDoc} */
  @Override
  public void invalidate() {
    // invalidate each single record
    for (final String id : getIds()) {
      try {
        invalidate(id);
      } catch (final Exception ex) {
        _log.error("failed to invalidate " + id, ex);
      }
    }
    // just to be sure. Usually each of these files should have been removed in the record-invalidations already.
    for (final Map<String, File> attachmentFiles : _attachmentMap.values()) {
      for (final File attachmentFile : attachmentFiles.values()) {
        FileUtils.deleteQuietly(attachmentFile);
      }
    }
    _recordMap.clear();
    _globalNotes.clear();
    _recordNotesMap.clear();
    _attachmentMap.clear();
  }

  // record life cycle methods
  /**
   * {@inheritDoc}
   */
  @Override
  public Record create(final String id) {
    if (id == null) {
      throw new IllegalArgumentException("Record Id cannot be null");
    }
    Record record = _recordMap.get(id);
    if (record == null) {
      record = _dataFactory.createRecord(id);
      _recordMap.put(id, record);
    }
    return record;
  }

  /**
   * same as {@link #create(String)}.
   * 
   * {@inheritDoc}
   */
  @Override
  public Record load(final String id) throws BlackboardAccessException {
    return create(id);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void commit(final String id) throws BlackboardAccessException {
    invalidate(id);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void invalidate(final String id) {
    // remove cached attachments files
    final Map<String, File> recordFileAttachments = _attachmentMap.get(id);
    if (recordFileAttachments != null) {
      final Set<String> attachmentNames = recordFileAttachments.keySet();
      for (final String attachmentName : attachmentNames) {
        final File attachment = recordFileAttachments.get(attachmentName);
        FileUtils.deleteQuietly(attachment);
      }
    }
    _recordNotesMap.remove(id);
    _attachmentMap.remove(id);
    _recordMap.remove(id);
  }

  /** {@inheritDoc} */
  @Override
  public void removeRecord(final String id) {
    invalidate(id);
  }

  // - record attachments
  /**
   * {@inheritDoc}
   */
  @Override
  public boolean hasAttachment(final String id, final String name) throws BlackboardAccessException {
    // replaced by getRecord because errors...
    final Record record = getRecord(id);
    // final Record record = getCachedRecord(id);
    return record.hasAttachment(name);
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public byte[] getAttachment(final String id, final String name) throws BlackboardAccessException {
    final Record record = getRecord(id);
    // TODO: other methods return null if result object is missing. why not this?
    if (!record.hasAttachment(name)) {
      throw new BlackboardAccessException("Record with id = " + id + " doesn't have the attachment [" + name + "]");
    }
    return record.getAttachment(name);
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public InputStream getAttachmentAsStream(final String id, final String name) throws BlackboardAccessException {
    return new ByteArrayInputStream(getAttachment(id, name));
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public File getAttachmentAsFile(final String id, final String name) throws BlackboardAccessException {
    synchronized (_attachmentMap) {
      File attachmentFile = null;
      if (_attachmentMap.get(id) != null) {
        attachmentFile = _attachmentMap.get(id).get(name);
        if (attachmentFile != null) {
          return attachmentFile;
        }
      }
      try {
        attachmentFile = new File(_attachmentsTempDir, getAttachmentId(id, name));
        FileUtils.writeByteArrayToFile(attachmentFile, getAttachment(id, name));
        // put attachment into cache
        Map<String, File> recordAtttachmentFiles = _attachmentMap.get(id);
        if (recordAtttachmentFiles == null) {
          recordAtttachmentFiles = new HashMap<String, File>();
        }
        recordAtttachmentFiles.put(name, attachmentFile);
        _attachmentMap.put(id, recordAtttachmentFiles);
      } catch (final IOException ex) {
        throw new BlackboardAccessException("Error getting attachment as file, record id: " + id, ex);
      }
      return attachmentFile;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public void setAttachment(final String id, final String name, final byte[] attachment)
    throws BlackboardAccessException {
    final Record record = getRecord(id);
    checkCachedFileAttachment(id, name);
    record.setAttachment(name, attachment);
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public void setAttachmentFromStream(final String id, final String name, final InputStream attachmentStream)
    throws BlackboardAccessException {
    try {
      final Record record = getRecord(id);
      checkCachedFileAttachment(id, name);
      record.setAttachment(name, IOUtils.toByteArray(attachmentStream));
    } catch (final IOException ex) {
      throw new BlackboardAccessException(ex);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public void setAttachmentFromFile(final String id, final String name, final File attachmentFile)
    throws BlackboardAccessException {
    try {
      final Record record = getRecord(id);
      checkCachedFileAttachment(id, name);
      record.setAttachment(name, FileUtils.readFileToByteArray(attachmentFile));
    } catch (final IOException ex) {
      throw new BlackboardAccessException(ex);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.blackboard.Blackboard#removeAttachment(org.eclipse.smila.datamodel.id.Id, java.lang.String)
   */
  @Override
  public void removeAttachment(final String id, final String name) throws BlackboardAccessException {
    final Record record = getRecord(id);
    checkCachedFileAttachment(id, name);
    record.removeAttachment(name);
  }

  // - notes methods
  /**
   * {@inheritDoc}
   */
  @Override
  public boolean hasGlobalNote(final String name) throws BlackboardAccessException {
    return _globalNotes.containsKey(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Serializable getGlobalNote(final String name) throws BlackboardAccessException {
    return _globalNotes.get(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setGlobalNote(final String name, final Serializable object) throws BlackboardAccessException {
    _globalNotes.put(name, object);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean hasRecordNote(final String id, final String name) throws BlackboardAccessException {
    final Map<String, Serializable> recordNotes = _recordNotesMap.get(id);
    if (recordNotes == null) {
      return false;
    } else {
      return recordNotes.containsKey(name);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @throws BlackboardAccessException
   */
  @Override
  public Serializable getRecordNote(final String id, final String name) throws BlackboardAccessException {
    final Map<String, Serializable> recordNotes = _recordNotesMap.get(id);
    if (recordNotes != null) {
      return recordNotes.get(name);
    } else {
      throw new BlackboardAccessException("Record note not found");
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setRecordNote(final String id, final String name, final Serializable object)
    throws BlackboardAccessException {
    Map<String, Serializable> recordNotes = _recordNotesMap.get(id);
    if (recordNotes == null) {
      recordNotes = new HashMap<String, Serializable>();
      recordNotes.put(name, object);
      _recordNotesMap.put(id, recordNotes);
    } else {
      recordNotes.put(name, object);
      _recordNotesMap.put(id, recordNotes);
    }
  }

  // Utility methods
  /**
   * Calculates the attachment id that will be used as a key in binary storage.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return the attachment id
   */
  protected String getAttachmentId(final String id, final String name) {
    return DigestHelper.calculateDigest(id + "_ATTACHMENT_" + name);
  }

  /**
   * Checks if there is cached File attachment for given Id and prevents overwriting it.
   * 
   * @param id
   *          Id
   * @param name
   *          attachment name
   * @throws BlackboardAccessException
   *           file exists.
   */
  protected void checkCachedFileAttachment(final String id, final String name) throws BlackboardAccessException {
    final Map<String, File> recordFileAttachments = _attachmentMap.get(id);
    if (recordFileAttachments != null && recordFileAttachments.get(name) != null) {
      throw new BlackboardAccessException("Attachment [" + name + "] of record with id=" + id
        + " was previously loaded by getAttachmentAsFile method");
    }
  }

  /**
   * Returns cached record by id or null if record is not loaded into blackboard.
   * 
   * @param id
   *          Record id
   * 
   * @return Record
   */
  protected Record getCachedRecord(final String id) {
    if (_log.isDebugEnabled()) {
      _log.debug("Getting cached record with id=" + id);
    }
    return _recordMap.get(id);
  }

  /**
   * check if record exists on blackboard.
   * 
   * @param id
   *          record ID
   * @return true if a record with this ID is currently loaded.
   */
  protected boolean containsRecord(final String id) {
    return _recordMap.containsKey(id);
  }

  /**
   * create a collection of all IDs of records on the blackboard.
   * 
   * @return collection containing IDs of all currently loaded records.
   */
  protected Collection<String> getIds() {
    return new ArrayList<String>(_recordMap.keySet());
  }

  /**
   * Copy attributes.
   * 
   * @param source
   *          the source
   * @param destination
   *          the destination
   */
  protected void copyAttributes(final AnyMap source, final AnyMap destination) {
    for (final String name : source.keySet()) {
      if (!Record.RECORD_ID.equals(name)) {
        final Any sourceAttribute = source.get(name);
        final Any attribute = _dataFactory.cloneAny(sourceAttribute);
        destination.put(name, attribute);
      }
    }
  }
}
