/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation 
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest;

/**
 * Test the AddValuesPipelet. This test pipeline adds some values to the input record.
 * 
 * @author aweber
 */
public class TestAddValuesPipelet extends AWorkflowProcessorTest {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "AddValuesPipeline";

  /**
   * @return name of pipeline to test
   */
  @Override
  protected String getPipelineName() {
    return PIPELINE_NAME;
  }

  /**
   * test code.
   * 
   * @throws Exception
   *           test fails
   */
  public void test() throws Exception {
    final String requestId = createBlackboardRecord("source", "key");
    final String[] resultIds = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { requestId });
    assertEquals(1, resultIds.length);
    assertEquals(requestId, resultIds[0]);

    final DataFactory dataFactory = getBlackboard().getDataFactory();
    final Any any = getBlackboard().getMetadata(resultIds[0]).get("out");
    assertNotNull(any);
    assertTrue(any.isSeq());
    assertEquals(4, any.size());
    final AnySeq anySeq = (AnySeq) any;
    assertTrue(anySeq.contains(dataFactory.createStringValue("value1")));
    assertTrue(anySeq.contains(dataFactory.createStringValue("value2")));
    assertTrue(anySeq.contains(dataFactory.createStringValue("value3")));
    assertTrue(anySeq.contains(dataFactory.createStringValue("value4")));
  }
}
