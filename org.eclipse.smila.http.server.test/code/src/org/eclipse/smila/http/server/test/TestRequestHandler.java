/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.test;

import java.io.FileNotFoundException;
import java.net.URL;

import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.util.RequestDispatcher;
import org.eclipse.smila.http.server.util.RequestHandler;
import org.eclipse.smila.http.server.util.ResourceHandlerService;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test function of {@link ResourceHandlerService}
 * 
 * @author jschumacher
 * 
 */
public class TestRequestHandler extends DeclarativeServiceTestCase {

  public void testHandlerService() throws Exception {
    assertServiceRegistered(HttpHandler.class, RequestDispatcher.class);
    assertServiceRegistered(RequestHandler.class, MockRequestHandler.class);
  }

  public void testMatch() throws Exception {
    final URL url = AllTests.newUrl("/dispatch/handle/hello");
    final String value = "hello";
    AllTests.assertResponseEquals(value, url);
  }

  public void testNoMatch() throws Exception {
    final URL url = AllTests.newUrl("/dispatch/donthandle/hello");
    try {
      url.openStream();
      fail("should not work");
    } catch (final FileNotFoundException ex) {
      ; // OK
    }
  }

}
