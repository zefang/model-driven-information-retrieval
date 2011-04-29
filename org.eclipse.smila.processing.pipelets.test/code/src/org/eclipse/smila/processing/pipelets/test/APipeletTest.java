/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Base class for Pipelet tests.
 */
public abstract class APipeletTest extends DeclarativeServiceTestCase {

  /**
   * Blackboard service to use in test.
   */
  private Blackboard _blackboard;

  /**
   * Check if BlackboardService service is active. Wait up to 30 seconds for start. Fail, if no service is starting.
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    final BlackboardFactory factory = getService(BlackboardFactory.class);
    assertNotNull("no BlackboardFactory service found.", factory);
    _blackboard = factory.createPersistingBlackboard();
    assertNotNull("no Blackboard created", _blackboard);
  }

  /**
   * @return the blackboard
   */
  public Blackboard getBlackboard() {
    return _blackboard;
  }

  /**
   * create a new record on the blackboard.
   * 
   * @param source
   *          source value of ID
   * @param key
   *          key value of ID
   * @return id of created record.
   */
  protected String createBlackboardRecord(String source, String key) {
    final String id = source + ":" + key;
    _log.info("Invalidating and re-creating test record on blackboard.");
    _log.info("This may cause an exception to be logged that can be safely ignored.");
    _blackboard.invalidate(id);
    _blackboard.create(id);
    return id;
  }

  /**
   * Removes the BOM from a UTF-8 String.
   * 
   * @param stringWithBom
   *          the String with BOM
   * @return a String without the BOM
   */
  protected String removeBOM(String stringWithBom) {
    return stringWithBom.substring(1);
  }

}
