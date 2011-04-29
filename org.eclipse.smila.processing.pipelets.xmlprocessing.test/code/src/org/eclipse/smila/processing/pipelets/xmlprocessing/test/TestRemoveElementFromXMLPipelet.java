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
import org.eclipse.smila.processing.pipelets.xmlprocessing.RemoveElementFromXMLPipelet;

/**
 * Test the emoveElementFromXMLPipelet.
 */
public class TestRemoveElementFromXMLPipelet extends ATransformationPipeletTest {

  /**
   * Constant for the xml document to transform.
   */
  private static final String AUTHOR_XML = "./configuration/data/author_id.xml";

  /**
   * Constant for the expected xml document result.
   */
  private static final String AUTHOR_REMOVED_XML = "./configuration/data/author_id_removed.xml";

  /**
   * Test RemoveElementFromXMLPipelet where xml in/out is stored in attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testXSLTbyAttribute() throws Exception {
    final RemoveElementFromXMLPipelet pipelet = new RemoveElementFromXMLPipelet();
    final AnyMap configuration = createAttributesConfiguration();
    configuration.put(RemoveElementFromXMLPipelet.PROP_ELEMENT_ID, "1");
    pipelet.configure(configuration);
    doInputOutputTest(pipelet, SourceType.ATTRIBUTE, AUTHOR_XML, AUTHOR_REMOVED_XML, CompareType.XML_DIFF);
  }

  /**
   * Test RemoveElementFromXMLPipelet where xml in/out is stored in attachments.
   * 
   * @throws Exception
   *           test fails
   */
  public void testXSLTbyAttachment() throws Exception {
    final RemoveElementFromXMLPipelet pipelet = new RemoveElementFromXMLPipelet();
    final AnyMap configuration = createAttachmentsConfiguration();
    configuration.put(RemoveElementFromXMLPipelet.PROP_ELEMENT_ID, "1");
    pipelet.configure(configuration);
    doInputOutputTest(pipelet, SourceType.ATTACHMENT, AUTHOR_XML, AUTHOR_REMOVED_XML, CompareType.XML_DIFF);
  }

}
