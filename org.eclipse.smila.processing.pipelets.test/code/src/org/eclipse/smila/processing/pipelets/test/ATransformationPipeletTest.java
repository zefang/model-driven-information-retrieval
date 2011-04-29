/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation 
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import java.io.FileInputStream;

import org.apache.commons.io.IOUtils;
import org.custommonkey.xmlunit.Diff;
import org.custommonkey.xmlunit.XMLUnit;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.SourceType;

/**
 * Base class for transformation pipelet tests.
 * 
 * @author aweber
 */
public abstract class ATransformationPipeletTest extends APipeletTest {

  /**
   * The CompareType decides how to compare xml's.
   */
  public enum CompareType {
    /**
     * compare for exact equality.
     */
    EQUAL,
    /**
     * compare for xml equality.
     */
    XML_DIFF
  }

  /**
   * @return configuration with ATTACHMENT as input-/outputType
   */
  protected AnyMap createAttachmentsConfiguration() {
    final AnyMap configuration = getBlackboard().getDataFactory().createAnyMap();
    configuration.put(ATransformationPipelet.PROP_INPUT_TYPE, SourceType.ATTACHMENT.name());
    configuration.put(ATransformationPipelet.PROP_OUTPUT_TYPE, SourceType.ATTACHMENT.name());
    configuration.put(ATransformationPipelet.PROP_INPUT_NAME, "in");
    configuration.put(ATransformationPipelet.PROP_OUTPUT_NAME, "out");
    return configuration;
  }

  /**
   * @return configuration with ATTRIBUTE as input-/outputType
   */
  protected AnyMap createAttributesConfiguration() {
    final AnyMap configuration = getBlackboard().getDataFactory().createAnyMap();
    configuration.put(ATransformationPipelet.PROP_INPUT_TYPE, SourceType.ATTRIBUTE.name());
    configuration.put(ATransformationPipelet.PROP_OUTPUT_TYPE, SourceType.ATTRIBUTE.name());
    configuration.put(ATransformationPipelet.PROP_INPUT_NAME, "in");
    configuration.put(ATransformationPipelet.PROP_OUTPUT_NAME, "out");
    return configuration;
  }

  /**
   * @return configuration with ATTACHMENT as inputType and ATTRIBUTE as outputType
   */
  protected AnyMap createAttachmentsAttributesConfiguration() {
    final AnyMap configuration = getBlackboard().getDataFactory().createAnyMap();
    configuration.put(ATransformationPipelet.PROP_INPUT_TYPE, SourceType.ATTACHMENT.name());
    configuration.put(ATransformationPipelet.PROP_OUTPUT_TYPE, SourceType.ATTRIBUTE.name());
    configuration.put(ATransformationPipelet.PROP_INPUT_NAME, "in");
    configuration.put(ATransformationPipelet.PROP_OUTPUT_NAME, "out");
    return configuration;
  }
  
  /**
   * @return configuration with ATTRIBUTE as inputType and ATTACHMENT as outputType
   */
  protected AnyMap createAttributesAttachmentsConfiguration() {
    final AnyMap configuration = getBlackboard().getDataFactory().createAnyMap();
    configuration.put(ATransformationPipelet.PROP_INPUT_TYPE, SourceType.ATTRIBUTE.name());
    configuration.put(ATransformationPipelet.PROP_OUTPUT_TYPE, SourceType.ATTACHMENT.name());
    configuration.put(ATransformationPipelet.PROP_INPUT_NAME, "in");
    configuration.put(ATransformationPipelet.PROP_OUTPUT_NAME, "out");
    return configuration;
  }

  /**
   * @param pipelet
   *          the pipelet to test
   * @param sourceType
   *          the source type (ATTRIBUTE/ATTACHMENT)
   * @param inputFile
   *          the file containing the test input
   * @param expectedFile
   *          the file containing the expected test output
   * @param compareType
   *          whether to test for equality or use XML Diff to compare result with expected
   * @throws Exception
   *           error
   */
  protected void doInputOutputTest(final ATransformationPipelet pipelet, final SourceType sourceType,
    final String inputFile, final String expectedFile, final CompareType compareType) throws Exception {

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
    final String expected =
      removeBOM(IOUtils.toString(new FileInputStream(expectedFile), ATransformationPipelet.ENCODING_ATTACHMENT));
    if (compareType == CompareType.XML_DIFF) {
      final Diff diff = XMLUnit.compareXML(expected, xmlResult);
      assertTrue(diff.identical());
    } else {
      assertEquals(expected, xmlResult);
    }
  }
}
