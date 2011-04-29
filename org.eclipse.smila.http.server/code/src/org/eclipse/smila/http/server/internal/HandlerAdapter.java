/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.internal;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.server.HttpConnection;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server.Graceful;
import org.eclipse.jetty.server.handler.AbstractHandler;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpHandler;

/**
 * The handler calling the 'handle' method of HttpHandler interface implementation.
 */
class HandlerAdapter extends AbstractHandler implements Graceful {

  /**
   * my handler.
   */
  private final HttpHandler _handler;

  /**
   * create handler adapter for the given HttpHandler.
   * 
   * @param handler
   *          IAS HttpHandler
   */
  public HandlerAdapter(final HttpHandler handler) {
    _handler = handler;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AbstractHandler#handle(String, Request, HttpServletRequest, HttpServletResponse)
   */
  @Override
  public void handle(final String target, final Request baseRequest, final HttpServletRequest servletRequest,
    final HttpServletResponse response) throws IOException, ServletException {
    final EndPoint endPoint = HttpConnection.getCurrentConnection().getEndPoint();
    final HttpExchange exchange =
      new HttpExchangeImpl(baseRequest, response, endPoint.getLocalHost(), endPoint.getLocalPort());
    _handler.handle(exchange);
    // commit response to prevent other handlers appending stuff.
    baseRequest.setHandled(true);
    response.flushBuffer();
  }

  /**
   * {@inheritDoc}
   * 
   * @see Graceful#setShutdown(boolean)
   */
  @Override
  public void setShutdown(final boolean arg0) {
    ; // nothing to do
  }
}
