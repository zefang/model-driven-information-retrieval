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
package org.eclipse.smila.search.api.internal;

import java.util.UUID;

import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.WorkflowProcessor;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.SearchService;
import org.eclipse.smila.utils.xml.XmlHelper;
import org.osgi.service.component.ComponentContext;
import org.w3c.dom.Document;

/**
 * SearchService implementation to be used as a Declarative Service. The connection to a WorkflowProcessor is also setup
 * using a DS service reference.
 * 
 * @author jschumacher
 * 
 */
public class SearchServiceImpl implements SearchService {

  /**
   * factor to convert nanoseconds to milliseconds.
   */
  private static final long NANO_TO_MILLIS = (long) 1e6;

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * associated workflow processor.
   */
  private WorkflowProcessor _processor;

  /**
   * blackboard factory.
   */
  private BlackboardFactory _blackboardFactory;

  /**
   * for XML search.
   */
  private final ResultDocumentBuilder _resultBuilder = new ResultDocumentBuilder();

  /**
   * create instance.
   */
  public SearchServiceImpl() {
    super();
    _log.debug("instance created.");
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Record search(final String workflowName, final Record query) throws ProcessingException {
    try {
      final long starttime = System.nanoTime();
      ensureQueryId(workflowName, query);
      final Blackboard blackboard = _blackboardFactory.createTransientBlackboard();
      blackboard.setRecord(query);
      final String[] resultIds = _processor.process(workflowName, blackboard, new String[] { query.getId() });

      Record result = null;
      if (resultIds != null && resultIds.length > 0) {
        final long endtime = System.nanoTime();
        setRuntime(blackboard, resultIds[0], (endtime - starttime));
        result = blackboard.getRecord(resultIds[0]);
      }
      blackboard.invalidate();
      return result;
    } catch (final BlackboardAccessException ex) {
      throw new ProcessingException("Blackboard error: ", ex);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.search.api.SearchService#xmlSearch(java.lang.String,
   *      org.eclipse.smila.datamodel.record.Record)
   */
  @Override
  public Document searchAsXml(final String workflowName, final Record query) throws ParserConfigurationException {
    Document resultDoc = null;
    try {
      final Record result = search(workflowName, query);
      resultDoc = _resultBuilder.buildResult(workflowName, result);
    } catch (final ProcessingException ex) {
      resultDoc = _resultBuilder.buildError(ex);
    }
    if (_log.isDebugEnabled()) {
      _log.debug("XML result:");
      _log.debug(XmlHelper.toString(resultDoc));
    }
    return resultDoc;

  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.search.api.SearchService#searchAsXmlString(java.lang.String,
   *      org.eclipse.smila.datamodel.record.Record)
   */
  @Override
  public String searchAsXmlString(final String workflowName, final Record query)
    throws ParserConfigurationException {
    final Document result = searchAsXml(workflowName, query);
    return XmlHelper.toString(result);
  }

  /**
   * ensure that the query object has a Id set. If none is provided by the client create one using the pipeline name as
   * source and a random {@link UUID} as key.
   * 
   * @param workflowName
   *          pipeline name
   * @param query
   *          query record.
   */
  private void ensureQueryId(final String workflowName, final Record query) {
    if (query.getId() == null) {
      UUID uuid = null;
      synchronized (this) {
        uuid = UUID.randomUUID();
      }
      query.setId(workflowName + "-" + uuid.toString());
    }
  }

  /**
   * {@inheritDoc}
   */
  protected void activate(final ComponentContext context) {
    _log.debug("activating");
    _log.info("active!");
  }

  /**
   * OSGi Declarative Services service deactivation method.
   * 
   * @param context
   *          OSGi service component context.
   */
  protected void deactivate(final ComponentContext context) {
    _log.debug("deactivating");
    _log.info("inactive!");
  }

  /**
   * set workflow processor reference (used by DS).
   * 
   * @param processor
   *          workflow processor
   */
  public void setProcessor(final WorkflowProcessor processor) {
    _log.debug("setting processor reference.");
    _processor = processor;
  }

  /**
   * remove workflow processor reference (used by DS).
   * 
   * @param processor
   *          workflow processor
   */
  public void unsetProcessor(final WorkflowProcessor processor) {
    if (_processor == processor) {
      _log.debug("unsetting processor reference.");
      _processor = null;
    }
  }

  /**
   * set blackboard factory reference (used by DS).
   * 
   * @param factory
   *          blackboard factory
   */
  public void setBlackboardFactory(final BlackboardFactory factory) {
    _log.debug("setting blackboard factory.");
    _blackboardFactory = factory;
  }

  /**
   * remove blackboard factory reference (used by DS).
   * 
   * @param factory
   *          blackboard factory
   */
  public void unsetBlackboardFactory(final BlackboardFactory factory) {
    if (_blackboardFactory == factory) {
      _log.debug("unsetting blackboard factory.");
      _blackboardFactory = null;
    }
  }

  /**
   * set runtime value in result annotation.
   * 
   * @param blackboard
   *          blackboard
   * @param record
   *          query record id
   * @param runtime
   *          runtime value in nanoseconds.
   * @throws BlackboardAccessException
   *           error accessing blackboard.
   */
  private void setRuntime(final Blackboard blackboard, final String record, final long runtime)
    throws BlackboardAccessException {
    final long msRuntime = runtime / NANO_TO_MILLIS;
    blackboard.getMetadata(record).put(SearchResultConstants.RUNTIME,
      blackboard.getDataFactory().createLongValue(msRuntime));
  }

}
