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

import javax.xml.bind.JAXBException;

import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.CopyPipelet;

/**
 * Test case for the CopyPipelet.
 */
public class TestCopyPipelet extends ATransformationPipeletTest {
  /**
   * bundle name for configuration loading.
   */
  public static final String CONFIG_BUNDLE = "org.eclipse.smila.processing.pipelets";

  /**
   * name of configuration to copy from attribute to attribute.
   */
  public static final String CONFIG_CP_ATTR_TO_ATTR = "cp-attribute-to-attribute.xml";

  /**
   * name of configuration to copy from attribute to attachment.
   */
  public static final String CONFIG_CP_ATTR_TO_ATTACH = "cp-attribute-to-attachment.xml";

  /**
   * name of configuration to copy from attachment to attribute.
   */
  public static final String CONFIG_CP_ATTACH_TO_ATTR = "cp-attachment-to-attribute.xml";

  /**
   * name of configuration to copy from attachment to attachment.
   */
  public static final String CONFIG_CP_ATTACH_TO_ATTACH = "cp-attachment-to-attachment.xml";

  /**
   * name of configuration to move from attribute to attribute.
   */
  public static final String CONFIG_MV_ATTR_TO_ATTR = "mv-attribute-to-attribute.xml";

  /**
   * name of configuration to move from attribute to attachment.
   */
  public static final String CONFIG_MV_ATTR_TO_ATTACH = "mv-attribute-to-attachment.xml";

  /**
   * name of configuration to move from attachment to attribute.
   */
  public static final String CONFIG_MV_ATTACH_TO_ATTR = "mv-attachment-to-attribute.xml";

  /**
   * name of configuration to move from attachment to attachment.
   */
  public static final String CONFIG_MV_ATTACH_TO_ATTACH = "mv-attachment-to-attachment.xml";

  /**
   * A test string used for attribute and attachments value.
   */
  private static final String TEXT = "This is a test string containing some data.";

  /**
   * create and configure CopyPipelet instance.
   * 
   * @param configuration
   *          The {@link AnyMap} with the configuration data
   * @return configured pipelet.
   * @throws ProcessingException
   *           error configuring pipelet
   * @throws JAXBException
   *           error loading configuration
   */
  public CopyPipelet createPipelet(final AnyMap configuration) throws ProcessingException, JAXBException {
    final CopyPipelet pipelet = new CopyPipelet();
    pipelet.configure(configuration);
    return pipelet;
  }

