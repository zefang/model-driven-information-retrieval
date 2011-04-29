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
import org.custommonkey.xmlunit.Diff;
import org.custommonkey.xmlunit.XMLUnit;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.SourceType;
import org.eclipse.smila.processing.pipelets.xmlprocessing.XPathFilterPipelet;
import org.eclipse.smila.processing.pipelets.xmlprocessing.XPathFilterPipelet.XPathFilerMode;

/**
 * Test the XPathExtractorPipelet.
 */
public class TestXPathFilterPipelet extends AXPathTest {

  /**
   * Constant for the xml document to extract values from.
   */
  private static final String AUTHOR_XML = "./configuration/data/author.xml";

  /**
   * Expected result for include filter mode.
   */
  private static final String AUTHOR_INCLUDE_XML = "./configuration/data/author_include.xml";

  /**
   * Expected result for exclude filter mode.
   */
  private static final String AUTHOR_EXCLUDE_XML = "./configuration/data/author_exclude.xml";

  /**
   * The XPathFilterPipelet.
   */
  private XPathFilterPipelet _pipelet;

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.pipelets.test.APipeletTest#setUp()
   */
  protected void setUp() throws Exception {
    super.setUp();
    _pipelet = new XPathFilterPipelet();
  }

  /**
   * @param sourceType the source type (ATTRIBUTE/ATTACHMENT)
   * @param filterMode 
   *          include or exclude filters
   * @return pipelet configuration 
   */
  protected AnyMap createPipeletConfiguration(final SourceType sourceType, final XPathFilerMode filterMode) {
    AnyMap configuration = null;
    if (sourceType == SourceType.ATTACHMENT) {
      configuration = super.createAttachmentsConfiguration();
    } else {
      configuration = super.createAttributesConfiguration();
    }

    final AnySeq xpaths = getBlackboard().getDataFactory().createAnySeq();
    xpaths.add("author/name");
    xpaths.add("author/email");
    configuration.put(XPathFilterPipelet.PROP_XPATH, xpaths);

    configuration.put(XPathFilterPipelet.PROP_SEPARATOR, "");
    configuration.put(XPathFilterPipelet.PROP_NAMESPACE, "");
    if (filterMode == XPathFilerMode.INCLUDE) {
      configuration.put(XPathFilterPipelet.PROP_ROOT_ELEMENT, "authorInc");
    } else {
      configuration.put(XPathFilterPipelet.PROP_FILTER_MODE, "EXCLUDE");
    }
    return configuration;
  }

  /**
   * Test XPathFilterPipelet include with Attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testIncludeFilterByAttribute() throws Exception {
    _pipelet.configure(createPipeletConfiguration(SourceType.ATTRIBUTE, XPathFilerMode.INCLUDE));
    final String xmlString = doFilter(_pipelet, SourceType.ATTRIBUTE, AUTHOR_XML);
    final String expected =
      removeBOM(IOUtils.toString(new FileInputStream(AUTHOR_INCLUDE_XML),
        ATransformationPipelet.ENCODING_ATTACHMENT));
    final Diff diff = XMLUnit.compareXML(xmlString, expected);
    assertTrue(diff.identical());
  }

  /**
   * Test XPathFilterPipelet include with Attachments.
   * 
   * @throws Exception
   *           test fails
   */
  public void testIncludeFilterByAttachment() throws Exception {
    _pipelet.configure(createPipeletConfiguration(SourceType.ATTACHMENT, XPathFilerMode.INCLUDE));
    final String xmlString = doFilter(_pipelet, SourceType.ATTACHMENT, AUTHOR_XML);
    final String expected =
      removeBOM(IOUtils.toString(new FileInputStream(AUTHOR_INCLUDE_XML),
        ATransformationPipelet.ENCODING_ATTACHMENT));
    final Diff diff = XMLUnit.compareXML(xmlString, expected);
    assertTrue(diff.identical());
  }

  /**
   * Test XPathFilterPipelet exclude with Attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testExcludeFilterbyAttribute() throws Exception {
    _pipelet.configure(createPipeletConfiguration(SourceType.ATTRIBUTE, XPathFilerMode.EXCLUDE));
    final String xmlString = doFilter(_pipelet, SourceType.ATTRIBUTE, AUTHOR_XML);
    final String expected =
      removeBOM(IOUtils.toString(new FileInputStream(AUTHOR_EXCLUDE_XML),
        ATransformationPipelet.ENCODING_ATTACHMENT));
    final Diff diff = XMLUnit.compareXML(xmlString, expected);
    assertTrue(diff.identical());
  }

  /**
   * Test XPathFilterPipelet exclude with Attachments.
   * 
   * @throws Exception
   *           test fails
   */
  public void testExcludeFilterByAttachment() throws Exception {
    _pipelet.configure(createPipeletConfiguration(SourceType.ATTACHMENT, XPathFilerMode.EXCLUDE));
    final String xmlString = doFilter(_pipelet, SourceType.ATTACHMENT, AUTHOR_XML);
    final String expected =
      removeBOM(IOUtils.toString(new FileInputStream(AUTHOR_EXCLUDE_XML),
        ATransformationPipelet.ENCODING_ATTACHMENT));
    final Diff diff = XMLUnit.compareXML(xmlString, expected);
    assertTrue(diff.identical());
  }
}
