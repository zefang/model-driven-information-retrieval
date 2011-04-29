/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.test;

import java.net.URL;

import org.eclipse.smila.http.server.JettyHandler;
import org.eclipse.smila.http.server.util.ResourceHandlerService;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test function of {@link ResourceHandlerService}
 * 
 * @author jschumacher
 * 
 */
public class TestResourceHandler extends DeclarativeServiceTestCase {

  public void testHandlerService() throws Exception {
    assertServiceRegistered(JettyHandler.class, ResourceHandlerService.class);
  }

  public void testWelcomeFile() throws Exception {
    final URL url = AllTests.newUrl("/resources/");
    final String filename = "resources/index.html";
    AllTests.assertResponseEqualsFile(filename, url);
  }

  public void testOtherFile() throws Exception {
    final URL url = AllTests.newUrl("/resources/index.txt");
    final String filename = "resources/index.txt";
    AllTests.assertResponseEqualsFile(filename, url);
  }

}
