/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.xmlprocessing.test;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.pipelets.SourceType;
import org.eclipse.smila.processing.pipelets.test.ATransformationPipeletTest;
import org.eclipse.smila.processing.pipelets.xmlprocessing.XslTransformationPipelet;

/**
 * Test the XslTransformationPipelet.
 */
public class TestXslTransformationPipelet extends ATransformationPipeletTest {

  /**
   * Constant for the xml document to transform.
   */
  private static final String AUTHOR_XML = "./configuration/data/author.xml";

  /**
   * Constant for the expected html document result.
   */
  private static final String AUTHOR_HTML = "./configuration/data/author.html";

  /**
   * The XslTransformationPipelet.
   */
  private XslTransformationPipelet _pipelet;

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.pipelets.test.APipeletTest#setUp()
   */
  protected void setUp() throws Exception {
    super.setUp();
    _pipelet = new XslTransformationPipelet();
  }

  /**
   * Test XslTransformationPipelet with Attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testXSLTbyAttribute() throws Exception {
    final AnyMap configuration = createAttributesConfiguration();
    configuration.put(XslTransformationPipelet.PROP_XSL_FILE, "./configuration/data/author.xsl");
    _pipelet.configure(configuration);
    doInputOutputTest(_pipelet, SourceType.ATTRIBUTE, AUTHOR_XML, AUTHOR_HTML, CompareType.EQUAL);
  }

  /**
   * Test XslTransformationPipelet with Attachments.
   * 
   * @throws Exception
   *           test fails
   */
  public void testXSLTbyAttachment() throws Exception {
    final AnyMap configuration = createAttachmentsConfiguration();
    configuration.put(XslTransformationPipelet.PROP_XSL_FILE, "./configuration/data/author.xsl");
    _pipelet.configure(configuration);
    doInputOutputTest(_pipelet, SourceType.ATTACHMENT, AUTHOR_XML, AUTHOR_HTML, CompareType.EQUAL);
  }
}