  /**
   * Test copy attribute to attribute.
   * 
   * @throws Exception
   *           test failed
   */
  public void testCopyAttributeToAttribute() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttributeCopy());
    final String id = createBlackboardRecord("copy", "attribute-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue(TEXT));
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    final String output = anyMap.getStringValue(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(TEXT, output);
  }

  /**
   * Test copy attribute to attachment.
   * 
   * @throws Exception
   *           test failed
   */
  public void testCopyAttributeToAttachment() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttributeAttachmentCopy());
    final String id = createBlackboardRecord("copy", "attribute-attachment");
    final AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue(TEXT));
    pipelet.process(getBlackboard(), new String[] { id });
    final byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals(TEXT, new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
  }

  /**
   * Test copy attachment to attribute.
   * 
   * @throws Exception
   *           test failed
   */
  public void testCopyAttachmentToAttribute() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttachmentAttributeCopy());
    final String id = createBlackboardRecord("copy", "attachment-attribute");
    final byte[] bytes = TEXT.getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), bytes);
    pipelet.process(getBlackboard(), new String[] { id });
    final AnyMap anyMap = getBlackboard().getMetadata(id);
    final String output = anyMap.getStringValue(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(TEXT, output);
  }

  /**
   * Test copy attachment to attachment.
   * 
   * @throws Exception
   *           test failed
   */
  public void testCopyAttachmentToAttachment() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttachmentAttachmentCopy());
    final String id = createBlackboardRecord("copy", "attachment-attachment");
    final byte[] bytes = TEXT.getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), bytes);
    pipelet.process(getBlackboard(), new String[] { id });
    final byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals(TEXT, new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
  }

  /**
   * Test move attribute to attribute.
   * 
   * @throws Exception
   *           test failed
   */
  public void testMoveAttributeToAttribute() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttributeMove());
    final String id = createBlackboardRecord("move", "attribute-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue(TEXT));
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    final String output = anyMap.getStringValue(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(TEXT, output);
    final String input = anyMap.getStringValue(pipelet.getInputName());
    assertNull(input);
  }

  /**
   * Test move attribute to attachment.
   * 
   * @throws Exception
   *           test failed
   */
  public void testMoveAttributeToAttachment() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttributeAttachmentMove());
    final String id = createBlackboardRecord("move", "attribute-attachment");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue(TEXT));
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    final byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals(TEXT, new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
    final String input = anyMap.getStringValue(pipelet.getInputName());
    assertNull(input);
  }

  /**
   * Test move attachment to attribute.
   * 
   * @throws Exception
   *           test failed
   */
  public void testMoveAttachmentToAttribute() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttachmentAttributeMove());
    final String id = createBlackboardRecord("move", "attachment-attribute");
    final byte[] bytes = TEXT.getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), bytes);
    pipelet.process(getBlackboard(), new String[] { id });
    final AnyMap anyMap = getBlackboard().getMetadata(id);
    final String output = anyMap.getStringValue(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(TEXT, output);
    try {
      final byte[] text = getBlackboard().getAttachment(id, pipelet.getInputName());
      fail("expected BlackboardAccessException");
    } catch (BlackboardAccessException e) {
      assertEquals("Record with id = " + id + " doesn't have the attachment [" + pipelet.getInputName() + "]",
        e.getMessage());
    }
  }

  /**
   * Test move attachment to attachment.
   * 
   * @throws Exception
   *           test failed
   */
  public void testMoveAttachmentToAttachment() throws Exception {
    final CopyPipelet pipelet = createPipelet(createConfigurationForAttachmentAttachmentMove());
    final String id = createBlackboardRecord("move", "attachment-attachment");
    final byte[] bytes = TEXT.getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), bytes);
    pipelet.process(getBlackboard(), new String[] { id });
    byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals(TEXT, new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
    try {
      text = getBlackboard().getAttachment(id, pipelet.getInputName());
      fail("expected BlackboardAccessException");
    } catch (BlackboardAccessException e) {
      assertEquals("Record with id = " + id + " doesn't have the attachment [" + pipelet.getInputName() + "]",
        e.getMessage());
    }
  }

  /**
   * @return a configuration for a copy attribute to attribute test
   */
  private AnyMap createConfigurationForAttributeCopy() {
    final AnyMap configuration = createAttributesConfiguration();
    configuration.put("mode", "COPY");
    return configuration;
  }

  /**
   * @return a configuration for a move attribute to attribute test
   */
  private AnyMap createConfigurationForAttributeMove() {
    final AnyMap configuration = createAttributesConfiguration();
    configuration.put("mode", "MOVE");
    return configuration;
  }

  /**
   * @return a configuration for a copy attribute to attachment test
   */
  private AnyMap createConfigurationForAttributeAttachmentCopy() {
    final AnyMap configuration = createAttributesAttachmentsConfiguration();
    configuration.put("mode", "COPY");
    return configuration;
  }

  /**
   * @return a configuration for a move attribute to attachment test
   */
  private AnyMap createConfigurationForAttributeAttachmentMove() {
    final AnyMap configuration = createAttributesAttachmentsConfiguration();
    configuration.put("mode", "MOVE");
    return configuration;
  }

  /**
   * @return a configuration for a copy attachment to attribute test
   */
  private AnyMap createConfigurationForAttachmentAttributeCopy() {
    final AnyMap configuration = createAttachmentsAttributesConfiguration();
    configuration.put("mode", "COPY");
    return configuration;
  }

  /**
   * @return a configuration for a move attachment to attribute test
   */
  private AnyMap createConfigurationForAttachmentAttributeMove() {
    final AnyMap configuration = createAttachmentsAttributesConfiguration();
    configuration.put("mode", "MOVE");
    return configuration;
  }

  /**
   * @return a configuration for a copy attachment to attachment test
   */
  private AnyMap createConfigurationForAttachmentAttachmentCopy() {
    final AnyMap configuration = createAttachmentsConfiguration();
    configuration.put("mode", "COPY");
    return configuration;
  }

  /**
   * @return a configuration for a copy attachment to attachment test
   */
  private AnyMap createConfigurationForAttachmentAttachmentMove() {
    final AnyMap configuration = createAttachmentsConfiguration();
    configuration.put("mode", "MOVE");
    return configuration;
  }

}
