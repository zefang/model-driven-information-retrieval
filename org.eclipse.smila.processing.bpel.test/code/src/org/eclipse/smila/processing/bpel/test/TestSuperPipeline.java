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
import org.eclipse.smila.processing.bpel.pipelet.SplitterPipelet;

/**
 * Test the SuperPipeline. This pipeline calls EchoPipeline and SplitterPipeline as sub pipelines. The result should be
 * the same as when using SplitterPipeline only, see {@link TestSplitterPipeline}.
 * 
 * @author jschumacher
 * 
 */
public class TestSuperPipeline extends AWorkflowProcessorTest {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "SuperPipeline";

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
    assertEquals(SplitterPipelet.SPLIT_FACTOR, result.length);
    for (final String element : result) {
      assertTrue(element.startsWith(request));
      assertTrue(request.length() < element.length());
      assertEquals(2, element.split(SplitterPipelet.FRAGMENT_MARKER).length);
    }
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
    assertEquals(SplitterPipelet.SPLIT_FACTOR, result.length);
    for (final String element : result) {
      assertTrue(element.startsWith(request));
      assertTrue(request.length() < element.length());
      assertEquals(2, element.split(SplitterPipelet.FRAGMENT_MARKER).length);
      final AnyMap resultMetadata = getBlackboard().getMetadata(element);
      assertEquals(metadata.get(singleValuePath), resultMetadata.get(singleValuePath));
      assertEquals(metadata.get(multiValuePath), resultMetadata.get(multiValuePath));
    }
  }
}
