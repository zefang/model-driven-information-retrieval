/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.test;

import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.HttpStatus;

public class MockHttpHandler implements HttpHandler {

  public static final String HELLO_WORLD = "Hello, World from HttpHandler!";

  @Override
  public String getRootContextPath() {
    return "/httphandler";
  }

  @Override
  public void handle(final HttpExchange exchange) throws IOException {
    OutputStream os = null;
    try {
      os = exchange.getResponseStream();
      exchange.setResponseStatus(HttpStatus.OK);
      exchange.setResponseHeader("Connection", "close");
      exchange.setResponseHeader("Content-Type", "text/plain");
      os.write(HELLO_WORLD.getBytes());
    } finally {
      IOUtils.closeQuietly(os);
    }
  }

}
