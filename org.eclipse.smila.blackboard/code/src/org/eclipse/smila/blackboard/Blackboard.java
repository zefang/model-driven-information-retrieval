/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: 
 * Dmitry Hazin (brox IT Solutions GmbH) - initial creator 
 * Sebastian Voigt (Brox IT Solutions GmbH) - initial creator
 * Juergen Schumacher (Attensity Europe GmbH) - update to new data model.
 **********************************************************************************************************************/
package org.eclipse.smila.blackboard;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;

/**
 * The Blackboard is a container for a set of records that are processed in a single step, e.g. to add a crawled record
 * to SMILA in connectivity or to process a single queue message. The blackboard can be connected to storage services
 * (binary storage, record storage) so that existing versions of records can be loaded before the processing starts and
 * the result records can be persisted afterwards. However, a blackboard can also be just "transient", i.e. not
 * connected to any storage services. Then all record data is lost after the processing is finished.
 */
public interface Blackboard {
  /**
   * @return the data factory used by this blackboard to create records.
   */
  DataFactory getDataFactory();

  /**
   * Gets the record for the given Id. This will first check against the memory and if not present there it will call
   * {@link #load(String)}. Depending on the blackboard implementation, attachments may or may not be included in the
   * returned record.
   * 
   * @param id
   *          the id
   * 
   * @return the record
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  Record getRecord(String id) throws BlackboardAccessException;

  /**
   * Shortcut for {@link #getRecord(String)} + {@link Record#getMetadata()}. If {@link #getRecord(String)} would yield
   * null, this method yields null, too.
   * 
   * @param id
   *          the id
   * 
   * @return the record metadata
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  AnyMap getMetadata(String id) throws BlackboardAccessException;

  /**
   * Gets the filtered record. No attachments will be included.
   * 
   * @param id
   *          the id
   * @param filterName
   *          the filter name
   * 
   * @return the record
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   * @throws RecordFilterNotFoundException
   *           the record filter not found exception
   */
  Record getRecord(String id, String filterName) throws BlackboardAccessException, RecordFilterNotFoundException;

  /**
   * Filter record metadata. Attachments will not be included in the filtered record.
   * 
   * @param record
   *          the record
   * @param filterName
   *          the filter name
   * 
   * @return the record
   * 
   * @throws RecordFilterNotFoundException
   *           the record filter not found exception
   */
  Record filterRecord(final Record record, final String filterName) throws RecordFilterNotFoundException;

  /**
   * Stores a record on the blackboard. If a record with the same Id already exists, it will be replaced.
   * 
   * @param record
   *          the record
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void setRecord(Record record) throws BlackboardAccessException;

  /**
   * Creates a copy of the record with a new Id and returns the new record. Attachments are not copied.
   * 
   * @param id
   *          the id
   * @param newId
   *          the id of the copy
   * 
   * @return the copied record.
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  Record copyRecord(String id, String newId) throws BlackboardAccessException;

  /**
   * Synchronize: copy all existing attributes from the incoming record to the blackboard record with the same ID.
   * 
   * @param record
   *          the record
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void synchronizeRecord(Record record) throws BlackboardAccessException;

  // blackboard life cycle methods
  /**
   * commit ALL records on this blackboard to storages (if any) and release resources. It is guaranteed that the
   * blackboard is empty after the operation, but it throws an exception if at least one record could not be committed
   * (e.g. written to storages) successfully. However, the implementation should try to commit as many records as
   * possible and not stop on the first failed commit and invalidate the remaining records.
   * 
   * @throws BlackboardAccessException
   *           at least one record could not be committed.
   */
  void commit() throws BlackboardAccessException;

  /**
   * remove ALL records from blackboard and release all associated resources. Nothing is written to connected storage
   * services.
   */
  void invalidate();

