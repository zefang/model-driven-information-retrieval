/*******************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.processing.bpel.pipelet;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * Pipelet implementation for test. Just logs the given configuration and record IDs.
 * 
 * @author jschumacher
 * 
 */
public class SearchTestPipelet implements Pipelet {
  /** marker in result Ids to detect generated IDs. */
  public static final String FRAGMENT_MARKER = "#result";

  /**
   * produce how many query results.
   */
  public static final int RESULT_SIZE = 3;

  /**
   * attribute to set in results to $PREFIX + index (0 <= index < RESULT_SIZE).
   */
  public static final String ATTRIBUTE = "title";

  /**
   * prefix for fragment name and attribute value.
   */
  public static final String PREFIX = "Result #";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet
   *      #configure(org.eclipse.smila.processing.configuration.PipeletConfiguration)
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _log.info("SearchTestPipelet.configure(): " + configuration);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    _log.info("SearchTestPipelet.process():");
    if (recordIds.length > 0) {
      final String requestId = recordIds[0];
      final String[] resultIds = new String[RESULT_SIZE];
      for (int i = 0; i < RESULT_SIZE; i++) {
        final String value = PREFIX + i;
        try {
          final Record result = blackboard.copyRecord(requestId, requestId + FRAGMENT_MARKER + value);
          final Value literal = blackboard.getDataFactory().createStringValue(value);
          result.getMetadata().put(ATTRIBUTE, literal);
          resultIds[i] = result.getId();
        } catch (final BlackboardAccessException ex) {
          _log.error(ex);
        }
      }
      return resultIds;
    }
    return recordIds;
  }
}
