/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.test;

import java.net.URL;

import org.eclipse.smila.http.server.HttpHandler;
import org.eclipse.smila.http.server.HttpService;
import org.eclipse.smila.http.server.internal.HttpServiceImpl;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test invocation of {@link HttpHandler} services using {@link MockHttpHandler}.
 * 
 * @author jschumacher
 * 
 */
public class TestHttpHandler extends DeclarativeServiceTestCase {

  public void testHttpService() throws Exception {
    final HttpService service = getService(HttpService.class);
    assertNotNull(service);
    assertSame(HttpServiceImpl.class, service.getClass());
  }

  public void testHandlerService() throws Exception {
    assertServiceRegistered(HttpHandler.class, MockHttpHandler.class);
  }

  public void testRequest() throws Exception {
    final URL url = AllTests.newUrl("/httphandler/");
    AllTests.assertResponseEquals(MockHttpHandler.HELLO_WORLD, url);
  }

}
