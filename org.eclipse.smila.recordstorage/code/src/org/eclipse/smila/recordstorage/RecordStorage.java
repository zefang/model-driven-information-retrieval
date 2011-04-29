/***********************************************************************************************************************
 * Copyright (c) 2008 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.recordstorage;

import java.util.Iterator;

import org.eclipse.smila.datamodel.Record;

/**
 * RecordStorage service interface.
 */
public interface RecordStorage {

  /**
   * Load the record from storage.
   * 
   * @param id
   *          Id of the record
   * @return a Record object or null, if no record with the given Id exists
   * @throws RecordStorageException
   *           if any error occurs
   */
  Record loadRecord(String id) throws RecordStorageException;

  /**
   * Stores the given Record object. An existing Record with the same ID is overwritten by the given record.
   * 
   * @param record
   *          the Record object
   * @throws RecordStorageException
   *           if any error occurs
   */
  void storeRecord(Record record) throws RecordStorageException;

  /**
   * Removes the record.
   * 
   * @param id
   *          Id of the record
   * @throws RecordStorageException
   *           if any error occurs
   */
  void removeRecord(String id) throws RecordStorageException;

  /**
   * Checks if a Record exists in the storage.
   * 
   * @param id
   *          Id of the record
   * @return true if a record with the given Id exists, false otherwise
   * @throws RecordStorageException
   *           if any error occurs
   */
  boolean existsRecord(String id) throws RecordStorageException;

  /**
   * Loads all records of the given source.
   * 
   * @param source
   *          the name of the data source
   * @return an Iterator over the Record objects
   * @throws RecordStorageException
   *           if any error occurs
   */
  Iterator<Record> loadRecords(String source) throws RecordStorageException;
}
