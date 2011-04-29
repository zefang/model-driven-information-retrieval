/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.lucene;

import java.io.IOException;
import java.util.Iterator;

import javax.xml.parsers.ParserConfigurationException;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.search.index.IndexException;

/**
 * Interface for Lucene Index Service.
 * 
 * @author cind01
 * 
 */
public interface LuceneIndexService extends LuceneService {

  /**
   * Configuration property for the index directory - if true, it will be generated and PROPERTY_INDEX_DIR will be
   * ignored.
   */
  String PROPERTY_TEMPORARY_INDEX_DIR = "temporaryIndexDir";

  /**
   * Configuration property if to force to unlock a locked index on service activation. Unlocking may corrupt an
   * existing index. This option is useful for tests. If not set the default is false.
   */
  String PROPERTY_FORCE_UNLOCK_INDEX = "forceUnlockIndex";

  
    /**
   * Types of errors this pipelet can produce.
   */
  public enum ExecutionMode {

    /**
     * Add the record to the index.
     */
    ADD,

    /**
     * Delete the id from the index.
     */
    DELETE
  };

  /**
   * Add a record to the Lucene index.
   * 
   * @param blackboard
   *          reference to the BlackboardService
   * @param id
   *          Id of the record
   * @param indexName
   *          name of the index
   * @param allowDoublets
   *          boolean flag if doublets of documents are allowed in the index
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws IndexException
   *           if any error occurs
   * @throws IOException
   *           if any error occurs
   * @throws ParserConfigurationException
   *           if any error occurs
   */
  void addRecord(final Blackboard blackboard, final String id, final String indexName, final boolean allowDoublets)
    throws BlackboardAccessException, IndexException, IOException, ParserConfigurationException;

  /**
   * Delete a record from the Lucene index.
   * 
   * @param id
   *          Id of the record
   * @param indexName
   *          name of the index
   * 
   * @throws IndexException
   *           if any error occurs
   */
  void deleteRecord(final String id, final String indexName) throws IndexException;

  /**
   * Creates the index.
   * 
   * @param indexName
   *          the index name
   * 
   * @throws IndexException
   *           the index exception
   */
  void createIndex(final String indexName) throws IndexException;

  /**
   * Delete index.
   * 
   * @param indexName
   *          the index name
   * 
   * @throws IndexException
   *           the index exception
   */
  void deleteIndex(final String indexName) throws IndexException;

  /**
   * Flushes the index with the given name.
   * 
   * @param indexName
   *          name of the index to flush
   * @throws IndexException
   *           if any error occurs
   */
  void flushIndex(final String indexName) throws IndexException;

  /**
   * Returns the names of all available indexes.
   * 
   * @return an iterator over index names
   */
  Iterator<String> getIndexNames();

  /**
   * Checks if is index exists.
   * 
   * @param indexName
   *          the index name
   * 
   * @return true, if is index exists
   * 
   * @throws IndexException
   *           the index exception
   */
  boolean isIndexExists(final String indexName) throws IndexException;

  /**
   * Removes the write.lock of the Lucene index if any exists.
   * 
   * @param indexName
   *          the name of the index to remove the lock
   * @throws IndexException
   *           if any error occurs
   */
  void removeWriteLock(final String indexName) throws IndexException;

  /**
   * Rename index.
   * 
   * @param indexName
   *          the index name
   * @param newIndexName
   *          the new index name
   * 
   * @throws IndexException
   *           the index exception
   */
  void renameIndex(final String indexName, final String newIndexName) throws IndexException;

  /**
   * Reorganize index.
   * 
   * @param indexName
   *          the index name
   * 
   * @throws IndexException
   *           the index exception
   */
  void reorganizeIndex(final String indexName) throws IndexException;
}
