/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.json;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.apache.commons.io.IOUtils;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;
import org.eclipse.smila.datamodel.json.JsonSerializationUtils;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpStatus;
import org.eclipse.smila.http.server.util.UnsupportedMethodException;
import org.eclipse.smila.ipc.IpcException;
import org.eclipse.smila.ipc.IpcStreamWriter;
import org.eclipse.smila.ipc.json.JsonFactory;
import org.eclipse.smila.utils.http.NotFoundHTTPResult;

/**
 * Utilities for processing data received via an HTTP interface.
 */
public final class JsonHttpUtils {

  /** factory for records. */
  public static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /** for record<->BON/JSON serialization. */
  public static final JsonSerializationUtils SERIALIZATION_UTILS = new JsonSerializationUtils();

  /**
   * Private Default Constructor to avoid instantiation.
   */
  private JsonHttpUtils() {
  }

  /**
   * Create an input record from a request by either parse JSON from the request body, or by converting URI parameters.
   * 
   * @param exchange
   *          the HttpExchange object
   * @return the created query record
   * @throws IpcException
   *           if any error occurs during conversion
   */
  public static Record convertRequest(final HttpExchange exchange) throws IpcException {
    Record inputRecord = null;
    if (JsonHttpUtils.hasRequestContent(exchange)) {
      final String encoding = exchange.getCharacterEncoding();
      if (encoding == null || "UTF-8".equalsIgnoreCase(encoding)) {
        inputRecord = JsonHttpUtils.convertPostRequest(exchange);
      } else {
        throw new IpcException("Unsupported character encoding '" + encoding + "'. UTF-8 is required");
      }
    } else {
      // try to create a record from URI parameters.
      inputRecord = JsonHttpUtils.convertGetRequest(exchange);
    }
    return inputRecord;
  }

  /**
   * Converts a HTTP GET request into a query record by setting all parameters as attributes and literal values.
   * 
   * @param he
   *          the HttpExchange object
   * @return the created query record
   * @throws IpcException
   *           if any error occurs during conversion
   */
  public static Record convertGetRequest(final HttpExchange he) throws IpcException {
    // check if any parameters exist
    final String httpQueryString = he.getQueryString();
    if (httpQueryString == null || httpQueryString.trim().length() == 0) {
      return null;
    }

    try {
      // create query record
      final Record record = FACTORY.createRecord();
      // iterate over all parameters and create attributes
      final Enumeration<String> paramNames = he.getParameterNames();
      while (paramNames.hasMoreElements()) {
        final String parameter = paramNames.nextElement();
        final String[] values = he.getParameterValues(parameter);

        // create attribute with parameter as name and set values as String literals
        if (values.length == 1) {
          record.getMetadata().put(parameter, parseValue(values[0]));
        } else {
          for (final String value : values) {
            record.getMetadata().add(parameter, parseValue(value));
          }
        }
      }
      return record;
    } catch (final Exception e) {
      throw new IpcException("Error parsing GET request", e);
    }
  }

  /**
   * Converts a HTTP POST request into a query record by converting the posted JSON stream into a record.
   * 
   * @param he
   *          the HttpExchange object
   * @return the created query record
   * @throws IpcException
   *           if any error occurs during conversion from JSON to Record
   */
  public static Record convertPostRequest(final HttpExchange he) throws IpcException {
    InputStream in = null;
    final String requestMethod = he.getRequestMethod();
    try {
      in = he.getRequestStream();
      return SERIALIZATION_UTILS.jsonStream2record(in);
    } catch (final Exception e) {
      throw new IpcException("Error parsing JSON object in " + requestMethod + " request", e);
    } finally {
      IOUtils.closeQuietly(in);
    }
  }

  /**
   * check if the request contains content in the body.
   * 
   * @param exchange
   *          HTTP exchange
   * @return true if there is content to parse.
   */
  public static boolean hasRequestContent(final HttpExchange exchange) {
    final String contentLength = exchange.getRequestHeader("Content-Length");
    if (contentLength != null) {
      final long length = Long.parseLong(contentLength);
      return length > 0;
    }
    final String transferEnc = exchange.getRequestHeader("Transfer-Encoding");
    if (transferEnc != null) {
      return "chunked".equalsIgnoreCase(transferEnc);
    }
    return false;
  }

  /**
   * create an Any value by trying to convert the given value into concrete data types (int, double, boolean). If all
   * conversion fail the value is interpreted as a String.
   * 
   * @param value
   *          the original parameter value as a String
   * @return value as Any value.
   */
  private static Value parseValue(final String value) {
    try {
      final long longValue = Long.parseLong(value);
      return FACTORY.createLongValue(longValue);
    } catch (final NumberFormatException e1) {
      try {
        final double doubleValue = Double.parseDouble(value);
        return FACTORY.createDoubleValue(doubleValue);
      } catch (final NumberFormatException e2) {
        if ("true".equalsIgnoreCase(value.trim())) {
          return FACTORY.createBooleanValue(true);
        } else if ("false".equalsIgnoreCase(value.trim())) {
          return FACTORY.createBooleanValue(false);
        } else {
          return FACTORY.createStringValue(value);
        }
      }
    }
  }

