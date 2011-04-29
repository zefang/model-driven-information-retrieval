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

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;

/**
 * Test the SimplePipeline. This pipeline just returns the given records.
 * 
 * @author jschumacher
 * 
 */
public class TestSimplePipeline extends AWorkflowProcessorTest {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "SimplePipeline";

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
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
  public void testEchoID() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(1, result.length);
    assertEquals(request, result[0]);
    assertEquals("value1", getBlackboard().getMetadata(request).getStringValue("single-config-value"));
    assertEquals("value-a", getBlackboard().getMetadata(request).getSeq("multi-config-value").getStringValue(0));
    assertEquals("value-b", getBlackboard().getMetadata(request).getSeq("multi-config-value").getStringValue(1));
    assertEquals("sub-value",
      getBlackboard().getMetadata(request).getMap("sub-config").getStringValue("sub-config-value"));
  }

  /**
   * test with attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testEchoAttributes() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("single value");
    final String singleValuePath = "single value attribute";
    final AnyMap metadata = getBlackboard().getMetadata(request);
    metadata.put(singleValuePath, singleValue);
    final String multiValuePath = "multi value attribute";
    final Value multiValue1 = getFactory().createStringValue("multi value 1");
    final Value multiValue2 = getFactory().createStringValue("multi value 2");
    final AnySeq multiValue = getFactory().createAnySeq();
    multiValue.add(multiValue1);
    multiValue.add(multiValue2);
    metadata.put(multiValuePath, multiValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(1, result.length);
    assertEquals(request, result[0]);
    assertEquals(singleValue, getBlackboard().getMetadata(request).get(singleValuePath));
    assertEquals(multiValue, getBlackboard().getMetadata(request).get(multiValuePath));
    assertEquals("value1", getBlackboard().getMetadata(request).getStringValue("single-config-value"));
    assertEquals("value-a", getBlackboard().getMetadata(request).getSeq("multi-config-value").getStringValue(0));
    assertEquals("value-b", getBlackboard().getMetadata(request).getSeq("multi-config-value").getStringValue(1));
    assertEquals("sub-value",
      getBlackboard().getMetadata(request).getMap("sub-config").getStringValue("sub-config-value"));
  }

}
