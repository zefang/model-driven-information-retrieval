/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH.  
 * All rights reserved. This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution, 
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc.test;

import junit.framework.Test;
import junit.framework.TestSuite;

/**
 * Suite combining all ipc tests.
 * 
 * @author aweber
 * 
 */
public final class AllTests {

  /** test bundle id. */
  public static final String BUNDLE_ID = "org.eclipse.smila.ipc.test";

  /**
   * utility class, do not create instances.
   */
  private AllTests() {
  }

  /**
   * @return suite for all datamodel tests
   */
  public static Test suite() {
    final TestSuite suite = new TestSuite("Test for org.eclipse.smila.ipc");
    // $JUnit-BEGIN$
    suite.addTestSuite(TestJsonStreamReader.class);
    // $JUnit-END$
    return suite;
  }

}
