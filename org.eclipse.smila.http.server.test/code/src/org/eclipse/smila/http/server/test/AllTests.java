/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.test;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

import junit.framework.Assert;
import junit.framework.Test;
import junit.framework.TestSuite;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.utils.config.ConfigUtils;

/**
 * Test suite for org.eclipse.smila.http.server bundle.
 */
public final class AllTests {

  /** name of test bundle */
  public static final String BUNDLE_ID = "org.eclipse.smila.http.server.test";

  public static final int PORT = 8765;

  public static final String BASE_URL = "http://localhost:" + PORT;

  public static URL newUrl(final String path) throws MalformedURLException {
    return new URL(BASE_URL + path);
  }

  public static void assertResponseEqualsFile(final String filename, final URL url) throws IOException {
    final InputStream fileStream = ConfigUtils.getConfigStream(AllTests.BUNDLE_ID, filename);
    final String expected = IOUtils.toString(fileStream);
    IOUtils.closeQuietly(fileStream);
    assertResponseEquals(expected, url);
  }

  public static void assertResponseEquals(final String value, final URL url) throws IOException {
    final InputStream httpStream = url.openStream();
    final String delivered = IOUtils.toString(httpStream);
    IOUtils.closeQuietly(httpStream);
    Assert.assertEquals(value, delivered);
  }

  /** Private default Constructor to avoid instance creation. */
  private AllTests() {
  }

  /**
   * Creates test suite.
   * 
   * @return Test suite.
   */
  public static Test suite() {
    final TestSuite suite = new TestSuite("Tests for org.eclipse.smila.http.server bundle");
    suite.addTestSuite(TestHttpHandler.class);
    suite.addTestSuite(TestRequestHandler.class);
    suite.addTestSuite(TestResourceHandler.class);
    suite.addTestSuite(TestServletHandler.class);
    suite.addTestSuite(TestWebappHandler.class);
    return suite;
  }

}
