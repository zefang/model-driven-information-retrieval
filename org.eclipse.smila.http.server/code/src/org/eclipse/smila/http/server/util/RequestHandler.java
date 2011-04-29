/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import org.eclipse.smila.http.server.HttpHandler;

/**
 * Interface RequestHandler for handlers of HTTP requests to URI that share a common root context (e.g. /SMILA). These
 * are not handled by Jetty directly but by a RequestDispatcher where RequestHandlers can be registered.
 * 
 * @author jschumacher
 */
public interface RequestHandler extends HttpHandler {

  /**
   * Return the URI pattern below the root context path that this RequestHandler serves.
   * 
   * @return the URI pattern (a regular expression)
   */
  String getUriPattern();

  /**
   * Checks if the URI pattern matches the given requestUri. If true the RequestHandler can handle requests to this URI.
   * 
   * @param requestUri
   *          a requestUri
   * @return true if the URI pattern matches, false otherwise
   */
  boolean matches(final String requestUri);

}
