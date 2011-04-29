/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.search.highlighting;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.search.datadictionary.messages.ddconfig.DHighlightingTransformer;
import org.eclipse.smila.utils.service.ServiceUtils;

/**
 * HighlightingService using HighlightingTransformer services.
 */
public class HighlightingPipelet implements Pipelet {

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(HighlightingPipelet.class);

  /**
   * Map of HighlightingTransformer.
   */
  private HighlightingService _service;

  /**
   * Pipelet Configuration.
   */
  private AnyMap _configuration;

  /** {@inheritDoc} */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] message) throws ProcessingException {
    if (message.length > 0) {
      try {
        final AnySeq records = blackboard.getMetadata(message[0]).getSeq(SearchResultConstants.RECORDS);
        if (records != null && !records.isEmpty()) {
          final HighlightingService service = getHighlightingService();
          final QueryParameterAccessor parameters =
            new QueryParameterAccessor(blackboard, _configuration, message[0]);
          // get any highlighting configurations from the query
          final Map<String, DHighlightingTransformer> highlightConfigs = service.getTransformerConfigs(parameters);

          // check if any highlighting configurations exist
          if (!highlightConfigs.isEmpty()) {
            // do highlighting for each result record
            for (final Any resultRecord : records) {
              if (resultRecord.isMap()) {
                service.highlight((AnyMap) resultRecord, highlightConfigs);
              }
            }
          }
        }
      } catch (final Exception ex) {
        if (_log.isErrorEnabled()) {
          _log.error("error processing message " + message[0], ex);
        }
      }
    }
    return message;
  }

  /**
   * @return the highlighting service
   * @throws InterruptedException
   *           interrupted while waiting for the service to start.
   */
  private synchronized HighlightingService getHighlightingService() throws InterruptedException {
    if (_service == null) {
      _service = ServiceUtils.getService(HighlightingService.class);
    }
    return _service;
  }
}
