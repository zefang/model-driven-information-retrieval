/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.xmlprocessing.test;

import java.io.FileInputStream;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.SourceType;
import org.eclipse.smila.processing.pipelets.test.ATransformationPipeletTest;

/**
 * Abstract base test class for XPath tests..
 */
public abstract class AXPathTest extends ATransformationPipeletTest {

  /**
   * Filter by Attribute.
   * 
   * @param pipelet
   *          the Pipelet to test
   * @param sourceType the source type (ATTRIBUTE/ATTACHMENT)         
   * @param inputFile
   *          the test input
   * @return a String
   * @throws Exception
   *           if any error occurs
   */
  protected String doFilter(final ATransformationPipelet pipelet, final SourceType sourceType,
    final String inputFile) throws Exception {

    // prepare test data
    final String id = createBlackboardRecord("testSource", "testId");
    final String[] recordIds = new String[] { id };
    if (sourceType == SourceType.ATTACHMENT) {
      getBlackboard()
        .setAttachment(id, pipelet.getInputName(), IOUtils.toByteArray(new FileInputStream(inputFile)));
    } else {
      getBlackboard().getMetadata(id).put(pipelet.getInputName(),
        IOUtils.toString(new FileInputStream(inputFile), ATransformationPipelet.ENCODING_ATTACHMENT));
    }

    // execute
    pipelet.process(getBlackboard(), recordIds);

    // check result
    String xmlResult = null;
    if (sourceType == SourceType.ATTACHMENT) {
      assertTrue(getBlackboard().hasAttachment(id, pipelet.getOutputName()));
      final byte[] result = getBlackboard().getAttachment(id, pipelet.getOutputName());
      assertNotNull(result);
      xmlResult = new String(result, ATransformationPipelet.ENCODING_ATTACHMENT);
    } else {
      assertTrue(getBlackboard().getMetadata(id).containsKey(pipelet.getOutputName()));
      xmlResult = getBlackboard().getMetadata(id).getStringValue(pipelet.getOutputName());
    }
    assertNotNull(xmlResult);
    return xmlResult;
  }
}