  /**
   * set basic HTTP response headers.
   * 
   * @param exchange
   *          HTTP exchange
   * @param statusCode
   *          HTTP response status code.
   * @param hasResponseBody
   *          true if the response will have data in body, else false.
   * @return if the connection should be closed after everything is finished.
   */
  public static boolean prepareResponseHeader(final HttpExchange exchange, final int statusCode,
    final boolean hasResponseBody) {
    boolean closeConnection = false;
    exchange.setResponseStatus(statusCode);
    final String connectionHeader = exchange.getRequestHeader("Connection");
    if (connectionHeader != null && connectionHeader.equals("close")) {
      closeConnection = true;
      exchange.setResponseHeader("Connection", "close");
    } else {
      exchange.setResponseHeader("Connection", "keep-alive");
      exchange.setResponseHeader("Keep-Alive", "timeout=0");
    }
    if (hasResponseBody) {
      exchange.setResponseHeader("Content-Type", "application/json; charset=utf-8");
      exchange.setResponseHeader("Transfer-Encoding", "chunked");
    } else {
      exchange.setResponseHeader("Content-Length", "0");
    }
    return closeConnection;
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
  public static void writeResultObject(final OutputStream responseStream, final Object resultObject)
    throws IOException {
    if (resultObject instanceof Record) {
      final Record resultRecord = (Record) resultObject;
      JsonHttpUtils.SERIALIZATION_UTILS.record2JsonStream(responseStream, resultRecord);
    } else if (resultObject instanceof Any) {
      final Any resultAny = (Any) resultObject;
      JsonHttpUtils.SERIALIZATION_UTILS.any2JsonStream(responseStream, resultAny);
    } else if (resultObject != null) {
      final ObjectMapper mapper = JsonHttpUtils.getObjectMapper();
      mapper.writeValue(responseStream, resultObject);
    }
  }

  /**
   * Return a status code for an exception. By default this is
   * <ul>
   * <li>"BAD_REQUEST" (400) for JsonExceptions (bad input format)
   * <li>"METHOD_NOT_ALLOWED" (405) for unsupported request methods
   * <li>"NOT_FOUND" (404) for NotFoundHTTPResult
   * <li>"INTERNAL_SERVER_ERROR" (500) for everything else).
   * </ul>
   * If a subclass overrides this method it should always call also this implementation for consistent handling of
   * non-special cases.
   * 
   * @param ex
   *          an exception
   * @return error status code.
   */
  public static int getErrorStatus(final Throwable ex) {
    if (ex instanceof UnsupportedMethodException) {
      return HttpStatus.METHOD_NOT_ALLOWED;
    }
    if (ex instanceof IpcException) {
      return HttpStatus.BAD_REQUEST;
    }
    if (ex instanceof NotFoundHTTPResult || ex.getCause() instanceof NotFoundHTTPResult) {
      return HttpStatus.NOT_FOUND;
    }
    if (ex instanceof HttpException) {
      return ((HttpException) ex).getStatus();
    }
    return HttpStatus.INTERNAL_SERVER_ERROR;
  }

  /**
   * write exception in JSON format to response stream.
   */
  public static void writeErrorDetails(final HttpExchange exchange, final Throwable error) throws IOException {
    final JsonFactory jsonFactory = new JsonFactory();
    final IpcStreamWriter jsonWriter = jsonFactory.newStreamWriter(exchange.getResponseStream());
    if (error instanceof IpcException) {
      ((IpcException) error).write(jsonWriter);
    } else if (error instanceof HttpException) {
      new IpcException(((HttpException) error).getReason(), error.getCause()).write(jsonWriter);
    } else {
      IpcException.write(jsonWriter, error);
    }
  }

  /**
   * Creates an {@link ObjectMapper} instance with disabled {@link JsonGenerator.Feature#AUTO_CLOSE_TARGET} and default
   * SMILA date/time format.
   * 
   * @return the new {@link ObjectMapper}
   */
  @SuppressWarnings("deprecation")
  public static ObjectMapper getObjectMapper() {
    final ObjectMapper objectMapper = new ObjectMapper();
    objectMapper.getJsonFactory().disable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
    objectMapper.configure(SerializationConfig.Feature.INDENT_OUTPUT, true);
    objectMapper.getSerializationConfig().setDateFormat(ValueFormatHelper.getDefaultDateTimeFormat());
    return objectMapper;
  }

}
