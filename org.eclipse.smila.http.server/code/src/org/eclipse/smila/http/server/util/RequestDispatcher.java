/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.HttpStatus;
import org.osgi.service.component.ComponentContext;

/**
 * Implementation of a HattpHandler that dispatches incoming requests to RequestHandlers that registered themselves with
 * this RequestDispatcher.
 */
public class RequestDispatcher implements HttpHandler {

  /**
   * start of target string in request handler references.
   */
  private static final String TARGET_PREFIX = "(" + Constants.PROPERTY_ROOTCONTEXTPATH + "=";

  /**
   * A list of all registered RequestHandler.
   */
  private final ArrayList<RequestHandler> _requestHandlers = new ArrayList<RequestHandler>();

  /**
   * Logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * common root context path.
   */
  private String _rootContextPath;

  /**
   * Default constructor.
   */
  public RequestDispatcher() {
  }

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   */
  protected void activate(final ComponentContext context) {
    _rootContextPath = getRootContextPath(context);
  }

  /** {@inheritDoc} */
  @Override
  public String getRootContextPath() {
    return _rootContextPath;
  }

  /**
   * Add a RequestHandler..
   * 
   * @param handler
   *          the new RequestHandler
   */
  public synchronized void addRequestHandler(final RequestHandler handler) {
    _requestHandlers.add(handler);
    final String message =
      "RequestDispatcher has RequestHandler " + handler.getClass().getName() + " with uri pattern "
        + handler.getUriPattern() + " for root context " + handler.getRootContextPath() + ".";
    System.out.println(message);
  }

  /**
   * Remove the given RequestHandler.
   * 
   * @param handler
   *          the RequestHandler
   */
  public synchronized void removeRequestHandler(final RequestHandler handler) {
    if (_requestHandlers.contains(handler)) {
      _requestHandlers.remove(handler);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void handle(final HttpExchange he) throws IOException {
    final String requestUri = he.getRequestURI();
    final RequestHandler matchingHandler = findHandler(requestUri);
    if (matchingHandler == null) {
      throw new HttpException(HttpStatus.NOT_FOUND, "No RequestHandler registered at rootContext '"
        + _rootContextPath + "' to handle uri '" + requestUri + "'");
    } else {
      try {
        // Turn on Cross Origin Resource Sharing (see http://www.w3.org/TR/cors/)
        // to allow web applications from other servers/ports to communicate with us.
        // As we use no authentication methods (up to now), this is no security problem.
        he.setResponseHeader("Access-Control-Allow-Origin", "*");
        if ("OPTIONS".equals(he.getRequestMethod())) {
          // Handle CORS OPTIONS transparent for handler
          final String requestedMethod = he.getRequestHeader("Access-Control-Request-Method");
          if (requestedMethod != null) {
            // Allow all requested methods
            he.setResponseHeader("Access-Control-Allow-Methods", requestedMethod);

            // Set cache timeout to 20 days
            he.setResponseHeader("Access-Control-Max-Age", "1728000");

            // Allow all custom headers
            final String customHeaders = he.getRequestHeader("Access-Control-Request-Headers");
            if (customHeaders != null) {
              // JQuery is setting "x-requested-with" for example
              he.setResponseHeader("Access-Control-Allow-Headers", customHeaders);
            }
            he.setResponseStatus(HttpStatus.OK);
            he.getResponseStream().flush();
            return;
          }
        }

        matchingHandler.handle(he);
      } catch (final RuntimeException ex) {
        throw new HttpException(HttpStatus.INTERNAL_SERVER_ERROR, "Error executing request", ex);
      }
    }
  }

  /**
   * find handler matching the request URI.
   * 
   * @param requestUri
   *          request URI.
   * @return matching handler or null
   */
  private synchronized RequestHandler findHandler(final String requestUri) {
    for (final RequestHandler handler : _requestHandlers) {
      if (handler.matches(requestUri)) {
        return handler;
      }
    }
    return null;
  }

  /**
   * Extract the rootContextPath from the reference target. Pattern is "(rootContextPath=&lt;rootContextPath&gt;)".
   * 
   * @param context
   *          the ComponentContext
   * @return the rootContextPath
   */
  private String getRootContextPath(final ComponentContext context) {
    final String propTarget = "RequestHandlers.target";
    String rootContextPath = context.getProperties().get(propTarget).toString();
    rootContextPath = rootContextPath.substring(TARGET_PREFIX.length(), rootContextPath.length() - 1);
    return rootContextPath;
  }

}
