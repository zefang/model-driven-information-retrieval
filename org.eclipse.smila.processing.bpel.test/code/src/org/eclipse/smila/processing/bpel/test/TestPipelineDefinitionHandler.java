/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.processing.bpel.test;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.GetMethod;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.json.JsonSerializationUtils;
import org.eclipse.smila.http.server.util.RequestHandler;
import org.eclipse.smila.processing.httphandler.PipelineDefinitionHandler;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Implements pipeline definition handler tests to see if workflow definitions are returned correctly.
 * 
 * @author drazen
 * 
 */
public class TestPipelineDefinitionHandler extends DeclarativeServiceTestCase {

  /**
   * url for testing.
   */
  private static final String END_POINT = "http://localhost:8080/smila/pipeline/";

  /**
   * JSON serializer.
   */
  private final JsonSerializationUtils _jsonSerializer = new JsonSerializationUtils();

  /**
   * Test if service was successfully started and registered.
   * 
   * @throws Exception
   *           no service found.
   */
  public void testService() throws Exception {
    final RequestHandler service = getService(RequestHandler.class, "(uriPattern=/pipeline/\\([^/]+\\)/?$)");
    assertNotNull(service);
    assertTrue(service instanceof PipelineDefinitionHandler);
  }

  /** test list of pipelines received from handler. */
  public void testPipelineList() throws Exception {
    final String uri = END_POINT;
    final HttpClient httpclient = new HttpClient();
    final GetMethod getMethod = new GetMethod(uri);
    try {
      httpclient.executeMethod(getMethod);
      final int statusCode = getMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(getMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertTrue(resultMap.containsKey("pipelines"));
          final AnySeq pipelines = resultMap.getSeq("pipelines");
          assertEquals(9, pipelines.size());
          for (final Any pipeline : pipelines) {
            assertTrue(pipeline.isMap());
            final AnyMap pipelineMap = (AnyMap) pipeline;
            final String name = pipelineMap.getStringValue("name");
            assertNotNull(name);
            final String url = pipelineMap.getStringValue("url");
            assertNotNull(url);
            assertTrue(url.startsWith(END_POINT));
            assertTrue(url.endsWith(name + "/"));
          }
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      getMethod.releaseConnection();
    }

  }

  /**
   * Tests if definition of HelloWorldPipeline will be returned correctly.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testGetWithHelloWorldPipeline() throws Exception {

    final String uri = END_POINT + TestHelloWorldPipeline.PIPELINE_NAME;
    final HttpClient httpclient = new HttpClient();
    final GetMethod getMethod = new GetMethod(uri);
    try {
      httpclient.executeMethod(getMethod);
      final int statusCode = getMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(getMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertEquals(TestHelloWorldPipeline.PIPELINE_NAME, resultMap.get("name").toString());
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      getMethod.releaseConnection();
    }
  }

  /**
   * Tests if expected status code and message will be returned for not existing pipeline name.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testNotExistingPipelineName() throws Exception {
    final String uri = END_POINT + "NotExistingPipe";
    final HttpClient httpclient = new HttpClient();
    final GetMethod getMethod = new GetMethod(uri);
    try {
      httpclient.executeMethod(getMethod);
      final int statusCode = getMethod.getStatusCode();
      assertEquals(404, statusCode);
      final Any any = _jsonSerializer.jsonStream2any(getMethod.getResponseBodyAsStream());
      if (any.isMap()) {
        assertTrue(((AnyMap) any).getStringValue("message").startsWith(PipelineDefinitionHandler.EXCEPTION_MESSAGE));
      } else {
        fail("response must be an any map.");
      }
    } finally {
      getMethod.releaseConnection();
    }
  }
}
