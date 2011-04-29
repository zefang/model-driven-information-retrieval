/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server;

import java.io.IOException;

/**
 * A handler invoked to process a request.
 */
public interface HttpHandler {

  /**
   * @return the URI path this handler is invoked for.
   */
  String getRootContextPath();

  /**
   * Handles a HttpExchange containing a HttpRequest.
   * 
   * @param exchange
   *          the HttpExchange object
   * @throws IOException
   *           handling the request (e.g. a {@link org.eclipse.jetty.http.HttpException})
   */
  void handle(final HttpExchange exchange) throws IOException;

}
