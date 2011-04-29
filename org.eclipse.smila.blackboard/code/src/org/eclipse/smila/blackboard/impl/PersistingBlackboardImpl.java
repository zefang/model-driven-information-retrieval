/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Dmitry Hazin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (Brox IT Solutions GmbH) -
 * initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.blackboard.impl;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.binarystorage.BinaryStorageException;
import org.eclipse.smila.binarystorage.BinaryStorageService;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterHelper;
import org.eclipse.smila.recordstorage.RecordStorage;
import org.eclipse.smila.recordstorage.RecordStorageException;

/**
 * Blackboard implementation which is able to persist records and their attachments in storages.
 */
public class PersistingBlackboardImpl extends TransientBlackboardImpl {

  /**
   * The Constant LOG.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * RecordStorage used by blackboard.
   */
  private RecordStorage _recordStorage;

  /**
   * BinaryStorage used by blackboard.
   */
  private BinaryStorageService _binaryStorage;

  /**
   * create instance.
   * 
   * @param filterHelper
   *          record filters
   * @param attachmentsTempDir
   *          directory for temp files for file based access to attachment.
   */
  public PersistingBlackboardImpl(final RecordFilterHelper filterHelper, final File attachmentsTempDir) {
    super(filterHelper, attachmentsTempDir);
  }

  /**
   * Set the record service for blackboard. To be used by Declarative Services as the bind method.
   * 
   * @param recordStorage
   *          RecordStorage - the record storage service interface
   */
  public void setRecordStorage(final RecordStorage recordStorage) {
    _recordStorage = recordStorage;
  }

  /**
   * Set the binary service for blackboard. To be used by Declarative Services as the bind method.
   * 
   * @param binaryStorage
   *          BinaryStorageService - the binary storage service interface
   */
  public void setBinaryStorage(final BinaryStorageService binaryStorage) {
    _binaryStorage = binaryStorage;
  }

  // record life cycle methods

