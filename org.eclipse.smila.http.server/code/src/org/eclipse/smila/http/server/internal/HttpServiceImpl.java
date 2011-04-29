/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.jetty.xml.XmlConfiguration;
import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.HttpService;
import org.eclipse.smila.http.server.JettyHandler;
import org.eclipse.smila.utils.config.ConfigUtils;
import org.osgi.service.component.ComponentContext;

/**
 * Service implementation of a HttpServer.
 */
public class HttpServiceImpl implements HttpService {



  /** The name of the configuration file. */
  public static final String CONFIG_FILE = "jetty.xml";

  /** local logger. */
  private final Log _log = LogFactory.getLog(HttpServiceImpl.class);

  /** The configuration parsed from the jetty.xml file. */
  private XmlConfiguration _configuration;

  /** The HttpServer instance. */
  private HttpServer _server;

  /** A list of all registered HttpHandlers. */
  private final ArrayList<HttpHandler> _handlers = new ArrayList<HttpHandler>();

  /** A list of all registered JettyHandlers. */
  private final ArrayList<JettyHandler> _jettyHandlers = new ArrayList<JettyHandler>();

  /**
   * Add a HttpHandler..
   * 
   * @param handler
   *          the new HttpHandler
   */
  public void addHttpHandler(final HttpHandler handler) {
    _handlers.add(handler);
  }

  /**
   * Remove the given HttpHandler.
   * 
   * @param handler
   *          the HttpHandler
   */
  public void removeHttpHandler(final HttpHandler handler) {
    if (_handlers.contains(handler)) {
      _handlers.remove(handler);
    }
  }

  /**
   * Add a JettyHandler.
   * 
   * @param handler
   *          the new {@link JettyHandler}
   */
  public void addJettyHandler(final JettyHandler handler) {
    _jettyHandlers.add(handler);
  }

  /**
   * Remove the given JettyHandler.
   * 
   * @param handler
   *          the {@link JettyHandler}
   */
  public void removeJettyHandler(final JettyHandler handler) {
    if (_jettyHandlers.contains(handler)) {
      _jettyHandlers.remove(handler);
    }
  }

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   */
  protected void activate(final ComponentContext context) {
    final ClassLoader tccl = Thread.currentThread().getContextClassLoader();
    Thread.currentThread().setContextClassLoader(getClass().getClassLoader());
    try {
      readConfiguration();
      _server = new HttpServer(_configuration);
      addContexts();
      _server.start();
      System.out.println("HTTP server started successfully on port " + _server.getPort() + ".");
    } catch (final Exception ex) {
      final String msg = "Starting HTTP server failed: " + ex.toString() + ". See log for details.";
      System.out.println(msg);
      _log.error(msg, ex);
    } finally {
      Thread.currentThread().setContextClassLoader(tccl);
    }
  }

  /**
   * DS deactivate method.
   * 
   * @param context
   *          the ComponentContext
   */
  protected void deactivate(final ComponentContext context) {
    if (_server != null) {
      try {
        _server.stop();
        final String msg = "HTTP server stopped successfully.";
        System.out.println(msg);
      } catch (final Exception e) {
        final String msg = "Stopping HTTP server failed";
        _log.error(msg, e);
      }
    }
  }

  /**
   * Adds the HttpContexts from all registered HttpHandlers to the HttpServer.
   */
  private void addContexts() {
    for (final HttpHandler handler : _handlers) {
      _server.addHttpHandler(handler);
      final String message =
        "HTTP server has SMILA handler " + handler.getClass().getName() + " for context "
          + handler.getRootContextPath() + ".";
      System.out.println(message);
    } 

    for (final JettyHandler handler : _jettyHandlers) {
      _server.addJettyHandler(handler);
      final String message =
        "HTTP server has Jetty handler " + handler.getClass().getName() + " for context "
          + handler.getRootContextPath() + ".";
      System.out.println(message);
    }
  }

  /**
   * Reads properties from the configuration file.
   * 
   * @throws IOException
   *           on an error
   */
  private void readConfiguration() throws IOException {
    InputStream configFileStream = null;
    try {
      configFileStream = ConfigUtils.getConfigStream(BUNDLE_NAME, CONFIG_FILE);
      _configuration = new XmlConfiguration(configFileStream);
    } catch (final Exception ex) {
      throw new IOException("Reading properties from " + CONFIG_FILE + " failed: " + ex.toString());
    } finally {
      if (configFileStream != null) {
        IOUtils.closeQuietly(configFileStream);
      }
    }
  }

}
