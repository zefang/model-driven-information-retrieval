/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (Brox IT Solutions GmbH) -
 * initial creator
 **********************************************************************************************************************/

package org.eclipse.smila.search.highlighting.transformer.test;

import org.eclipse.smila.search.highlighting.transformer.HighlightingTransformerException;

import junit.framework.TestCase;



/**
 * Test class for DeltaIndexingException.
 */
public class TestHighlightingTransformerException extends TestCase {

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {

  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {

  }

  /**
   * Test exception handling.
   */
  public void testExceptions() {
    final String msg = "a test error message";
    final Throwable cause = new Exception("a cause exception");

    HighlightingTransformerException die = new HighlightingTransformerException();
    assertNotNull(die);
    assertNull(die.getCause());

    die = new HighlightingTransformerException(msg);
    assertNotNull(die);
    assertEquals(msg, die.getMessage());
    assertNull(die.getCause());

    die = new HighlightingTransformerException(cause);
    assertNotNull(die);
    assertEquals("java.lang.Exception: " + cause.getMessage(), die.getMessage());
    assertNotNull(die.getCause());
    assertEquals(cause, die.getCause());

    die = new HighlightingTransformerException(msg, cause);
    assertNotNull(die);
    assertEquals(msg, die.getMessage());
    assertNotNull(die.getCause());
    assertEquals(cause, die.getCause());
  }
}
