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
import org.eclipse.smila.processing.bpel.pipelet.AddLiteralPipelet;
import org.eclipse.smila.processing.bpel.pipelet.SearchTestPipelet;

/**
 * Test search processing with pipelets. The pipeline contains a simple pipelet manipulating the query, then a search
 * pipelet that creates a search result by splitting the query object and finally the same simple pipelet than before
 * manipulates the result records.
 * 
 * @author jschumacher
 * 
 */
public class TestSearchPipeletPipeline extends AWorkflowProcessorTest {
  /**
   * name of pipeline to test.
   */
  public static final String PIPELINE_NAME = "SearchPipeletPipeline";

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
    final String query = createBlackboardRecord("source", "key");
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { query });
    assertEquals(SearchTestPipelet.RESULT_SIZE, result.length);
    for (int i = 0; i < result.length; i++) {
      final String record = result[i];
      final String value = SearchTestPipelet.PREFIX + i;
      assertTrue(record.startsWith(query));
      assertTrue(query.length() < record.length());
      assertEquals(2, record.split(SearchTestPipelet.FRAGMENT_MARKER).length);
      final AnySeq literals = getBlackboard().getMetadata(record).getSeq(AddLiteralPipelet.ATTRIBUTE);
      assertEquals(2, literals.size());
      assertEquals(AddLiteralPipelet.VALUE_PREFIX + 0, literals.getStringValue(0));
      assertEquals(AddLiteralPipelet.VALUE_PREFIX + i, literals.getStringValue(1));
      assertEquals(value, getBlackboard().getMetadata(record).getStringValue(SearchTestPipelet.ATTRIBUTE));
    }
  }

  /**
   * test with attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testEchoAttributes() throws Exception {
    final String query = createBlackboardRecord("source", "key");
    final Value singleValue = getFactory().createStringValue("single value");
    final String singleValuePath = "single value attribute";
    final AnyMap metadata = getBlackboard().getMetadata(query);
    metadata.put(singleValuePath, singleValue);
    final String multiValuePath = "multi value attribute";
    final Value multiValue1 = getFactory().createStringValue("multi value 1");
    final Value multiValue2 = getFactory().createStringValue("multi value 2");
    final AnySeq multiValue = getFactory().createAnySeq();
    multiValue.add(multiValue1);
    multiValue.add(multiValue2);
    metadata.put(multiValuePath, multiValue);
    final String[] result = getProcessor().process(PIPELINE_NAME, getBlackboard(), new String[] { query });
    assertEquals(SearchTestPipelet.RESULT_SIZE, result.length);
    for (int i = 0; i < result.length; i++) {
      final String record = result[i];
      final String value = SearchTestPipelet.PREFIX + i;
      assertTrue(record.startsWith(query));
      assertTrue(query.length() < record.length());
      assertEquals(2, record.split(SearchTestPipelet.FRAGMENT_MARKER).length);
      final AnySeq literals = getBlackboard().getMetadata(record).getSeq(AddLiteralPipelet.ATTRIBUTE);
      assertEquals(2, literals.size());
      assertEquals(AddLiteralPipelet.VALUE_PREFIX + 0, literals.getStringValue(0));
      assertEquals(AddLiteralPipelet.VALUE_PREFIX + i, literals.getStringValue(1));
      assertEquals(value, getBlackboard().getMetadata(record).getStringValue(SearchTestPipelet.ATTRIBUTE));
      assertEquals(singleValue, getBlackboard().getMetadata(record).get(singleValuePath));
      assertEquals(multiValue, getBlackboard().getMetadata(record).get(multiValuePath));
    }
  }

}
