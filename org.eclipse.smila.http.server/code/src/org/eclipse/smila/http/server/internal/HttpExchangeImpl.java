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
package org.eclipse.smila.http.server.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.server.Request;
import org.eclipse.smila.http.server.HttpExchange;

/**
 * The HttpExchange class implementation.
 */
public class HttpExchangeImpl implements HttpExchange {

  /**
   * HTTP request to serve.
   */
  private final Request _req;

  /**
   * HTTP response for the request.
   */
  private final HttpServletResponse _resp;

  /**
   * Host name of the HTTP server.
   */
  private final String _host;

  /**
   * Port of the HTTP server.
   */
  private final int _port;

  /**
   * create exchange object for a request-response-pair.
   * 
   * @param req
   *          request
   * @param resp
   *          response.
   * @param host
   *          the host name of the HTTP server
   * @param port
   *          the port of the HTTP server
   */
  public HttpExchangeImpl(final Request req, final HttpServletResponse resp, final String host, final int port) {
    _req = req;
    _resp = resp;
    _host = host;
    _port = port;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getHost() {
    return _host;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public int getPort() {
    return _port;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getProtocol() {
    return _req.getProtocol();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getRequestMethod() {
    return _req.getMethod();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getRequestHeader(final String name) {
    return _req.getHeader(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public int getRequestIntHeader(final String name) {
    return _req.getIntHeader(name);
  }

  /**
   * {@inheritDoc}
   */
  @SuppressWarnings("unchecked")
  @Override
  public Enumeration<String> getRequestHeaders() {
    return _req.getHeaderNames();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getRequestURI() {
    return _req.getRequestURI();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getCompletePath() {
    return _req.getUri().getCompletePath();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getCharacterEncoding() {
    return _req.getCharacterEncoding();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getQueryString() {
    return _req.getQueryString();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getQueryParameter(final String name) {
    return _req.getParameter(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public InputStream getRequestStream() throws IOException {
    return _req.getInputStream();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setResponseStatus(final int sc) {
    _resp.setStatus(sc);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setResponseHeader(final String name, final String value) {
    _resp.setHeader(name, value);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setResponseIntHeader(final String name, final int value) {
    _resp.setIntHeader(name, value);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public OutputStream getResponseStream() throws IOException {
    return _resp.getOutputStream();
  }

  /**
   * {@inheritDoc}
   */
  @SuppressWarnings("unchecked")
  @Override
  public Enumeration<String> getParameterNames() {
    return _req.getParameterNames();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] getParameterValues(final String name) {
    return _req.getParameterValues(name);
  }
}
