/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Georg Schmidt (brox IT-Solutions GmbH) - initial API and implementation (based on aperture test by DS)
 **********************************************************************************************************************/
package org.eclipse.smila.search.highlighting.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.PipeletTracker;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.highlighting.HighlightingPipelet;
import org.eclipse.smila.search.highlighting.HighlightingService;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * The Class TestConnectivity.
 */
// TODO: the test cases could be improved by checking the effects of the parameters results.
public class TestHighlightingPipelet extends DeclarativeServiceTestCase {

  /**
   * The default score.
   */
  public static final int SCORE = 250;

  /**
   * Constant for the markup overhead length. The bold start and end tags, 7 characters.
   */
  public static final int MARKUP_LENGTH = 7;

  /**
   * Constant for the preceding character overhead length. 3 characters.
   */
  public static final int PRECEDING_CHARS_LENGTH = 3;

  /** the BlackboardService. */
  private Blackboard _blackboard;

  /** the HighlightingService. */
  private HighlightingPipelet _highlightingPipelet;

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
    _highlightingPipelet = new HighlightingPipelet();
    assertNotNull(_highlightingPipelet);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
    _blackboard = null;
    _highlightingPipelet = null;
  }

  /**
   * Test if HighlightingPipelet is found by PipeletTracker.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testPipeletRegistered() throws Exception {
    final PipeletTracker tracker = getService(PipeletTracker.class);
    final Class<?> pipeletClass = tracker.getRegisteredPipelets().get(HighlightingPipelet.class.getName());
    assertNotNull(pipeletClass);
    assertSame(HighlightingPipelet.class, pipeletClass);
  }

  /**
   * Test the HighlightingService with the Sentence HighlighingTransformer.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testSentence() throws Exception {
    // prepare query
    final String highlightingTransformer = "Sentence";
    final String queryId = "queryId";
    final String highlightAttribute = "Content";
    final HashMap<String, String> properties = new HashMap<String, String>();
    properties.put("MaxSucceedingCharacters", "30");
    properties.put("TextHandling", "ReturnSnipplet");
    properties.put("MarkupSuffix", "</b>");
    properties.put("SortAlgorithm", "Occurrence");
    properties.put("MarkupPrefix", "<b>");
    properties.put("MaxHLElements", "999");
    properties.put("MaxLength", "300");
    properties.put("SucceedingCharacters", "...");
    final Record query = createQuery(queryId, highlightingTransformer, highlightAttribute, properties);

    // prepare result
    final String resultId = "resultId";
    final String originalText =
      "This is a simple test document. It contains no special format just some test data.";
    final ArrayList<HighlightInfo> highlightInfos = new ArrayList<HighlightInfo>();
    final int startFirst = 17;
    final int endFirst = 21;
    final int startSecond = 72;
    final int endSecond = 76;
    highlightInfos.add(new HighlightInfo(startFirst, endFirst, SCORE));
    highlightInfos.add(new HighlightInfo(startSecond, endSecond, SCORE));
    final Record result = createResult(resultId, highlightAttribute, originalText, highlightInfos);

    // execute highlighting
    final String highlightedText = executeHighlightingService(query, result, highlightAttribute);
    assertNotSame(originalText, highlightedText);

    // check if test is highlighted
    final int firstPos = highlightedText.indexOf("<b>");
    assertEquals(startFirst, firstPos);
    final int secondPos = highlightedText.indexOf("<b>", firstPos + 1);
    assertEquals(startSecond + MARKUP_LENGTH, secondPos);
  }

  /**
   * Test the HighlightingService with the MaxTextLength HighlighingTransformer.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testMaxTextLength() throws Exception {
    final int maxLength = 70;
    // prepare query
    final String highlightingTransformer = "MaxTextLength";
    final String queryId = "queryId";
    final String highlightAttribute = "Content";
    final HashMap<String, String> properties = new HashMap<String, String>();
    properties.put("MarkupSuffix", "</b>");
    properties.put("MarkupPrefix", "<b>");
    properties.put("MaxLength", Integer.toString(maxLength));
    final Record query = createQuery(queryId, highlightingTransformer, highlightAttribute, properties);

    // prepare result
    final String resultId = "resultId";
    final String originalText =
      "This is a simple test document. It contains no special format just some test data.";
    final ArrayList<HighlightInfo> highlightInfos = new ArrayList<HighlightInfo>();
    final int startFirst = 17;
    final int endFirst = 21;
    final int startSecond = 72;
    final int endSecond = 76;
    highlightInfos.add(new HighlightInfo(startFirst, endFirst, SCORE));
    highlightInfos.add(new HighlightInfo(startSecond, endSecond, SCORE));
    final Record result = createResult(resultId, highlightAttribute, originalText, highlightInfos);

    // execute highlighting
    final String highlightedText = executeHighlightingService(query, result, highlightAttribute);
    assertNotSame(originalText, highlightedText);
    assertEquals(maxLength + MARKUP_LENGTH, highlightedText.length());

    // check if test is highlighted
    final int firstPos = highlightedText.indexOf("<b>");
    assertEquals(startFirst, firstPos);
    // no second pos because of maxLength
    final int secondPos = highlightedText.indexOf("<b>", firstPos + 1);
    assertEquals(-1, secondPos);
  }

  /**
   * Test the HighlightingService with the ComplexHLResultAggregation HighlighingTransformer.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testComplexHLResultAggregation() throws Exception {
    // prepare query
    final String highlightingTransformer = "ComplexHLResultAggregation";
    final String queryId = "queryId";
    final String highlightAttribute = "Content";
    final HashMap<String, String> properties = new HashMap<String, String>();
    properties.put("MaxSucceedingCharacters", "30");
    properties.put("TextHandling", "ReturnSnipplet");
    properties.put("MarkupSuffix", "</b>");
    properties.put("SortAlgorithm", "Occurrence");
    properties.put("MarkupPrefix", "<b>");
    properties.put("MaxHLElements", "999");
    properties.put("MaxLength", "300");
    properties.put("SucceedingCharacters", "...");
    properties.put("MaxPrecedingCharacters", "30");
    properties.put("PrecedingCharacters", "...");
    properties.put("HLElementFilter", "true");
    properties.put("SortAlgorithm", "Score");
    properties.put("TextHandling", "ReturnFullText");
    final Record query = createQuery(queryId, highlightingTransformer, highlightAttribute, properties);

    // prepare result
    final String resultId = "resultId";
    final String originalText =
      "This is a simple test document. It contains no special format just some test data.";
    final ArrayList<HighlightInfo> highlightInfos = new ArrayList<HighlightInfo>();
    final int startFirst = 17;
    final int endFirst = 21;
    final int startSecond = 72;
    final int endSecond = 76;
    highlightInfos.add(new HighlightInfo(startFirst, endFirst, SCORE));
    highlightInfos.add(new HighlightInfo(startSecond, endSecond, SCORE));
    final Record result = createResult(resultId, highlightAttribute, originalText, highlightInfos);

    // execute highlighting
    final String highlightedText = executeHighlightingService(query, result, highlightAttribute);
    assertNotSame(originalText, highlightedText);

    // check if test is highlighted
    final int firstPos = highlightedText.indexOf("<b>");
    assertEquals(startFirst + PRECEDING_CHARS_LENGTH, firstPos);
    final int secondPos = highlightedText.indexOf("<b>", firstPos + 1);
    assertTrue(secondPos <= -1);
  }

  /**
   * Execute the executeHighlightingService.
   * 
   * @param query
   *          the query Record
   * @param result
   *          the Result Record
   * @param highlightAttribute
   *          the name of the attribute to highlight
   * @return the highlighted text
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws ProcessingException
   *           if any error occurs
   */
  private String executeHighlightingService(final Record query, final Record result, final String highlightAttribute)
    throws BlackboardAccessException, ProcessingException {
    final AnySeq records = query.getFactory().createAnySeq();
    records.add(result.getMetadata());
    query.getMetadata().put(SearchResultConstants.RECORDS, records);
    _blackboard.setRecord(query);

    final String[] searchResult = _highlightingPipelet.process(_blackboard, new String[] { query.getId() });
    assertNotNull(searchResult);
    assertEquals(1, searchResult.length);
    System.out.println("Result: " + _blackboard.getRecord(searchResult[0]));
    final AnySeq resultRecords = _blackboard.getMetadata(searchResult[0]).getSeq(SearchResultConstants.RECORDS);
    assertEquals(1, resultRecords.size());

    final AnyMap resultRecord = resultRecords.getMap(0);
    assertNotNull(resultRecord);
    assertTrue(resultRecord.containsKey(SearchResultConstants.HIGHLIGHT));
    final AnyMap highlights = resultRecord.getMap(SearchResultConstants.HIGHLIGHT);
    assertNotNull(highlights);
    assertTrue(highlights.containsKey(highlightAttribute));
    final AnyMap highlight = highlights.getMap(highlightAttribute);
    final String highlightedText = highlight.getStringValue(SearchResultConstants.HIGHLIGHT_TEXT);
    assertNotNull(highlightedText);
    assertFalse(highlight.containsKey(SearchResultConstants.HIGHLIGHT_POSITIONS));
    return highlightedText;
  }

  /**
   * Creates a query record.
   * 
   * @param idValue
   *          the id
   * @param transformerName
   *          the name of the highlihtingTransformer
   * @param highlightAttribute
   *          the name of the attribute to highlight
   * @param properties
   *          highlihtingTransformer parameters
   * @return a Record
   */
  private Record createQuery(final String idValue, final String transformerName, final String highlightAttribute,
    final Map<String, String> properties) {
    final Record record = _blackboard.getDataFactory().createRecord("testDataSource:" + idValue, "testDataSource");

    final AnySeq highlightAttributes = record.getFactory().createAnySeq();
    highlightAttributes.add(highlightAttribute);
    record.getMetadata().put(QueryConstants.HIGHLIGHT, highlightAttributes);

    final AnyMap highlightingTransformers = record.getFactory().createAnyMap();
    record.getMetadata().put(HighlightingService.HIGHLIGHTING_TRANSFORMERS, highlightingTransformers);
    final AnyMap transformerConfig = record.getFactory().createAnyMap();
    highlightingTransformers.put(highlightAttribute, transformerConfig);
    transformerConfig.put(HighlightingService.HIGHLIGHTING_PARAMETER_NAME, transformerName);
    final Iterator<String> it = properties.keySet().iterator();
    while (it.hasNext()) {
      final String name = it.next();
      transformerConfig.put(name, properties.get(name));
    }

    return record;
  }

  /**
   * Creates a result record.
   * 
   * @param idValue
   *          the id
   * @param highlightAttribute
   *          the name of the attribute to highlight
   * @param text
   *          the original text
   * @param highlightInfos
   *          highlight positions
   * @return a Record
   */
  private Record createResult(final String idValue, final String highlightAttribute, final String text,
    final List<HighlightInfo> highlightInfos) {
    final Record record = _blackboard.getDataFactory().createRecord("testDataSource:" + idValue, "testDataSource");

    final AnyMap highlights = record.getFactory().createAnyMap();
    record.getMetadata().put(SearchResultConstants.HIGHLIGHT, highlights);
    final AnyMap attributeHighlight = record.getFactory().createAnyMap();
    highlights.put(highlightAttribute, attributeHighlight);
    attributeHighlight.put(SearchResultConstants.HIGHLIGHT_TEXT, text);

    final AnySeq positions = record.getFactory().createAnySeq();
    attributeHighlight.put(SearchResultConstants.HIGHLIGHT_POSITIONS, positions);
    for (final HighlightInfo highlightInfo : highlightInfos) {
      final AnyMap position = record.getFactory().createAnyMap();
      position.put(SearchResultConstants.POS_START, (long) highlightInfo._start);
      position.put(SearchResultConstants.POS_END, (long) highlightInfo._end);
      position.put(SearchResultConstants.POS_QUALITY, (long) highlightInfo._score);
      positions.add(position);
    }

    return record;
  }

  /**
   * Helper class to model highlight positions.
   */
  private class HighlightInfo {

    /**
     * The start position.
     */
    private final int _start;

    /**
     * The end position.
     */
    private final int _end;

    /**
     * The score.
     */
    private final int _score;

    /**
     * Constructor.
     * 
     * @param start
     *          the start position
     * @param end
     *          the end position
     * @param score
     *          the score
     */
    protected HighlightInfo(final int start, final int end, final int score) {
      _start = start;
      _end = end;
      _score = score;
    }

  }
}
