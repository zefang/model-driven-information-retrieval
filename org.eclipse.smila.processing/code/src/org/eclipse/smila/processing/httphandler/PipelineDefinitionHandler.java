/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.processing.httphandler;

import java.util.List;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.http.server.json.JsonRequestHandler;
import org.eclipse.smila.processing.WorkflowProcessor;
import org.eclipse.smila.utils.http.NotFoundHTTPResult;

/**
 * Implements the handling of HTTP requests for reading workflow definitions.
 * 
 * @author drazen
 * 
 */
public class PipelineDefinitionHandler extends JsonRequestHandler {

  /** name used for result. */
  public static final String WORKFLOW_NAME = "name";

  /** definition used for result. */
  public static final String WORKFLOW_DEFINITION = "definition";

  /** Exception message if no definition has been found. */
  public static final String EXCEPTION_MESSAGE = "There is no definition for given pipeline";

  /**
   * associated workflow processor.
   */
  private WorkflowProcessor _processor;

  /**
   * {@inheritDoc}
   */
  @Override
  public Object process(final String method, final String requestUri, final Record inputRecord) throws Exception {
    final String workflowName = getWorkflowName(requestUri);
    final Any definitionAny = _processor.getWorkflowDefinition(workflowName);
    if (definitionAny != null) {
      final AnyMap resultMap = FACTORY.createAnyMap();
      resultMap.put(WORKFLOW_NAME, workflowName);
      resultMap.put(WORKFLOW_DEFINITION, definitionAny);
      return resultMap;
    } else {
      throw new DefinitionNotFoundException(EXCEPTION_MESSAGE + " -" + workflowName + "-.");
    }
  }

  /**
   * set workflow processor reference.
   * 
   * @param processor
   *          workflow processor
   */
  public void setProcessor(final WorkflowProcessor processor) {
    _processor = processor;
  }

  /**
   * remove workflow processor reference.
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
   * {@inheritDoc}
   * 
   * PipelineHandler supports GET and POST.
   */
  @Override
  protected boolean isValidMethod(final String method, final String requestUri) {
    return "GET".equals(method);
  }

  /**
   * get pipeline name from URI.
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
   * special exception to denote that for given workflo name no definition has been found.
   * 
   * @author drazen
   * 
   */
  private static class DefinitionNotFoundException extends Exception implements NotFoundHTTPResult {
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
    public DefinitionNotFoundException(final String message) {
      super(message);
    }
  }
}
