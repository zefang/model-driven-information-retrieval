/*******************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.processing.bpel.test;

import java.util.List;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.processing.WorkflowProcessor;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test some basic operations of the workflow processor, not related to actual workflow processing.
 * 
 * @author jschumacher
 * 
 */
public class TestWorkflowProcessorService extends DeclarativeServiceTestCase {

  private WorkflowProcessor _processor;

  @Override
  protected void setUp() throws Exception {
    super.setUp();
    _processor = getService(WorkflowProcessor.class);
    assertNotNull("no WorkflowProcessor service found.", _processor);
  }

  /**
   * test listing of workflow names.
   */
  public void testWorkflowNames() throws Exception {
    final List<String> names = _processor.getWorkflowNames();
    assertNotNull(names);
    assertEquals(9, names.size());
    assertTrue(names.contains("EchoPipeline"));
    assertTrue(names.contains("HelloWorldPipeline"));
    assertTrue(names.contains("SuperPipeline"));
  }

  /**
   * test reading of workflow definitions.
   */
  public void testWorkflowDefinition() throws Exception {
    final Any noDefinition = _processor.getWorkflowDefinition("NoPipeline");
    assertNull(noDefinition);
    final Any definition = _processor.getWorkflowDefinition("EchoPipeline");
    assertNotNull(definition);
    assertTrue(definition.isString());
    // Check if it is a SMILA BPEL pipeline.
    final String definitionString = definition.asValue().asString();
    assertNotNull(definitionString);
    assertFalse(definitionString.isEmpty());
    assertTrue(definitionString.contains("<process name=\"EchoPipeline\""));
    assertTrue(definitionString
      .contains("xmlns=\"http://docs.oasis-open.org/wsbpel/2.0/process/executable\""));
    assertTrue(definitionString
      .contains("targetNamespace=\"http://www.eclipse.org/smila/processor\""));
  }
}
