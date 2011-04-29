/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.lucene.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.lucene.LuceneSearchService;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.utils.service.ServiceUtils;

/**
 * LuceneSearchPipelet using LuceneSearch services.
 */
public class LuceneSearchPipelet implements Pipelet {

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(LuceneSearchPipelet.class);

  /**
   * Reference to the LuceneSearchService.
   */
  private LuceneSearchService _service;

  /**
   * Pipelet configuration.
   */
  private AnyMap _configuration;

  /**
   * {@inheritDoc}
   * 
   * Note: Configuration is ignored for LuceneSearchPipelet.
   */
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
      final String requestId = message[0];
      final QueryParameterAccessor parameters = new QueryParameterAccessor(blackboard, _configuration, requestId);
      try {
        final LuceneSearchService service = getLuceneSearchService();
        service.search(blackboard, requestId, parameters);
      } catch (final Exception ex) {
        throw new ProcessingException("Error processing message " + requestId, ex);
      }
    }
    return message;
  }

  /**
   * @return the lucene search service
   * @throws InterruptedException
   *           interrupted while waiting for the service to start.
   */
  private synchronized LuceneSearchService getLuceneSearchService() throws InterruptedException {
    if (_service == null) {
      _service = ServiceUtils.getService(LuceneSearchService.class);
    }
    return _service;
  }
}
