/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.search.api.test;

import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.xml.XmlConstants;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.SearchService;
import org.eclipse.smila.search.api.helper.QueryBuilder;
import org.eclipse.smila.search.api.helper.ResultAccessor;
import org.eclipse.smila.search.api.helper.ResultItemAccessor;
import org.eclipse.smila.search.api.pipelet.TestSearchPipelet;
import org.eclipse.smila.test.DeclarativeServiceTestCase;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Test search processing with pipelets. The pipeline contains a simple pipelet manipulating the query, then a search
 * pipelet that creates a search result by splitting the query object and finally the same simple pipelet than before
 * manipulates the result records.
 * 
 * @author jschumacher
 * 
 */
public class TestSearchPipeletPipeline extends DeclarativeServiceTestCase {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "SearchPipeletPipeline";

  /**
   * name of attribute set by test pipelet in query record.
   */
  public static final String ATTRIBUTE_QUERY = TestSearchPipelet.QUERY;

  /**
   * name of attribute set by test pipelet in result records.
   */
  public static final String ATTRIBUTE_TITLE = TestSearchPipelet.TITLE;

  /**
   * search service.
   */
  private SearchService _search;

  /** factory for anys. */
  private final DataFactory _factory = DataFactoryCreator.createDefaultFactory();

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
   */
  protected String getPipelineName() {
    return PIPELINE_NAME;
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    _search = getService(SearchService.class);
    assertNotNull(_search);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testWithoutBuilder() throws Exception {
    final String queryString = "test basic";
    final Record query = _factory.createRecord();
    query.getMetadata().put(QueryConstants.QUERY, _factory.createStringValue(queryString));
    final Record result = _search.search(getPipelineName(), query);
    assertNotNull(result);
    assertTrue(result.getId().startsWith(getPipelineName()));
    assertNotNull(result.getMetadata().get(QueryConstants.QUERY));
    assertNotNull(result.getMetadata().get(SearchResultConstants.RECORDS));
    assertEquals(QueryConstants.DEFAULT_MAXCOUNT, result.getMetadata().getSeq(SearchResultConstants.RECORDS).size());
  }

  /**
   * test with default size and offset.
   * 
   * @throws Exception
   *           test fails
   */
  public void testDefault() throws Exception {
    final String queryString = "test default";
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    assertEquals(getPipelineName(), query.getWorkflowName());
    final ResultAccessor result = query.executeRequest(_search);
    assertNotNull(result);
    assertNotNull(result.getResult());
    assertEquals(getPipelineName(), result.getWorkflowName());
    assertTrue(result.hasQuery());
    assertTrue(result.hasRecords());
    checkQuery(result.getResult(), queryString, QueryConstants.DEFAULT_THRESHOLD);
    checkResult(result, queryString, QueryConstants.DEFAULT_MAXCOUNT, QueryConstants.DEFAULT_OFFSET,
      QueryConstants.DEFAULT_THRESHOLD);
  }

  /**
   * test with non-default size and offset.
   * 
   * @throws Exception
   *           test fails
   */
  public void testNonDefault() throws Exception {
    final String queryString = "test non default";
    final int mySize = 2;
    final int myOffset = 4;
    final double myThreshold = 0.5;
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    query.setMaxCount(mySize).setOffset(myOffset).setThreshold(myThreshold).setIndexName("my-index");
    final ResultAccessor result = query.executeRequest(_search);
    assertNotNull(result);
    assertNotNull(result.getResult());
    assertEquals(getPipelineName(), result.getWorkflowName());
    assertTrue(result.hasQuery());
    assertTrue(result.hasRecords());
    assertEquals("my-index", result.getResult().getMetadata().getStringValue(QueryConstants.INDEXNAME));
    checkQuery(result.getResult(), queryString, myThreshold);
    checkResult(result, queryString, mySize, myOffset, myThreshold);
  }

  /**
   * test query record terms annotation.
   * 
   * @throws Exception
   *           test fails
   */
  public void testTerms() throws Exception {
    final String queryString = "test some terms";
    final int mySize = 3;
    final int myOffset = 3;
    final double myThreshold = 0.1;
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    query.setMaxCount(mySize).setOffset(myOffset).setThreshold(myThreshold);
    final ResultAccessor result = query.executeRequest(_search);
    assertNotNull(result);
    assertTrue(result.hasQuery());
    assertTrue(result.hasRecords());
  }

  /**
   * test with attachment.
   * 
   * @throws Exception
   *           test fails
   */
  public void testAttachment() throws Exception {
    final String queryString = "test attachment";
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    query.setAttachment("query", queryString.getBytes());
    final ResultAccessor result = query.executeRequest(_search);
    assertNotNull(result);
    assertTrue(result.hasQuery());
    assertTrue(result.getResult().hasAttachment("query"));
    assertEquals(queryString, new String(result.getResult().getAttachment("query")));
  }

  /**
   * test search with XML results.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testXMLSearch() throws Exception {
    final String queryString = "test search with XML results";
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    query.setMaxCount(QueryConstants.DEFAULT_MAXCOUNT).setOffset(QueryConstants.DEFAULT_OFFSET)
      .setThreshold(QueryConstants.DEFAULT_THRESHOLD);
    final Document result = query.executeRequestXml(_search);
    assertNotNull(result);
    final Element elemResult = result.getDocumentElement();
    assertNotNull(elemResult);
    assertEquals(SearchService.TAG_SEARCHRESULT, elemResult.getLocalName());
    final NodeList resultChildren = elemResult.getChildNodes();
    assertEquals(2, resultChildren.getLength());
    final Node elemWorkflow = resultChildren.item(0);
    assertEquals(SearchService.TAG_WORKFLOWNAME, elemWorkflow.getLocalName());
    final Node elemRecords = resultChildren.item(1);
    assertEquals(XmlConstants.TAG_RECORD, elemRecords.getLocalName());
    final NodeList recordChildren = elemRecords.getChildNodes();
    assertTrue(recordChildren.getLength() > 0);
  }

  /**
   * test search with XML string results.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testXMLStringSearch() throws Exception {
    final String queryString = "test search with XML results";
    final QueryBuilder query = new QueryBuilder(getPipelineName()).setQuery(queryString);
    query.setMaxCount(QueryConstants.DEFAULT_MAXCOUNT).setOffset(QueryConstants.DEFAULT_OFFSET)
      .setThreshold(QueryConstants.DEFAULT_THRESHOLD);
    final String result = query.executeRequestXmlString(_search);
    assertNotNull(result);
  }

  /**
   * check attribute values, terms and facets.
   * 
   * @param result
   *          search result
   * @param queryString
   *          input query string
   * @param threshold
   *          threshold (used to compute totalHits
   */
  private void checkQuery(final Record result, final String queryString, final double threshold) {
    final int expectedCount = (int) ((1 - threshold) * 100);
    assertEquals(expectedCount, result.getMetadata().getLongValue(SearchResultConstants.COUNT).intValue());
    assertEquals(TestSearchPipelet.INDEX_SIZE, result.getMetadata().getLongValue(SearchResultConstants.INDEX_SIZE)
      .intValue());
    assertTrue(result.getMetadata().containsKey(SearchResultConstants.RUNTIME));
    assertTrue(result.getMetadata().containsKey(ATTRIBUTE_QUERY));
    assertEquals(queryString, result.getMetadata().getStringValue(ATTRIBUTE_QUERY));
  }

  /**
   * simple result check.
   * 
   * @param result
   *          search result
   * @param query
   *          query string
   * @param resultSize
   *          expected size
   * @param resultOffset
   *          expected offset
   * @param threshold
   *          expected threshold
   * @throws Exception
   *           check fails
   */
  private void checkResult(final ResultAccessor result, final String query, final int resultSize,
    final int resultOffset, final double threshold) throws Exception {
    final double expectedQualityDecrement = 0.01;
    assertEquals(resultSize, result.getNumberOfRecords());
    for (int i = 0; i < resultSize; i++) {
      final ResultItemAccessor record = result.getResultRecord(i);
      final int position = resultOffset + i;
      final String key = TestSearchPipelet.PREFIX + position;
      assertNotNull(record);
      final Double expectedWeight = Double.valueOf(1 - position * expectedQualityDecrement);
      assertEquals(i, record.getPosition());
      assertEquals(expectedWeight, record.getWeight());
      assertNotNull(record.getRecordId());
      assertTrue(record.getMetadata().containsKey(ATTRIBUTE_TITLE));
      assertEquals(key, record.getMetadata().getStringValue(ATTRIBUTE_TITLE));
    }
  }
}
