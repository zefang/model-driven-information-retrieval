/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.lucene.test;

import java.util.Date;

import junit.framework.Test;
import junit.framework.TestSuite;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.lucene.LuceneIndexService;
import org.eclipse.smila.lucene.pipelets.LuceneIndexPipelet;

/**
 * Test suite for org.eclipse.smila.lucene bundle.
 */
public final class AllTests {

  /**
   * Constant for attribute Title.
   */
  public static final String ATT_TITLE = "Title";

  /**
   * Constant for attribute Date.
   */
  public static final String ATT_DATE = "Date";

  /**
   * Constant for attachment Text.
   */
  public static final String ATTACHMENT_TEXT = "Content";

  /** data model factory. */
  public static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /**
   * Private constructor.
   */
  private AllTests() {

  }

  /**
   * Creates test suite.
   * 
   * @return Test suite.
   */
  public static Test suite() {

    final TestSuite suite = new TestSuite("Tests for org.eclipse.smila.lucene");
    // $JUnit-BEGIN$
    suite.addTestSuite(TestLoadMappings.class);
    suite.addTestSuite(TestLuceneIndexService.class);
    suite.addTestSuite(TestLuceneSearchService.class);
    // $JUnit-END$
    return suite;
  }

  /**
   * Creates a record.
   * 
   * @param idValue
   *          the value of the Id
   * @param title
   *          the title
   * @param date
   *          the date
   * @param text
   *          the text
   * @return a Record object
   */
  public static Record createRecord(final String idValue, final String title, final Date date, final String text) {
    final Record record = FACTORY.createRecord(idValue);
    record.getMetadata().put(AllTests.ATT_TITLE, title);
    record.getMetadata().put(AllTests.ATT_DATE, FACTORY.createDateTimeValue(date));
    record.setAttachment(AllTests.ATTACHMENT_TEXT, text.getBytes());
    return record;
  }

  /**
   * Creates a list of records.
   * 
   * @param count
   *          the number of records to create
   * @return a Record[]
   */
  public static Record[] createRecords(final int count) {
    final String id = "testId";
    final String title = "test title";
    final Date date = new Date(System.currentTimeMillis());
    final String text = "This is a test document. It contains some sentences. But not too much.";

    final Record[] records = new Record[count];
    for (int i = 0; i < count; i++) {
      records[i] = createRecord(id + i, title + i, date, text);
    }
    return records;
  }

  /**
   * Sets the execution mode for a record.
   * 
   * @param blackboard
   *          the BlackBoardService
   * @param id
   *          the Id
   * @param execMode
   *          the executionMode
   * @param indexName
   *          the name of the index
   * 
   * @throws BlackboardAccessException
   *           if any error occurs
   */
  public static void setAnnotations(final Blackboard blackboard, final String id,
    final LuceneIndexService.ExecutionMode execMode, final String indexName) throws BlackboardAccessException {
    final AnyMap annotation = blackboard.getDataFactory().createAnyMap();
    annotation.put(LuceneIndexPipelet.INDEX_NAME, indexName);
    annotation.put(LuceneIndexPipelet.EXECUTION_MODE, execMode.name());
    blackboard.getMetadata(id).put(LuceneIndexPipelet.INDEXING_PARAMETERS, annotation);
  }
}
