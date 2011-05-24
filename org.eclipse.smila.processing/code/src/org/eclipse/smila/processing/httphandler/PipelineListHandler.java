/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.processing.httphandler;

import java.util.List;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.http.server.json.JsonRequestHandler;
import org.eclipse.smila.http.server.util.URLCreator;
import org.eclipse.smila.processing.WorkflowProcessor;

/**
 * Implements the handling of HTTP requests for reading workflow definitions.
 * 
 * @author drazen
 * 
 */
public class PipelineListHandler extends JsonRequestHandler {

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
    final AnyMap result = FACTORY.createAnyMap();
    final AnySeq pipelines = FACTORY.createAnySeq();
    final List<String> names = _processor.getWorkflowNames();
    for (final String name : names) {
      final AnyMap pipeline = FACTORY.createAnyMap();
      pipeline.put("name", name);
      pipeline.put("url", URLCreator.create(getRequestHost(), requestUri, name).toString());
      pipelines.add(pipeline);
    }
    result.put("pipelines", pipelines);
    return result;
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
   * PipelineListHandler supports GET.
   */
  @Override
  protected boolean isValidMethod(final String method, final String requestUri) {
    return "GET".equals(method);
  }
}
