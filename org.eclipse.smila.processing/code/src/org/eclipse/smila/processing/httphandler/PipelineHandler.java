/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.processing.httphandler;

import java.util.List;
import java.util.UUID;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.http.server.HttpStatus;
import org.eclipse.smila.http.server.json.JsonRequestHandler;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.WorkflowProcessor;

/**
 * Implements the handling of HTTP requests for WorkflowProcessor.
 * 
 * @author drazen
 * 
 */
public class PipelineHandler extends JsonRequestHandler {

  /**
   * associated workflow processor.
   */
  private WorkflowProcessor _processor;

  /**
   * blackboard factory.
   */
  private BlackboardFactory _blackboardFactory;

  /**
   * {@inheritDoc}
   */
  @Override
  public Object process(final String method, final String requestUri, final Record inputRecord) throws Exception {
    try {
      if (inputRecord == null || inputRecord.getMetadata().isEmpty()) {
        throw new EmptyQueryException("Cannot process an empty record.");
      }
      final String pipelineName = getWorkflowName(requestUri);
      ensureQueryId(pipelineName, inputRecord);
      final Blackboard blackboard = _blackboardFactory.createTransientBlackboard();
      blackboard.setRecord(inputRecord);
      final String[] resultIds = _processor.process(pipelineName, blackboard, new String[] { inputRecord.getId() });

      Record result = null;
      if (resultIds != null && resultIds.length > 0) {
        result = blackboard.getRecord(resultIds[0]);
      }
      blackboard.invalidate();
      return result;
    } catch (final BlackboardAccessException ex) {
      throw new ProcessingException("Blackboard error: ", ex);
    }
  }

  /**
   * set workflow processor reference (used by DS).
   * 
   * @param processor
   *          workflow processor
   */
  public void setProcessor(final WorkflowProcessor processor) {
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
      _blackboardFactory = null;
    }
  }

  /**
   * {@inheritDoc}
   * 
   * PipelineHandler supports GET and POST.
   */
  @Override
  protected boolean isValidMethod(final String method, final String requestUri) {
    return "GET".equals(method) || "POST".equals(method);
  }

  /**
   * {@inheritDoc}
   * 
   * empty queries return BAD_REQUEST, not INTERNAL_SERVER_ERROR.
   */
  @Override
  protected int getErrorStatus(final String method, final String requestUri, final Throwable ex) {
    if (ex instanceof EmptyQueryException) {
      return HttpStatus.BAD_REQUEST;
    }
    return super.getErrorStatus(method, requestUri, ex);
  }

  /**
   * get workflow name from URI.
   * 
   * @param requestUri
   *          request uri
   * @return index name
   */
  private String getWorkflowName(final String requestUri) {
    final List<String> uriParts = getDynamicUriParts(requestUri);
    if (uriParts.size() > 0) {
      return uriParts.get(0);
    }
    throw new IllegalArgumentException("Invalid request URI, does not match uri pattern " + getUriPattern());
  }

  /**
   * ensure that the query object has a Id set. If none is provided by the client create one using the pipeline name as
   * source and a random {@link UUID} as key.
   * 
   * @param pipelineName
   *          pipeline name
   * @param query
   *          query record.
   */
  private void ensureQueryId(final String pipelineName, final Record query) {
    if (query.getId() == null) {
      UUID uuid = null;
      synchronized (this) {
        uuid = UUID.randomUUID();
      }
      query.setId(pipelineName + "-" + uuid.toString());
    }
  }

  /**
   * special exception to denote empty queries ( -> BAD_REQUEST, not SERVER_ERROR).
   * 
   * @author jschumacher
   * 
   */
  private static class EmptyQueryException extends ProcessingException {
    /**
     * ... is serializable
     */
    private static final long serialVersionUID = 1L;

    /**
     * create exception.
     * 
     * @param message
     *          description.
     */
    public EmptyQueryException(final String message) {
      super(message);
    }
  }
}
