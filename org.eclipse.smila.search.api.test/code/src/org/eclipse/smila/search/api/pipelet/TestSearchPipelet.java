/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.search.api.pipelet;

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
 * Pipelet simulating a search process.
 * 
 * @author jschumacher
 * 
 */
public class TestSearchPipelet implements Pipelet {
  /**
   * size of simulated index.
   */
  public static final int INDEX_SIZE = 1234;

  /**
   * attribute to set in query to query string and attach terms to.
   */
  public static final String QUERY = "query";

  /**
   * attribute to set in results to $PREFIX + index (0 <= index < resultSize).
   */
  public static final String TITLE = "title";
  
  /**
   * attribute to set in results to $PREFIX + index (0 <= index < resultSize).
   */
  public static final String CONTENT = "content";

  /**
   * prefix for fragment name and attribute value.
   */
  public static final String PREFIX = "Result #";

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
   * 
   * @see org.eclipse.smila.processing.Pipelet
   *      #configure(org.eclipse.smila.processing.configuration.PipeletConfiguration)
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
  }

  /**
   * simulate an index retrieval. [{@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet#process(org.eclipse.smila.blackboard.Blackboard,
   *      org.eclipse.smila.datamodel.id.Id[])
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] message) throws ProcessingException {
    if (message != null && message.length > 0) {
      final String requestId = message[0];
      final QueryParameterAccessor parameters = new QueryParameterAccessor(blackboard, requestId);
      parameters.setPipeletConfiguration(_configuration);
      final String query = parameters.getQuery();
      final int resultSize = parameters.getMaxCount();
      final int resultOffset = parameters.getOffset();
      final double threshold = parameters.getThreshold();
      final double qualityDecrement = 0.01;
      try {
        final Record request = blackboard.getRecord(requestId);
        final DataFactory dataFactory = blackboard.getDataFactory();
        final AnySeq records = dataFactory.createAnySeq();
        for (int i = 0; i < resultSize; i++) {
          final AnyMap hit = dataFactory.createAnyMap();
          final int position = resultOffset + i;
          final String title = PREFIX + position;
          final double relevance = 1 - position * qualityDecrement;
          if (relevance >= threshold) {
            hit.put(Record.RECORD_ID, dataFactory.createStringValue(requestId + "-" + title));
            hit.put(TITLE, dataFactory.createStringValue(title));
            hit.put(CONTENT, dataFactory.createStringValue(title + ": " + query));
            hit.put(SearchResultConstants.WEIGHT, dataFactory.createDoubleValue(relevance));
            records.add(hit);
          }
        }
        final int totalHits = (int) ((1 - threshold) * 100);
        request.getMetadata().put(SearchResultConstants.COUNT, dataFactory.createLongValue(totalHits));
        request.getMetadata().put(SearchResultConstants.INDEX_SIZE, dataFactory.createLongValue(INDEX_SIZE));
        request.getMetadata().put(SearchResultConstants.RECORDS, records);
      } catch (final BlackboardAccessException ex) {
        _log.error(ex);
      }
    }
    return message;
  }
}
