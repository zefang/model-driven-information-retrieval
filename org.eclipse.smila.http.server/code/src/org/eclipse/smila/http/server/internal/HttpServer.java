/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.internal;

import java.util.Vector;

import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.ContextHandlerCollection;
import org.eclipse.jetty.server.handler.HandlerList;
import org.eclipse.jetty.util.component.AbstractLifeCycle;
import org.eclipse.jetty.xml.XmlConfiguration;
import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.JettyHandler;

/**
 * Implements a HTTP server.
 * 
 * (1) Create an instance of HttpServer.
 * 
 * (2) Create an instance of HttpHandler. HttpHandler.handle will be invoked to process a request associated with the
 * request URL path. The members of HttpExchange may be called to process the request and to generate the related
 * response within HttpHandler.handle.
 * 
 * (3) Create an instance of HttpContext to associate HttpHandler with a request URL path and pass it to HttpServer
 * using HttpServer.addContext.
 * 
 * (4) Repeat the steps (2) and (3), if more URL path/handler pairs are necessary.
 * 
 * (5) Use HttpServer.start to start the server.
 * 
 * (6) Use HttpServer.stop to stop the server.
 */
public class HttpServer extends AbstractLifeCycle {

  /**
   * The server.
   */
  private final Server _server;

  /**
   * List of registered ContextHandlers.
   */
  private final Vector<ContextHandler> _handlers = new Vector<ContextHandler>();

  /**
   * create server from configuration.
   * 
   * @param configuration
   *          jetty.xml configuration
   * @throws Exception
   *           error creating server
   */
  public HttpServer(final XmlConfiguration configuration) throws Exception {
    _server = (Server) configuration.configure();
  }

  /**
   * @return port of first connector, if any exist in server. Else -1
   */
  protected int getPort() {
    final Connector[] conn = _server.getConnectors();
    if (conn.length > 0) {
      return conn[0].getPort();
    }
    return -1;
  }

  /**
   * add a SMILA http handler to this server.
   * 
   * @param smilaHandler
   *          a SMILA http handler to install.
   */
  public void addHttpHandler(final HttpHandler smilaHandler) {
    addHandler(new HandlerAdapter(smilaHandler), smilaHandler.getRootContextPath());
  }

  /**
   * add a context with a jetty-handler to this server.
   * 
   * @param jettyHandler
   *          a {@link JettyHandler} to install
   */
  public void addJettyHandler(final JettyHandler jettyHandler) {
    addHandler(jettyHandler.getHandler(), jettyHandler.getRootContextPath());
  }

  /**
   * wait for server to shutdown.
   * 
   * @throws InterruptedException
   *           waiting was interrupted.
   */
  public void join() throws InterruptedException {
    _server.join();
  }

  /**
   * @param handler
   *          handler to add
   * @param rootContextPath
   *          URI path to add handler for
   */
  private void addHandler(final Handler handler, final String rootContextPath) {
    if (handler instanceof ContextHandler) {
      _handlers.add((ContextHandler) handler);
    } else {
      final ContextHandler ctxHandler = new ContextHandler();
      ctxHandler.setHandler(handler);
      ctxHandler.setContextPath(rootContextPath);
      _handlers.add(ctxHandler);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see AbstractLifeCycle#doStart()
   */
  @Override
  protected void doStart() {
    try {
      setHandlersOnServer();
      _server.start();
    } catch (final Exception e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * add handlers registered by services. If a handler has already been created in the configuration, create a
   * HandlerList and add the registered handler services first.
   */
  private void setHandlersOnServer() {
    if (_handlers.size() > 0) {
      final ContextHandlerCollection contexts = new ContextHandlerCollection();
      contexts.setHandlers(_handlers.toArray(new Handler[_handlers.size()]));
      final Handler currentHandler = _server.getHandler();
      if (currentHandler != null) {
        final HandlerList handlerList = new HandlerList();
        handlerList.setHandlers(new Handler[] { contexts, currentHandler });
        _server.setHandler(handlerList);
      } else {
        _server.setHandler(contexts);
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see AbstractLifeCycle#doStop()
   */
  @Override
  protected void doStop() {
    try {
      _server.stop();
    } catch (final Exception e) {
      throw new RuntimeException(e);
    }
  }
}
