/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.lucene.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.lucene.LuceneIndexService;
import org.eclipse.smila.lucene.LuceneIndexService.ExecutionMode;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.eclipse.smila.utils.service.ServiceUtils;

/**
 * Pipelet for adding and deleting records from index.
 * 
 * @author cind01
 * 
 */
public class LuceneIndexPipelet implements Pipelet {

  /** name of indexing su parameters. */
  public static final String INDEXING_PARAMETERS = "_indexing";

  /** index name parameter. */
  public static final String INDEX_NAME = "indexname";

  /** execution mode. */
  public static final String EXECUTION_MODE = "executionMode";

  /** name of parameter configuring if doublets are allowed in index. */
  public static final String ALLOW_DOUBLETS = "allowDoublets";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(LuceneIndexPipelet.class);

  /**
   * Map of HighlightingTransformer.
   */
  private LuceneIndexService _service;

  /**
   * Pipelet configuration.
   */
  private AnyMap _configuration;

  /** {@inheritDoc} */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
  }

  /** {@inheritDoc} */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    try {
      final LuceneIndexService service = getLuceneIndexService();
      final ParameterAccessor parameters = new ParameterAccessor(blackboard, _configuration);
      for (final String recordId : recordIds) {
        try {
          parameters.setCurrentRecord(recordId);
          final AnyMap indexParams = parameters.getSubParameter(INDEXING_PARAMETERS);
          final String executionModeValue = indexParams.getStringValue(EXECUTION_MODE);
          final String indexName = indexParams.getStringValue(INDEX_NAME);
          final boolean allowDoublets = Boolean.valueOf(indexParams.getStringValue(ALLOW_DOUBLETS));
          if (executionModeValue == null) {
            throw new ProcessingException("Missing executionMode parameter for record " + recordId);
          }
          if (indexName == null) {
            throw new ProcessingException("Missing index parameter for record " + recordId);
          }
          final ExecutionMode executionMode = ExecutionMode.valueOf(executionModeValue);
          switch (executionMode) {
            case ADD:
              service.addRecord(blackboard, recordId, indexName, allowDoublets);
              break;
            case DELETE:
              service.deleteRecord(recordId, indexName);
              break;
            default:
              break;
          }
        } catch (final Exception ex) {
          if (_log.isErrorEnabled()) {
            _log.error("error processing record " + recordId, ex);
          }
        }
      }
    } catch (final InterruptedException ie) {
      if (_log.isErrorEnabled()) {
        _log.error("error getting lucene index service", ie);
      }
    }
    return recordIds;
  }

  /**
   * Returns the needed lucene index service.
   * 
   * @return the lucene index service
   * @throws InterruptedException
   *           interrupted while waiting for the service to start.
   */
  private synchronized LuceneIndexService getLuceneIndexService() throws InterruptedException {
    if (_service == null) {
      _service = ServiceUtils.getService(LuceneIndexService.class);
    }
    return _service;
  }
}
