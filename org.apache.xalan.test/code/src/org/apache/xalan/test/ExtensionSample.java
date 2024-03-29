/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator
 **********************************************************************************************************************/
package org.apache.xalan.test;

/**
 * The Class ExtensionSample.
 */
public final class ExtensionSample {

  /**
   * not instantiates a new extension sample.
   */
  private ExtensionSample() {
  }

  /**
   * Sample method.
   * 
   * @param input
   *          the input
   * 
   * @return the string
   */
  public static String sampleMethod(final String input) {
    return input + "; " + input;
  }
}