  // record life cycle methods
  /**
   * Creates a new record with a given ID in memory, but only if it doesn't exist there yet, if it does, then nothing
   * happens and the existing record is returned. This method is agnostic to the persistence layer, i.e. it will not
   * check if a record with the same ID has been persisted before. Hence, if there is a record that is persisted but not
   * in memory and this method is called a new record is created (in memory) and a possible flowing commit will
   * overwrite the persisted record.
   * 
   * @param id
   *          the id
   * @return the newly created or existing record.
   */
  Record create(String id);

  /**
   * Loads record data for the given ID from persistence (or prepare it to be loaded). Used by a client to indicate that
   * it wants to process this record.
   * 
   * The behavior is very implementation specific so check the the impl's doc.
   * 
   * @param id
   *          the id
   * @return a newly created or existing record, or in some cases <code>null</code> if record isn't found
   *         (implementation specific)
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  Record load(String id) throws BlackboardAccessException;

  /**
   * All changes are written to the storages before the record is removed. The record is unlocked in the database.
   * 
   * @param id
   *          the id
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void commit(String id) throws BlackboardAccessException;

  /**
   * The record is removed from the blackboard. The record is unlocked in the database. If the record was created new
   * (not overwritten) on this blackboard it should be removed from the storage completely.
   * 
   * @param id
   *          the id
   */
  void invalidate(String id);

  /**
   * remove record completely from blackboard and persistence.
   * 
   * @param id
   *          record id
   */
  void removeRecord(String id);

  // - record attachments
  /**
   * Checks for attachment.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return true, if successful
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  boolean hasAttachment(String id, String name) throws BlackboardAccessException;

  /**
   * Gets the attachment.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return the attachment
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  byte[] getAttachment(String id, String name) throws BlackboardAccessException;

  /**
   * Gets the attachment as stream.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return the attachment as stream
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  InputStream getAttachmentAsStream(String id, String name) throws BlackboardAccessException;

  /**
   * Gets attachment as file. Creates file containing copy of the attachment into blackboard bundle's working directory.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return File
   * 
   * @throws BlackboardAccessException
   *           BlackboardAccessException
   */
  File getAttachmentAsFile(final String id, final String name) throws BlackboardAccessException;

  /**
   * Sets the attachment.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * @param attachment
   *          the attachment
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void setAttachment(String id, String name, byte[] attachment) throws BlackboardAccessException;

  /**
   * Sets the attachment from stream.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * @param attachmentStream
   *          the attachment stream
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void setAttachmentFromStream(String id, String name, InputStream attachmentStream)
    throws BlackboardAccessException;

  /**
   * Sets attachment from file.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * @param attachmentFile
   *          attachment file
   * 
   * @throws BlackboardAccessException
   *           BlackboardAccessException
   */
  void setAttachmentFromFile(String id, String name, File attachmentFile) throws BlackboardAccessException;

  /**
   * Removes the attachment.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void removeAttachment(String id, String name) throws BlackboardAccessException;

  // - notes methods
  /**
   * Checks for global note.
   * 
   * @param name
   *          the name
   * 
   * @return true, if successful
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  boolean hasGlobalNote(String name) throws BlackboardAccessException;

  /**
   * Gets the global note.
   * 
   * @param name
   *          the name
   * 
   * @return the global note
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  Serializable getGlobalNote(String name) throws BlackboardAccessException;

  /**
   * Sets the global note.
   * 
   * @param name
   *          the name
   * @param object
   *          the object
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void setGlobalNote(String name, Serializable object) throws BlackboardAccessException;

  /**
   * Checks for record note.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return true, if successful
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  boolean hasRecordNote(String id, String name) throws BlackboardAccessException;

  /**
   * Gets the record note.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * 
   * @return the record note
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  Serializable getRecordNote(String id, String name) throws BlackboardAccessException;

  /**
   * Sets the record note.
   * 
   * @param id
   *          the id
   * @param name
   *          the name
   * @param object
   *          the object
   * 
   * @throws BlackboardAccessException
   *           the blackboard access exception
   */
  void setRecordNote(String id, String name, Serializable object) throws BlackboardAccessException;

}