  /**
   * loads the record from store for the given Id. In case a record store is configured and the record isn't found
   * nothing happens but a debug log message is printed to the log.
   * <p/>
   * In case no record store is configured/present then this will create a new record!
   * 
   * {@inheritDoc}
   */
  @Override
  public Record load(final String id) throws BlackboardAccessException {
    if (id == null) {
      throw new IllegalArgumentException("Record Id cannot be null");
    }
    Record record = getCachedRecord(id);
    if (record == null) {
      if (_recordStorage == null) {
        if (_log.isWarnEnabled()) {
          _log.warn("RecordStorage is not bound - creating empty record");
        }
        return create(id);
      }
      try {
        if (_log.isDebugEnabled()) {
          _log.debug("Loading record by id: " + id);
        }
        record = _recordStorage.loadRecord(id);
        if (record != null) {
          if (_log.isDebugEnabled()) {
            _log.debug("Record loaded: " + record);
          }
          super.setRecord(record);
        } else {
          if (_log.isDebugEnabled()) {
            _log.debug("No record found with id: " + id);
          }
        }
      } catch (final RecordStorageException exception) {
        throw new BlackboardAccessException("Error loading record with id = " + id, exception);
      }
    }
    return record;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setRecord(final Record record) throws BlackboardAccessException {
    final String id = record.getId();
    super.setRecord(record);
    // Save record attachments to binstorage.
    for (final Iterator<String> attachmentNames = record.getAttachmentNames(); attachmentNames.hasNext();) {
      final String attachmentName = attachmentNames.next();
      final byte[] attachment = record.getAttachment(attachmentName);
      if (attachment != null) {
        setAttachment(id, attachmentName, attachment);
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void commit(final String id) throws BlackboardAccessException {
    if (_log.isDebugEnabled()) {
      _log.debug("Committing record, IdHash=" + id);
    }
    final Record record = getCachedRecord(id);
    if (record == null) {
      throw new BlackboardAccessException("Record with id = " + id + " is not loaded in the blackboard.");
    }
    if (_log.isDebugEnabled()) {
      _log.debug("Record to commit: " + record);
    }
    try {
      if (_recordStorage == null) {
        if (_log.isWarnEnabled()) {
          _log.warn("RecordStorage is not bound - record won't be committed to RecordStorage");
        }
      } else {
        _recordStorage.storeRecord(record);
      }
    } catch (final RecordStorageException ex) {
      try {
        invalidate(id);
      } catch (final Exception e) {
        _log.error("Error invalidating record with id = " + id, e);
      }
      throw new BlackboardAccessException(ex);
    }
    super.commit(id);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void invalidate(final String id) {
    // _log.info("Invalidate " + id);
    try {
      if (_recordStorage == null) {
        if (_log.isWarnEnabled()) {
          _log
            .warn("RecordStorage is not bound - invalidate won't remove attachments of the non-committed record.");
        }
      } else if (!_recordStorage.existsRecord(id)) {
        removeCachedRecordAttachments(id);
      }
    } catch (final RecordStorageException ex) {
      if (_log.isWarnEnabled()) {
        _log.warn("RecordStorage could not check existence of record - "
          + "invalidate won't remove attachments of the non-committed record.");
      }
    } finally {
      super.invalidate(id);
    }
  }

  /** {@inheritDoc} */
  @Override
  public void removeRecord(final String id) {
    final Record record = getCachedRecord(id);
    if (record != null) {
      if (_recordStorage != null) {
        try {
          _recordStorage.removeRecord(id);
        } catch (final RecordStorageException ex) {
          _log.warn("Could not remove record " + id + " from record storage", ex);
        }
      }
      if (_binaryStorage != null && record.hasAttachments()) {
        for (final Iterator<String> names = record.getAttachmentNames(); names.hasNext();) {
          final String name = names.next();
          try {
            removeAttachment(id, name);
          } catch (final BlackboardAccessException ex) {
            _log.warn("Could not remove attachment " + name + " of record " + id + " from binary storage", ex);
          }
        }
      }
    }
    super.removeRecord(id);
  }

  /** {@inheritDoc} */
  @Override
  public byte[] getAttachment(final String id, final String name) throws BlackboardAccessException {
    final Record record = getRecord(id);
    if (!record.hasAttachment(name)) {
      throw new BlackboardAccessException("Record with id = " + id + " doesn't have the attachment [" + name + "]");
    }
    byte[] attachment = null;
    try {
      attachment = _binaryStorage.fetchAsByte(getAttachmentId(id, name));
    } catch (final BinaryStorageException bsex) {
      throw new BlackboardAccessException(
        "Could not get the attachment-file from binary storage for record having id :" + id, bsex);
    }
    return attachment;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public InputStream getAttachmentAsStream(final String id, final String name) throws BlackboardAccessException {
    // replaced by getRecord because errors...
    final Record record = getRecord(id);
    // final Record record = getCachedRecord(id);
    if (!record.hasAttachment(name)) {
      throw new BlackboardAccessException("Record with id = " + id + " doesn't have the attachment [" + name + "]");
    }
    // return new ByteArrayInputStream(record.getAttachment(name));
    InputStream attachmentInputStream = null;
    try {
      attachmentInputStream = _binaryStorage.fetchAsStream(getAttachmentId(id, name));
    } catch (final BinaryStorageException bsex) {
      throw new BlackboardAccessException(
        "Could not get the attachment-file from binary storage for record having id :" + id, bsex);
    }
    return attachmentInputStream;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setAttachment(final String id, final String name, final byte[] attachment)
    throws BlackboardAccessException {
    final Record record = getRecord(id);
    storeAttachment(id, name, attachment);
    checkCachedFileAttachment(id, name);
    record.setAttachment(name, null);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setAttachmentFromStream(final String id, final String name, final InputStream attachmentStream)
    throws BlackboardAccessException {
    final Record record = getRecord(id);
    storeAttachment(id, name, attachmentStream);
    checkCachedFileAttachment(id, name);
    record.setAttachment(name, null);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setAttachmentFromFile(final String id, final String name, final File attachmentFile)
    throws BlackboardAccessException {
    InputStream attachmentStream = null;
    try {
      final Record record = getRecord(id);
      attachmentStream = FileUtils.openInputStream(attachmentFile);
      storeAttachment(id, name, attachmentFile);
      checkCachedFileAttachment(id, name);
      record.setAttachment(name, null);
    } catch (final IOException exception) {
      throw new BlackboardAccessException(exception);
    } finally {
      IOUtils.closeQuietly(attachmentStream);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.blackboard.Blackboard#removeAttachment(org.eclipse.smila.datamodel.id.Id, java.lang.String)
   */
  @Override
  public void removeAttachment(final String id, final String name) throws BlackboardAccessException {
    try {
      final String attachmentId = getAttachmentId(id, name);
      if (_log.isDebugEnabled()) {
        _log.debug("Removing attachment " + attachmentId + " from binary storage");
      }
      _binaryStorage.remove(attachmentId);

    } catch (final BinaryStorageException bsex) {
      if (_log.isErrorEnabled()) {
        _log.error("Failed to remove attachment " + name + " from binary storage for record having id :" + id
          + " - " + bsex.getMessage());
      }
      throw new BlackboardAccessException(bsex);
    } finally {
      super.removeAttachment(id, name);
    }
  }

  /**
   * Saves attachment to binary storage from given InputStream and replaces actual attachment with null into
   * corresponding record.
   * 
   * @param id
   *          Record Id
   * @param name
   *          Attachment name
   * @param attachment
   *          Attachment object
   * 
   * @throws BlackboardAccessException
   *           BlackboardAccessException
   */
  private void storeAttachment(final String id, final String name, final InputStream attachment)
    throws BlackboardAccessException {
    final String attachmentId = getAttachmentId(id, name);
    if (_log.isDebugEnabled()) {
      _log.debug("Saving attachment " + attachmentId + " to binary storage");
    }
    try {
      _binaryStorage.store(attachmentId, attachment);
    } catch (final BinaryStorageException bsex) {
      throw new BlackboardAccessException(
        "Failed to save attachment in binary storage for record having id :" + id, bsex);
    }
  }

  /**
   * Saves attachment to binary storage from given byte array and replaces actual attachment with null into
   * corresponding record.
   * 
   * @param id
   *          Record Id
   * @param name
   *          Attachment name
   * @param attachment
   *          Attachment object
   * 
   * @throws BlackboardAccessException
   *           BlackboardAccessException
   */
  private void storeAttachment(final String id, final String name, final byte[] attachment)
    throws BlackboardAccessException {
    final String attachmentId = getAttachmentId(id, name);
    if (_log.isDebugEnabled()) {
      _log.debug("Saving attachment " + attachmentId + " to binary storage");
    }
    try {
      _binaryStorage.store(attachmentId, attachment);
    } catch (final BinaryStorageException bsex) {
      throw new BlackboardAccessException(
        "Failed to save attachment in binary storage for record having id :" + id, bsex);
    }
  }

  /**
   * Saves attachment to binary storage from given File and replaces actual attachment with null into corresponding
   * record.
   * 
   * @param id
   *          Record Id
   * @param name
   *          Attachment name
   * @param attachment
   *          Attachment object
   * 
   * @throws BlackboardAccessException
   *           BlackboardAccessException
   */
  private void storeAttachment(final String id, final String name, final File attachment)
    throws BlackboardAccessException {
    final String attachmentId = getAttachmentId(id, name);
    if (_log.isDebugEnabled()) {
      _log.debug("Saving attachment " + attachmentId + " to binary storage");
    }
    InputStream attachmentStream = null;
    try {
      attachmentStream = FileUtils.openInputStream(attachment);
      _binaryStorage.store(attachmentId, attachmentStream);
    } catch (final Exception exception) {
      throw new BlackboardAccessException(
        "Failed to save attachment in binary storage for record having id :" + id, exception);
    } finally {
      IOUtils.closeQuietly(attachmentStream);
    }
  }

  /**
   * Removes attachments of the blackboard-loaded record from binary storage.
   * 
   * @param id
   *          record Id
   */
  private void removeCachedRecordAttachments(final String id) {
    final Record record = getCachedRecord(id);
    if (record != null) {
      if (record.hasAttachments()) {
        for (final Iterator<String> attachmentNames = record.getAttachmentNames(); attachmentNames.hasNext();) {
          final String attachmentName = attachmentNames.next();
          try {
            _binaryStorage.remove(getAttachmentId(id, attachmentName));
          } catch (final BinaryStorageException storageException) {
            if (_log.isErrorEnabled()) {
              _log
                .error("Could not invalidate/delete the attachment-file from binary storage for record having id :"
                  + id + " - " + storageException.getMessage());
            }
          }
        }
      }
    } else {
      if (_log.isWarnEnabled()) {
        _log.warn("Record with id = " + id + " is not loaded in the blackboard.");
      }
    }
  }

}
