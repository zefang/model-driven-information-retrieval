/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

/**
 * Provides the functionality for processing a HTTP request and generating a related response. The members of this class
 * can be used when implementing the 'handle' method of the HttpHandler interface.
 */
public interface HttpExchange {

  /**
   * Return the host name of the HTTP server.
   * 
   * @return the host name of the HTTP server.
   */
  String getHost();

  /**
   * Return the port of the HTTP server.
   * 
   * @return the port of the HTTP server.
   */
  int getPort();

  /**
   * @return the HTTP protocol version string.
   */
  String getProtocol();

  /**
   * @return the name of the HTTP method, for example, GET, POST, or PUT.
   */
  String getRequestMethod();

  /**
   * @return the value of the specified request header.
   * @param name
   *          header name
   */
  String getRequestHeader(String name);

  /**
   * @return the integer value of the specified request header.
   * @param name
   *          header name
   */
  int getRequestIntHeader(String name);

  /**
   * @return names of request headers.
   */
  Enumeration<String> getRequestHeaders();

  /**
   * @return the part of the request's URL from the protocol name up to the query string in the first line of the HTTP
   *         request.
   * 
   *         Example: POST /aaa/bbb?x=y HTTP/1.1 => /aaa/bbb
   */
  String getRequestURI();

  /**
   * @return complete request path including query parameters and fragments.
   */
  String getCompletePath();

  /**
   * Return the character encoding used in the request or null if none was set.
   * 
   * @return the character encoding or null
   */
  String getCharacterEncoding();

  /**
   * @return the query string contained in the request URL after the path.
   */
  String getQueryString();

  /**
   * @param name
   *          parameter name
   * @return the value of the specified parameter from the query string.
   */
  String getQueryParameter(String name);

  /**
   * @return a stream for reading the request's body as binary data.
   * @throws IOException
   *           IO error
   */
  InputStream getRequestStream() throws IOException;

  /**
   * Returns the a Enumeration of the parameter names.
   * 
   * @return a Enumeration of the parameter names
   */
  Enumeration<String> getParameterNames();

  /**
   * Returns the values of a parameter name.
   * 
   * @param name
   *          the name of the parameter
   * @return the values of the parameter
   */
  String[] getParameterValues(String name);

  // TODO Divide (maybe) the members into HttpExchange.Request and HttpExchange.Response.

  /**
   * Sets the response's status code.
   * 
   * @param sc
   *          new status code
   */
  void setResponseStatus(int sc);

  /**
   * Sets a response header with the given name and value.
   * 
   * @param name
   *          header name
   * @param value
   *          header value
   */
  void setResponseHeader(String name, String value);

  /**
   * Sets a response header with the given name and integer value.
   * 
   * @param name
   *          header name
   * @param value
   *          int header value
   */
  void setResponseIntHeader(String name, int value);

  /**
   * Returns a stream for writing binary data in the response.
   * 
   * Calling flush() on the stream commits the response.
   * 
   * @return a stream for writing binary data in the response.
   * @throws IOException
   *           IO error
   */
  OutputStream getResponseStream() throws IOException;
}
