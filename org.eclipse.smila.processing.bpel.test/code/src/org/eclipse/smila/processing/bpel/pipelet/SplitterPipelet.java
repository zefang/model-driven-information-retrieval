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
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * simple pipelet that splits the incoming IDs in 3 fragment Ids.
 * 
 * @author jschumacher
 * 
 */
public class SplitterPipelet implements Pipelet {

  /** Id string part to detect splitting has happened. */
  public static final String FRAGMENT_MARKER = "#fragment";

  /**
   * split each Id in how many fragment Ids?
   */
  public static final int SPLIT_FACTOR = 3;

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * {@inheritDoc}
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _log.info("SplitterPipelet.configure()" + configuration);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    final String[] result = new String[SPLIT_FACTOR * recordIds.length];
    for (int i = 0; i < recordIds.length; i++) {
      try {
        _log.info("Splitting record " + blackboard.getRecord(recordIds[i]));
      } catch (final BlackboardAccessException ex) {
        _log.error("error accessing " + recordIds[i] + " on blackboard.", ex);
      }
      for (int j = 0; j < SPLIT_FACTOR; j++) {
        try {
          result[SPLIT_FACTOR * i + j] =
            blackboard.copyRecord(recordIds[i], recordIds[i] + FRAGMENT_MARKER + j).getId();
        } catch (final BlackboardAccessException ex) {
          _log.error("error spliting a record", ex);
          result[i] = recordIds[i];
        }
      }
    }
    return result;
  }
}
