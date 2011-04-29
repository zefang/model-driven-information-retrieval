/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials are made available 
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 *******************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import java.util.StringTokenizer;

import javax.xml.bind.JAXBException;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.pipelets.SubAttributeExtractorPipelet;

/**
 * Test case for the SubAttributeExtractorPipelet.
 */
public class TestSubAttributeExtractorPipelet extends APipeletTest {
  /**
   * bundle name for configuration loading.
   */
  public static final String CONFIG_BUNDLE = "org.eclipse.smila.processing.pipelets";

  /**
   * name of configuration to extract the first value.
   */
  public static final String CONFIG_EXTRACT_FIRST = "sub-attribute-extractor-first.xml";

  /**
   * name of configuration to extract the last value.
   */
  public static final String CONFIG_EXTRACT_LAST = "sub-attribute-extractor-last.xml";

  /**
   * name of configuration to extract all values as list.
   */
  public static final String CONFIG_EXTRACT_LIST = "sub-attribute-extractor-list.xml";

  /**
   * name of configuration to extract all values as one.
   */
  public static final String CONFIG_EXTRACT_ONE = "sub-attribute-extractor-one.xml";

  /**
   * A set of test values.
   */
  private final String[] _values = { "This", "is", "a", "test" };

  /**
   * Another set of test values.
   */
  private final String[] _moreValues = { "Just", "another", "test", "case" };

  /**
   * create and configure SubAttributeExtractorPipelet instance.
   * 
   * @param configuration
   *          The {@link AnyMap} with the configuration data
   * @return configured pipelet.
   * @throws ProcessingException
   *           error configuring pipelet
   * @throws JAXBException
   *           error loading configuration
   */
  public SubAttributeExtractorPipelet createPipelet(final AnyMap configuration) throws ProcessingException,
    JAXBException {
    final SubAttributeExtractorPipelet pipelet = new SubAttributeExtractorPipelet();
    pipelet.configure(configuration);
    return pipelet;
  }

  /**
   * Test to extract the first value.
   * 
   * @throws Exception
   *           test failed
   */
  public void testFlatExtractFirst() throws Exception {
    final SubAttributeExtractorPipelet pipelet = createPipelet(createConfigurationForFlatExtractFirst());
    final String id = createBlackboardRecord("test", "record-with-sub-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    final AnySeq anySeq = getBlackboard().getDataFactory().createAnySeq();
    for (final String value : _values) {
      anySeq.add(getBlackboard().getDataFactory().createStringValue(value));
    }
    createStructure(anyMap, pipelet, anySeq);
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    System.out.println("testFlatExtractFirst: " + anyMap);
    final String output = anyMap.getStringValue(pipelet.getOutputPath());
    assertNotNull(output);
    assertEquals(_values[0], output);
  }

  /**
   * Test to extract the last value.
   * 
   * @throws Exception
   *           test failed
   */
  public void testFlatExtractLast() throws Exception {
    final SubAttributeExtractorPipelet pipelet = createPipelet(createConfigurationForFlatExtractLast());
    final String id = createBlackboardRecord("test", "record-with-sub-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    final AnySeq anySeq = getBlackboard().getDataFactory().createAnySeq();
    for (final String value : _values) {
      anySeq.add(getBlackboard().getDataFactory().createStringValue(value));
    }
    createStructure(anyMap, pipelet, anySeq);
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    System.out.println("testFlatExtractLast: " + anyMap);
    final String output = anyMap.getStringValue(pipelet.getOutputPath());
    assertNotNull(output);
    assertEquals(_values[_values.length - 1], output);
  }

  /**
   * Test to extract all values as a list.
   * 
   * @throws Exception
   *           test failed
   */
  public void testFlatExtractAllAsList() throws Exception {
    final SubAttributeExtractorPipelet pipelet = createPipelet(createConfigurationForFlatExtractAsList());
    final String id = createBlackboardRecord("test", "record-with-sub-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    final AnySeq anySeq = getBlackboard().getDataFactory().createAnySeq();
    for (final String value : _values) {
      anySeq.add(getBlackboard().getDataFactory().createStringValue(value));
    }
    createStructure(anyMap, pipelet, anySeq);
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    System.out.println("testFlatExtractAllAsList: " + anyMap);
    final AnySeq output = anyMap.getSeq(pipelet.getOutputPath());
    assertNotNull(output);
    assertEquals(_values.length, output.size());
  }

  /**
   * Test to extract all values as one.
   * 
   * @throws Exception
   *           test failed
   */
  public void testFlatExtractAllAsOne() throws Exception {
    final SubAttributeExtractorPipelet pipelet = createPipelet(createConfigurationForFlatExtractAllAsOne());
    final String id = createBlackboardRecord("test", "record-with-sub-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    final AnySeq anySeq = getBlackboard().getDataFactory().createAnySeq();
    for (final String value : _values) {
      anySeq.add(getBlackboard().getDataFactory().createStringValue(value));
    }
    createStructure(anyMap, pipelet, anySeq);
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    System.out.println("testFlatExtractAllAsOne: " + anyMap);
    final String expectedValue =
      _values[0] + pipelet.getSeparator() + _values[1] + pipelet.getSeparator() + _values[2]
        + pipelet.getSeparator() + _values[_values.length - 1];
    final String output = anyMap.getStringValue(pipelet.getOutputPath());
    assertNotNull(output);
    assertEquals(expectedValue, output);
  }

  /**
   * @param metadata
   *          to set values in
   * @param pipelet
   *          The pipelet
   * @param value
   *          The value
   */
  private void createStructure(final AnyMap metadata, final SubAttributeExtractorPipelet pipelet, final Any value) {
    AnyMap map = metadata;
    final StringTokenizer tokenizer =
      new StringTokenizer(pipelet.getInputPath(), SubAttributeExtractorPipelet.DEFAULT_PATH_SEPARATOR);
    String token = null;
    while (tokenizer.hasMoreTokens()) {
      token = tokenizer.nextToken();
      if (tokenizer.hasMoreElements()) {
        map.put(token, getBlackboard().getDataFactory().createAnyMap());
        map = map.getMap(token);
      } else {
        // fill value with last token as key in the result map
        map.put(token, value);
      }
    }
  }

  /**
   * @return configuration for flat extract
   */
  private AnyMap createConfigurationForFlatExtract() {
    final AnyMap configuration = getBlackboard().getDataFactory().createAnyMap();
    configuration.put("inputPath", "base/child/grandchild/source");
    configuration.put("outputPath", "target");
    configuration.put("separator", "_");
    return configuration;
  }

  /**
   * @return configuration for flat extract with FIRST
   */
  private AnyMap createConfigurationForFlatExtractFirst() {
    final AnyMap configuration = createConfigurationForFlatExtract();
    configuration.put("mode", "FIRST");
    return configuration;
  }

  /**
   * @return configuration for flat extract with LAST
   */
  private AnyMap createConfigurationForFlatExtractLast() {
    final AnyMap configuration = createConfigurationForFlatExtract();
    configuration.put("mode", "LAST");
    return configuration;
  }

  /**
   * @return configuration for flat extract with LAST
   */
  private AnyMap createConfigurationForFlatExtractAsList() {
    final AnyMap configuration = createConfigurationForFlatExtract();
    configuration.put("mode", "ALL_AS_LIST");
    return configuration;
  }

  /**
   * @return configuration for flat extract with ALL_AS_ONE
   */
  private AnyMap createConfigurationForFlatExtractAllAsOne() {
    final AnyMap configuration = createConfigurationForFlatExtract();
    configuration.put("mode", "ALL_AS_ONE");
    return configuration;
  }

}
