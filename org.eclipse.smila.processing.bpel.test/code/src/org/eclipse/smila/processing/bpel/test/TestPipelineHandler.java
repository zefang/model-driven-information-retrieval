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
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.json.JsonSerializationUtils;
import org.eclipse.smila.http.server.util.RequestHandler;
import org.eclipse.smila.processing.httphandler.PipelineHandler;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Implements pipeline handler tests to see if different pipelines are called correctly.
 * 
 * @author drazen
 * 
 */
public class TestPipelineHandler extends DeclarativeServiceTestCase {

  /**
   * url for testing.
   */
  private static final String END_POINT = "http://localhost:8080/smila/pipeline/";

  /**
   * JSON serializer.
   */
  private JsonSerializationUtils _jsonSerializer = new JsonSerializationUtils();

  /**
   * Test if service was successfully started and registered.
   * 
   * @throws Exception
   *           no service found.
   */
  public void testService() throws Exception {
    final RequestHandler service =
      getService(RequestHandler.class, "(uriPattern=/pipeline/\\([^/]+\\)/process/?$)");
    assertNotNull(service);
    assertTrue(service instanceof PipelineHandler);
  }

  /**
   * Tests if SimplePipeline is called correctly and delivers correct result with POST.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testPostWithSimplePipeline() throws Exception {

    final String uri = END_POINT + TestSimplePipeline.PIPELINE_NAME + "/process";
    final HttpClient httpclient = new HttpClient();
    final PostMethod postMethod = new PostMethod(uri);
    final String recordString = "{\"testSource\":\"testKey\"}";
    postMethod.setRequestEntity(new StringRequestEntity(recordString, "application/json", null));
    try {
      httpclient.executeMethod(postMethod);
      final int statusCode = postMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(postMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertEquals("value1", resultMap.getStringValue("single-config-value"));
          assertEquals("value-a", resultMap.getSeq("multi-config-value").getStringValue(0));
          assertEquals("value-b", resultMap.getSeq("multi-config-value").getStringValue(1));
          assertEquals("sub-value", resultMap.getMap("sub-config").getStringValue("sub-config-value"));
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      postMethod.releaseConnection();
    }
  }

  /**
   * Tests if SimplePipeline is called correctly and delivers correct result with GET.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testGetWithSimplePipeline() throws Exception {

    final String uri = END_POINT + TestSimplePipeline.PIPELINE_NAME + "/process?testSource=testKey";
    final HttpClient httpclient = new HttpClient();
    final GetMethod getMethod = new GetMethod(uri);
    try {
      httpclient.executeMethod(getMethod);
      final int statusCode = getMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(getMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertEquals("value1", resultMap.getStringValue("single-config-value"));
          assertEquals("value-a", resultMap.getSeq("multi-config-value").getStringValue(0));
          assertEquals("value-b", resultMap.getSeq("multi-config-value").getStringValue(1));
          assertEquals("sub-value", resultMap.getMap("sub-config").getStringValue("sub-config-value"));
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      getMethod.releaseConnection();
    }
  }

  /**
   * Tests if HelloWorldPipeline is called correctly and delivers correct result with POST.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testPostWithHelloWorldPipeline() throws Exception {
    final String uri = END_POINT + TestHelloWorldPipeline.PIPELINE_NAME + "/process";
    final HttpClient httpclient = new HttpClient();
    final PostMethod postMethod = new PostMethod(uri);
    final String recordString = "{\"workflow-attribute\":\"SMILA\"}";
    postMethod.setRequestEntity(new StringRequestEntity(recordString, "application/json", null));
    try {
      httpclient.executeMethod(postMethod);
      final int statusCode = postMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(postMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertEquals("Hello SMILA", resultMap.getStringValue("workflow-attribute"));
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      postMethod.releaseConnection();
    }
  }

  /**
   * Tests if HelloWorldPipeline is called correctly and delivers correct result with GET.
   * 
   * @throws Exception
   *           an exception if something went wrong
   */
  public void testGetWithHelloWorldPipeline() throws Exception {

    final String uri = END_POINT + TestHelloWorldPipeline.PIPELINE_NAME + "/process?workflow-attribute=SMILA";
    final HttpClient httpclient = new HttpClient();
    final GetMethod getMethod = new GetMethod(uri);
    try {
      httpclient.executeMethod(getMethod);
      final int statusCode = getMethod.getStatusCode();
      if (statusCode == HttpStatus.SC_OK) {
        final Any any = _jsonSerializer.jsonStream2any(getMethod.getResponseBodyAsStream());
        if (any != null && any.isMap()) {
          final AnyMap resultMap = (AnyMap) any;
          assertEquals("Hello SMILA", resultMap.getStringValue("workflow-attribute"));
        } else {
          fail("response must be an any map.");
        }
      }
    } finally {
      getMethod.releaseConnection();
    }
  }
}
