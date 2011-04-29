/*******************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.processing.bpel.pipelet;

import java.util.Map.Entry;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * Pipelet implementation for test. Just logs the given configuration and record IDs.
 * 
 * @author jschumacher
 * 
 */
public class SimpleTestPipelet implements Pipelet {
  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * configuration parsed from BPEL. All content is copied to the request objects.
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
    _log.info("SimpleTestPipelet.configure():" + configuration);
    _configuration = configuration;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet#process(org.eclipse.smila.blackboard.Blackboard,
   *      org.eclipse.smila.datamodel.id.Id[])
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    _log.info("SimpleTestPipelet.process():");
    for (final String id : recordIds) {
      try {
        _log.info("  id = " + id);
        _log.info("  record = " + blackboard.getRecord(id));
        if (_configuration != null) {
          for (final Entry<String, Any> entry : _configuration.entrySet()) {
            blackboard.getMetadata(id).put(entry.getKey(), blackboard.getDataFactory().cloneAny(entry.getValue()));
          }
        }
      } catch (final BlackboardAccessException ex) {
        _log.error("error accessing " + id + " on blackboard.", ex);
      }
    }
    return recordIds;
  }
}
