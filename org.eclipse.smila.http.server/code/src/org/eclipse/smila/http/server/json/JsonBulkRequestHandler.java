/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.json;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpStatus;
import org.eclipse.smila.http.server.util.ARequestHandler;
import org.eclipse.smila.http.server.util.UnsupportedMethodException;
import org.eclipse.smila.ipc.IpcException;

/**
 * JSON bulk request handler.
 * 
 */
public abstract class JsonBulkRequestHandler extends ARequestHandler {

  /** Logger. */
  private final Log _log = LogFactory.getLog(getClass());

  /** the saved request URI (to generate URIs of the response to match the host of the request). */
  private String _requestHost = "";

  /**
   * process input record and return result record.
   * 
   * @param method
   *          the HTTP method of this request.
   * @param requestUri
   *          the request URI
   * @param inputRecord
   *          input Record, may be null
   * @throws Exception
   *           any failure during processing.
   * */
  public abstract void process(final String method, final String requestUri, Record inputRecord) throws Exception;

  /**
   * Called after the complete input bulk has been processed successfully.
   * 
   * @param method
   *          the request method.
   * @param requestUri
   *          the request URI.
   * @throws Exception
   *           any failure during processing.
   */
  public abstract void finish(final String method, final String requestUri) throws Exception;

  /**
   * {@inheritDoc}
   */
  @Override
  public void handle(final HttpExchange exchange) {
    boolean closeConnection = false;
    final String method = exchange.getRequestMethod();
    final String requestUri = exchange.getRequestURI();
    final String headerHost = exchange.getRequestHeader("Host");
    if (headerHost != null) {
      _requestHost = headerHost;
    }
    try {
      try {
        if (!isValidMethod(method, requestUri)) {
          throw new UnsupportedMethodException("Unsupported http method '" + method + "'");
        }
        final String encoding = exchange.getCharacterEncoding();
        if (encoding != null && !"UTF-8".equalsIgnoreCase(encoding)) {
          throw new IpcException("Unsupported character encoding '" + encoding + "'. UTF-8 is required");
        }
        final InputStream postDataStream = exchange.getRequestStream();
        handlePostStream(method, requestUri, postDataStream);
      } catch (final Throwable error) {
        _log.error("Error processing " + method + " " + requestUri, error);
        closeConnection = writeErrorResult(exchange, error);
        return; // to skip writing of success result.
      }
      closeConnection = writeSuccessResult(exchange);
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
   * Processes a POST stream.
   * 
   * @param method
   *          the HTTP method
   * @param requestUri
   *          the request URI.
   * @param postDataStream
   *          the POST data stream.
   * @throws Exception
   *           could not handle the stream.
   */
  private void handlePostStream(final String method, final String requestUri, final InputStream postDataStream)
    throws Exception {
    final BufferedReader reader = new BufferedReader(new InputStreamReader(postDataStream, "UTF8"));
    String line;
    while ((line = reader.readLine()) != null) {
      final Record record = JsonHttpUtils.SERIALIZATION_UTILS.jsonObject2record(line);
      process(method, requestUri, record);
    }
    finish(method, requestUri);
  }

  /**
   * Checks if the given HTTP method is allowed for the request URI. Currently only POST is allowed.
   * 
   * @param method
   *          the HTTP method.
   * @param requestUri
   *          the Request URI.
   * @return 'true' if the method is allowed (POST), 'false' if not.
   */
  protected boolean isValidMethod(final String method, final String requestUri) {
    return "POST".equals(method);
  }

  /**
   * Writes a success status code.
   * 
   * @param exchange
   *          the HttpExchange
   * @return true, if the "Connection" request header equals "close"
   */
  protected boolean writeSuccessResult(final HttpExchange exchange) throws IOException {
    final int statusCode = getSuccessStatus(exchange.getRequestMethod(), exchange.getRequestURI());
    final boolean closeConnection = JsonHttpUtils.prepareResponseHeader(exchange, statusCode, false);
    return closeConnection;
  }

  /**
   * Gets the ACCEPTED (202) HTTP status code.
   * 
   * @param method
   *          ignored
   * @param requestUri
   *          ignored
   * @return the ACCEPTED (202) HTTP status code.
   */
  protected int getSuccessStatus(final String method, final String requestUri) {
    return HttpStatus.ACCEPTED;
  }

  /**
   * Writes the error result.
   * 
   * @param exchange
   *          the HttpExchange object.
   * @param error
   *          the error to be written
   * @return true, if the "Connection" request header equals "close"
   * @throws IOException
   *           could not write the error to the response stream.
   */
  protected boolean writeErrorResult(final HttpExchange exchange, final Throwable error) throws IOException {
    final int errorCode = getErrorStatus(exchange.getRequestMethod(), exchange.getRequestMethod(), error);
    final boolean writeErrorDetails = !"HEAD".equals(exchange.getRequestMethod());
    final boolean closeConnection = JsonHttpUtils.prepareResponseHeader(exchange, errorCode, writeErrorDetails);
    if (writeErrorDetails) {
      JsonHttpUtils.writeErrorDetails(exchange, error);
    }
    return closeConnection;
  }

  /**
   * Gets the HTTP error status code depending on the method, request URI and throwable.
   * 
   * @see JsonHttpUtils#getErrorStatus(Throwable)
   */
  protected int getErrorStatus(final String method, final String requestUri, final Throwable ex) {
    return JsonHttpUtils.getErrorStatus(ex);
  }

  /**
   * @return the host as stated in the request.
   */
  protected String getRequestHost() {
    return _requestHost;
  }

}
