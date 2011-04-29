/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.search.servlet;

import java.util.Random;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;

/**
 * Pipelet implementation for test. Just logs the given configuration and record IDs.
 * 
 * @author jschumacher
 * 
 */
public class MockSearchPipelet implements Pipelet {
  /**
   * maximal number of hits.
   */
  public static final int MAX_TOTAL_HITS = 123;

  /**
   * maximal number of hits.
   */
  public static final int MAX_INDEX_SIZE = 12345;

  /**
   * attribute to set in results to $PREFIX + index (0 <= index < resultSize).
   */
  public static final String TITLE = "title";

  /**
   * prefix for fragment name and attribute value.
   */
  public static final String PREFIX = "Result #";

  /**
   * blind text prefix.
   */
  public static final String PREFIX_BLIND = "... Lorem ipsum dolor sit amet, ";

  /**
   * blind text suffix.
   */
  public static final String SUFFIX_BLIND = ", consectetuer adipiscing elit ... ";

  /**
   * highlight prefix test.
   */
  public static final String PREFIX_HIGHLIGHT = "<b>";

  /**
   * highlight suffix test.
   */
  public static final String SUFFIX_HIGHLIGHT = "</b>";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * pipelet config.
   */
  private AnyMap _configuration;

  /**
   * {@inheritDoc}
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
  }

  /**
   * simulate an index retrieval. {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] message) throws ProcessingException {
    if (message.length > 0) {
      final QueryParameterAccessor parameters = new QueryParameterAccessor(blackboard, message[0]);
      parameters.setPipeletConfiguration(_configuration);
      final String query = parameters.getQuery();
      final int maxCount = parameters.getMaxCount();
      final int offset = parameters.getOffset();
      final double threshold = parameters.getThreshold();
      try {
        final AnyMap request = blackboard.getMetadata(message[0]);
        final DataFactory f = request.getFactory();
        if (query == null || query.trim().length() == 0) {
          request.put(SearchResultConstants.RECORDS, f.createAnySeq());
          request.put(SearchResultConstants.COUNT, f.createLongValue(0));
        } else {
          final AnySeq records = f.createAnySeq();
          for (int i = 0; i < maxCount; i++) {
            final int position = offset + i;
            final String value = PREFIX + position;
            final double relevance = 1 - position / (double) MAX_TOTAL_HITS;
            if (relevance >= threshold) {
              final AnyMap record = f.createAnyMap();
              record.put(Record.RECORD_ID, f.createStringValue("file:file_" + i + ".html"));
              record.put(Record.SOURCE, f.createStringValue("file"));
              record.put(TITLE, f.createStringValue(value));
              record.put(SearchResultConstants.WEIGHT, f.createDoubleValue(relevance));
              setRecordHighlighting(f, record, PREFIX_BLIND + PREFIX_HIGHLIGHT + query + SUFFIX_HIGHLIGHT + " #"
                + position + SUFFIX_BLIND, relevance);
              records.add(record);
            }
          }
          final int totalHits = (int) ((1 - threshold) * MAX_TOTAL_HITS);
          request.put(SearchResultConstants.RECORDS, records);
          request.put(SearchResultConstants.COUNT, f.createLongValue(totalHits));
          request.put(SearchResultConstants.INDEX_SIZE, f.createLongValue(MAX_INDEX_SIZE));
          setGroups(f, request, query, totalHits);
        }
      } catch (final BlackboardAccessException ex) {
        _log.error(ex);
      }
    }
    return message;
  }

  /**
   * create a mockup facets annotation on query record.
   * 
   * @param f
   *          data factory.
   * @param result
   *          result
   * @param text
   *          text to use for mocking
   * @param totalHits
   *          total number of this, use as a base for creating facet counts.
   * @throws BlackboardAccessException
   *           error creating annotation
   */
  private void setGroups(final DataFactory f, final AnyMap result, final String text, int totalHits)
    throws BlackboardAccessException {
    if (text != null) {
      final Random rnd = new Random(System.nanoTime());
      final String[] tokens = text.split(" ");
      final AnySeq groups = f.createAnySeq();
      for (int i = 0; i < tokens.length; i++) {
        final AnyMap group = f.createAnyMap();
        group.put(SearchResultConstants.VALUE, f.createStringValue(tokens[i]));
        final int facetCount = i < tokens.length - 1 ? rnd.nextInt(totalHits) : totalHits;
        group.put(SearchResultConstants.COUNT, f.createLongValue(facetCount));
        totalHits -= facetCount;
        groups.add(group);
      }

    }
  }

  /**
   * create a mockup result highlight annotation.
   * 
   * @param f
   *          data factory
   * @param record
   *          result record id
   * @param text
   *          text to use for mocking
   * @param quality
   *          value to use for quality of highlight terms
   */
  private void setRecordHighlighting(final DataFactory f, final AnyMap record, final String text,
    final double quality) {
    if (text != null) {
      final AnyMap highlight = f.createAnyMap();
      highlight.put("text", f.createStringValue(text));
      record.put(SearchResultConstants.HIGHLIGHT, highlight);
    }
  }

}
