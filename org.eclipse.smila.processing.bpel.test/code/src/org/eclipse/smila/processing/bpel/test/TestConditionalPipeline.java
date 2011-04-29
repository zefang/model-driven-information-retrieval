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
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.bpel.pipelet.SplitterPipelet;

/**
 * Test the SplitterPipeline. This pipeline creates a fixed number of records from each incoming record by invoking the
 * {@link SplitterPipelet}.
 * 
 * @author jschumacher
 * 
 */
public class TestConditionalPipeline extends AWorkflowProcessorTest {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "ConditionalPipeline";

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
   * test without tested attribute value.
   * 
   * @throws Exception
   *           test fails
   */
  public void testID() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(1, result.length);
    assertEquals(request, result[0]);
  }

  /**
   * test with attribute value fulfilling condition.
   * 
   * @throws Exception
   *           test fails
   */
  public void testSplitAttribute() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("split");
    getBlackboard().getMetadata(request).put("workflow-attribute", singleValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(SplitterPipelet.SPLIT_FACTOR, result.length);
    for (final String element : result) {
      assertTrue(element.startsWith(request));
      assertTrue(request.length() < element.length());
      assertEquals(2, element.split(SplitterPipelet.FRAGMENT_MARKER).length);
      final AnyMap metadata = getBlackboard().getMetadata(element);
      assertTrue(metadata.containsKey("workflow-attribute"));
      assertEquals(singleValue, metadata.get("workflow-attribute"));
    }
  }

  /**
   * test with annotation value fulfilling condition.
   * 
   * @throws Exception
   *           test fails
   */
  public void testSplitAnnotation() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("split");
    getBlackboard().getMetadata(request).put("workflow-annotation", singleValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(SplitterPipelet.SPLIT_FACTOR, result.length);
    for (final String element : result) {
      assertTrue(element.startsWith(request));
      assertTrue(request.length() < element.length());
      assertEquals(2, element.split(SplitterPipelet.FRAGMENT_MARKER).length);
      final AnyMap metadata = getBlackboard().getMetadata(element);
      assertTrue(metadata.containsKey("workflow-annotation"));
      assertEquals(singleValue, metadata.get("workflow-annotation"));
    }
  }

  /**
   * test with annotation and attribute value fulfilling condition.
   * 
   * @throws Exception
   *           test fails
   */
  public void testDoubleSplit() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("split");
    getBlackboard().getMetadata(request).put("workflow-annotation", singleValue);
    getBlackboard().getMetadata(request).put("workflow-attribute", singleValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(SplitterPipelet.SPLIT_FACTOR * SplitterPipelet.SPLIT_FACTOR, result.length);
    for (final String element : result) {
      assertTrue(element.startsWith(request));
      assertTrue(request.length() < element.length());
      assertEquals(3, element.split(SplitterPipelet.FRAGMENT_MARKER).length);
      final AnyMap metadata = getBlackboard().getMetadata(element);
      assertTrue(metadata.containsKey("workflow-attribute"));
      assertEquals(singleValue, metadata.get("workflow-attribute"));
      assertTrue(metadata.containsKey("workflow-annotation"));
      assertEquals(singleValue, metadata.get("workflow-annotation"));
    }
  }

  /**
   * test with attribute and annotation value not fulfilling condition.
   * 
   * @throws Exception
   *           test fails
   */
  public void testNoSplit() throws Exception {
    final String request = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("no-split");
    getBlackboard().getMetadata(request).put("workflow-annotation", singleValue);
    getBlackboard().getMetadata(request).put("workflow-attribute", singleValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { request });
    assertEquals(1, result.length);
    assertEquals(request, result[0]);
    assertEquals(1, result[0].split(SplitterPipelet.FRAGMENT_MARKER).length);
    final AnyMap metadata = getBlackboard().getMetadata(result[0]);
    assertTrue(metadata.containsKey("workflow-attribute"));
    assertEquals(singleValue, metadata.get("workflow-attribute"));
    assertTrue(metadata.containsKey("workflow-annotation"));
    assertEquals(singleValue, metadata.get("workflow-annotation"));
  }

}
