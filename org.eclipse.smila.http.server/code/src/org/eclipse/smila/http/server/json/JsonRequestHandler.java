/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.json;

import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpStatus;
import org.eclipse.smila.http.server.util.ARequestHandler;
import org.eclipse.smila.http.server.util.UnsupportedMethodException;

/**
 * Common base class for request handlers that expect a single JSON record as input. The result can be void or a single
 * object, this class assumes that a single object is a single record, but this can be overridden easily by a
 * subclass.
 * 
 * @author jschumacher
 * 
 */
public abstract class JsonRequestHandler extends ARequestHandler {

  /** Record/Any factory. Helper shortcut for subclasses. */
  protected static final DataFactory FACTORY = JsonHttpUtils.FACTORY;

  /** Logger. */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * Name of host to which a request was sent.
   * 
   * TODO: refactor this. It is not multi-threading safe.
   */
  private String _requestHost = "";

  /**
   * process input record and return result object.
   * 
   * @param method
   *          HTTP method
   * @param requestUri
   *          request URI.
   * @param inputRecord
   *          input record parsed either from request body, if it has content, or from request URI parameters.
   * @return result object, may be null. If this is not a {@link Record}, you have to provide a
   *         {@link #writeResultObject(OutputStream, Object)} method, too.
   * @throws Exception
   *           any failure during processing.
   */
  public abstract Object process(final String method, final String requestUri, Record inputRecord) throws Exception;

  /**
   * reads a record from the JSON request, calls {@link #process(Record)} to do processing and get a result record and
   * writes JSON result.
   * 
   * {@inheritDoc}
   * 
   * @see com.empolis.ias.net.httpserver.HttpHandler#handle(com.empolis.ias.net.httpserver.HttpExchange)
   */
  @Override
  public void handle(final HttpExchange exchange) {
    boolean closeConnection = false;
    Object resultObject = null;
    final String method = exchange.getRequestMethod();
    final String requestUri = exchange.getRequestURI();
    final String headerHost = exchange.getRequestHeader("Host");
    if (headerHost != null) {
      _requestHost = headerHost;
    }
    try {
      Record inputRecord = null;
      try {
        inputRecord = JsonHttpUtils.convertRequest(exchange);
        if (isValidMethod(method, requestUri)) {
          resultObject = process(method, requestUri, inputRecord);
        } else {
          throw new UnsupportedMethodException("Unsupported http method '" + method + "'");
        }
      } catch (final Throwable error) {
        _log.error("Error processing " + method + " " + requestUri, error);
        closeConnection = writeErrorResult(exchange, error, inputRecord);
        return; // to skip writing of success result.
      }
      closeConnection = writeSuccessResult(exchange, resultObject, inputRecord);
    } catch (final IOException ex) {
      _log.error("Error writing the response. Maybe client has closed the connection.", ex);
      closeConnection = true;
    } finally {
      try {
        if (closeConnection) {
          IOUtils.closeQuietly(exchange.getResponseStream());
        } else {
          exchange.getResponseStream().flush();
        }
      } catch (final Exception ex) {
        ; // if there is an exception it should have occurred before and be logged and everything.
      }
    }
  }

  /**
   * Checks if the handler allows the HTTP method.
   * 
   * @param method
   *          HTTP method
   * @param requestUri
   *          request URI
   * @return true if the method can be used for the URI, else false.
   */
  protected boolean isValidMethod(final String method, final String requestUri) {
    return "POST".equals(method);
  }

  /**
   * write a successful result.
   * 
   * @param exchange
   *          HTTP exchange
   * @param resultObject
   *          result object, may be null.
   * @param inputRecord
   *          input record parsed either from request body, if it has content, or from request URI parameters.
   * @return if the connection should be closed after everything is finished.
   * @throws IOException
   *           error writing the result.
   */
  protected boolean writeSuccessResult(final HttpExchange exchange, final Object resultObject,
    final Record inputRecord) throws IOException {
    final int statusCode =
      getSuccessStatus(exchange.getRequestMethod(), exchange.getRequestURI(), inputRecord, resultObject);
    final boolean closeConnection = JsonHttpUtils.prepareResponseHeader(exchange, statusCode, resultObject != null);
    writeResultObject(exchange.getResponseStream(), resultObject);
    return closeConnection;
  }

  /**
   * @param method
   *          HTTP method
   * @param requestUri
   *          request URI
   * @return the status code to return for successful requests using the method and request URI. By default it is "OK"
   *         (200).
   */
  protected int getSuccessStatus(final String method, final String requestUri) {
    return HttpStatus.OK;
  }

  /**
   * Returns the success code.
   * 
   * @param requestMethod
   *          HTTP method
   * @param requestUri
   *          request URI
   * @param inputRecord
   *          input record
   * @param resultObject
   *          result object returned from process
   * @return the status code to return for successful requests using the method and request URI.
   */
  protected int getSuccessStatus(final String requestMethod, final String requestUri, final Record inputRecord,
    final Object resultObject) {
    return getSuccessStatus(requestMethod, requestUri);
  }

  /**
   * write result object. The default implementation writes back single {@link Record} results. Subclasses that produce
   * different result types must override this method.
   * 
   * @param responseStream
   *          response stream
   * @param resultObject
   *          result object.
   * @throws IOException
   *           error writing result
   */
  protected void writeResultObject(final OutputStream responseStream, final Object resultObject) throws IOException {
    JsonHttpUtils.writeResultObject(responseStream, resultObject);
  }

  /**
   * write an error result.
   * 
   * @param exchange
   *          HTTP exchange
   * @param error
   *          the exception causing the error.
   * @param inputRecord
   *          the input record.
   * @return if the connection should be closed after everything is finished.
   * @throws IOException
   *           error writing the result.
   */
  protected boolean writeErrorResult(final HttpExchange exchange, final Throwable error, final Record inputRecord)
    throws IOException {
    final int errorCode = getErrorStatus(exchange.getRequestMethod(), exchange.getRequestMethod(), error);
    final boolean writeErrorDetails = !"HEAD".equals(exchange.getRequestMethod());
    final boolean closeConnection = JsonHttpUtils.prepareResponseHeader(exchange, errorCode, writeErrorDetails);
    if (writeErrorDetails) {
      JsonHttpUtils.writeErrorDetails(exchange, error);
    }
    return closeConnection;
  }

  /**
   * Return a status code for an exception.
   * 
   * @see JsonHttpUtils#getErrorStatus(String, String, Throwable)
   */
  protected int getErrorStatus(final String method, final String requestUri, final Throwable ex) {
    return JsonHttpUtils.getErrorStatus(ex);
  }

  /**
   * Returns the host as defined in the HTTP request.
   * 
   * @return the host from the request.
   */
  protected String getRequestHost() {
    return _requestHost;
  }

}
