/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation, Andreas Schank (Attensity Europe GmbH) -
 * using LuceneSearchPipelet, Drazen Cindric (Attensity Europe GmbH) - using LuceneIndexPipelet
 **********************************************************************************************************************/
package org.eclipse.smila.lucene.test;

import java.io.File;

import org.apache.lucene.index.IndexReader;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.lucene.LuceneIndexService;
import org.eclipse.smila.lucene.LuceneSearchService;
import org.eclipse.smila.lucene.LuceneService;
import org.eclipse.smila.lucene.pipelets.LuceneIndexPipelet;
import org.eclipse.smila.lucene.pipelets.LuceneSearchPipelet;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryBuilder;
import org.eclipse.smila.test.DeclarativeServiceTestCase;
import org.eclipse.smila.utils.workspace.WorkspaceHelper;

/**
 * The Class TestLuceneIndexService.
 */
public class TestLuceneSearchService extends DeclarativeServiceTestCase {

  /** The Constant DOCS_QUANTITY. */
  private static final int DOCS_QUANTITY = 5;

  /**
   * Name of the test index.
   */
  private static final String TEST_INDEX_NAME = "test_index";

  /** the Blackboard. */
  private Blackboard _blackboard;

  /** the LuceneIndexService. */
  private LuceneIndexService _luceneIndexService;

  /** the LuceneSearchService. */
  private LuceneSearchService _luceneSearchService;

  /** the search pipelet to test. */
  private LuceneSearchPipelet _luceneSearchPipelet;

  /** the index pipelet to test. */
  private LuceneIndexPipelet _luceneIndexPipelet;

  /**
   * the test index directory.
   */
  private File _testIndexDir;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    final BlackboardFactory factory = getService(BlackboardFactory.class);
    assertNotNull("no BlackboardFactory service found.", factory);
    _blackboard = factory.createPersistingBlackboard();
    assertNotNull("no Blackboard created", _blackboard);
    _luceneIndexService = getService(LuceneIndexService.class);
    assertNotNull(_luceneIndexService);
    _testIndexDir = WorkspaceHelper.createWorkingDir(LuceneService.BUNDLE_NAME, TEST_INDEX_NAME);
    assertNotNull(_testIndexDir);
    if (!_luceneIndexService.isIndexExists(TEST_INDEX_NAME)) {
      _luceneIndexService.createIndex(TEST_INDEX_NAME);
    }
    _luceneSearchService = getService(LuceneSearchService.class);
    assertNotNull(_luceneSearchService);
    _luceneSearchPipelet = new LuceneSearchPipelet();
    assertNotNull(_luceneSearchPipelet);
    _luceneIndexPipelet = new LuceneIndexPipelet();
    assertNotNull(_luceneIndexPipelet);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
    _blackboard = null;
    _luceneIndexService = null;
    _luceneSearchService = null;
    _luceneSearchPipelet = null;
    _luceneIndexPipelet = null;
  }

  /**
   * Test add and search documents.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testAddAndSearch() throws Exception {
    addDocument();
    searchDocuments();
  }

  /**
   * Add documents.
   * 
   * @throws Exception
   *           if any error occurs
   */
  private void addDocument() throws Exception {
    IndexReader indexReader = IndexReader.open(_testIndexDir);
    assertEquals(0, indexReader.numDocs());

    final Record[] records = AllTests.createRecords(5);
    assertEquals(DOCS_QUANTITY, records.length);
    final String[] recordIds = new String[DOCS_QUANTITY];
    for (int i = 0; i < records.length; i++) {
      recordIds[i] = records[i].getId();
      _blackboard.setRecord(records[i]);
      AllTests.setAnnotations(_blackboard, records[i].getId(), LuceneIndexService.ExecutionMode.ADD,
        TEST_INDEX_NAME);
    }
    final String[] result = _luceneIndexPipelet.process(_blackboard, recordIds);
    assertEquals(DOCS_QUANTITY, result.length);

    indexReader = indexReader.reopen();
    assertEquals(DOCS_QUANTITY, indexReader.numDocs());
    indexReader.close();
  }

  /**
   * Search documents.
   * 
   * @throws Exception
   *           if any error occurs
   */
  private void searchDocuments() throws Exception {
    final String id = "TestLuceneSearchService.searchDocuments";
    final QueryBuilder builder = new QueryBuilder("testWorkflow");
    builder.setId(id);
    builder.setQuery("test");
    builder.setIndexName(TEST_INDEX_NAME);
    builder.setResultAttributes(AllTests.ATT_TITLE, AllTests.ATT_DATE);
    builder.addHighlightAttributes(AllTests.ATTACHMENT_TEXT);
    builder.setParameter(LuceneSearchService.SEARCH_ANNOTATION_QUERY_ATTRIBUTE, AllTests.ATTACHMENT_TEXT);
    _blackboard.setRecord(builder.getQuery());
    // execute search
    final String[] results = _luceneSearchPipelet.process(_blackboard, new String[] { id });
    assertNotNull(results);
    assertEquals(1, results.length);
    assertEquals(id, results[0]);
    _log.info("Complete result: " + _blackboard.getRecord(id));
    assertEquals(DOCS_QUANTITY, _blackboard.getMetadata(id).getLongValue(SearchResultConstants.COUNT).intValue());
    assertEquals(DOCS_QUANTITY, _blackboard.getMetadata(id).getLongValue(SearchResultConstants.INDEX_SIZE)
      .intValue());
    final AnySeq resultRecords = _blackboard.getMetadata(id).getSeq(SearchResultConstants.RECORDS);
    assertEquals(DOCS_QUANTITY, resultRecords.size());
    for (final Any result : resultRecords) {
      assertTrue(result.isMap());
      final AnyMap resultRecord = (AnyMap) result;
      _log.debug("Result Record: " + resultRecord);
      assertTrue(resultRecord.getStringValue(Record.RECORD_ID).length() > 0);
      assertTrue(resultRecord.getStringValue(AllTests.ATT_TITLE).length() > 0);
      assertNotNull(resultRecord.getDateTimeValue(AllTests.ATT_DATE));
      assertTrue(resultRecord.getDoubleValue(SearchResultConstants.WEIGHT) > 0);
      final AnyMap highlights = resultRecord.getMap(SearchResultConstants.HIGHLIGHT);
      assertNotNull(highlights);
      final AnyMap highlight = highlights.getMap(AllTests.ATTACHMENT_TEXT);
      assertNotNull(highlight);
      final AnySeq highlightPositions = highlight.getSeq(SearchResultConstants.HIGHLIGHT_POSITIONS);
      assertFalse(highlightPositions.isEmpty());
      final String textToHighlight = highlight.getStringValue(SearchResultConstants.HIGHLIGHT_TEXT);
      assertNotNull(textToHighlight);
      assertTrue(textToHighlight.indexOf("test") >= 0);
    }
  }
}
