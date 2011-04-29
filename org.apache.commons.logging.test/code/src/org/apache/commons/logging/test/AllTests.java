/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator
 **********************************************************************************************************************/
package org.apache.commons.logging.test;

import junit.framework.Test;
import junit.framework.TestSuite;

/**
 * Test suite for org.apache.commons.logging bundle.
 */
public final class AllTests {

  /**
   * Private default Constructor to avoid instance creation.
   */
  private AllTests() {
  }

  /**
   * Creates test suite.
   * 
   * @return Test suite.
   */
  public static Test suite() {
    final TestSuite suite = new TestSuite("Tests for org.apache.commons.logging bundle");
    suite.addTestSuite(LogTest.class);
    return suite;
  }

}
