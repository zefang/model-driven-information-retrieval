/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:  Juergen Schumacher (empolis GmbH) - initial API and implementation
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import java.io.InputStream;
import java.util.List;

import javax.xml.bind.JAXBException;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.HtmlToTextPipelet;
import org.eclipse.smila.utils.config.ConfigUtils;

/**
 * 
 * @author jschumacher
 * 
 */
public class TestHtmlToTextPipelet extends ATransformationPipeletTest {
  /**
   * bundle name for config loading.
   */
  public static final String CONFIG_BUNDLE = "org.eclipse.smila.processing.pipelets";

  /**
   * name of configuration to work on attachments.
   */
  public static final String CONFIG_ATTACHMENT = "html-to-text-by-attachment.xml";

  /**
   * createAttributesConfiguration name of configuration to work on attributes.
   */
  public static final String CONFIG_ATTRIBUTE = "html-to-text-by-attribute.xml";

  /**
   * name of configuration that removes header tags.
   */
  public static final String CONFIG_REMOVE = "html-to-text-remove-headers.xml";

  /**
   * name of configuration that extracts metadata.
   */
  public static final String CONFIG_METADATA = "html-to-text-metadata.xml";

  /**
   * name of directory containing test html files.
   */
  public static final String CONFIG_DATADIR = "html";

  /** The log. */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * create and configure HtmlToText pipelet.
   * 
   * @param configuration
   *          {@link AnyMap} with configuration
   * @return configured pipelet.
   * @throws ProcessingException
   *           error configuring pipelet
   * @throws JAXBException
   *           error loading config
   */
  public HtmlToTextPipelet createPipelet(final AnyMap configuration) throws ProcessingException, JAXBException {
    final HtmlToTextPipelet pipelet = new HtmlToTextPipelet();
    pipelet.configure(configuration);
    return pipelet;
  }

  /**
   * a very simple first test with attributes.
   * 
   * @throws Exception
   *           test failed
   */
  public void testHelloWorldAttribute() throws Exception {
    final HtmlToTextPipelet pipelet = createPipelet(createAttributesConfiguration());
    final String id = createBlackboardRecord("htmltotext", "hello-world-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue("<html>Hello World!</html>"));
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    final AnySeq output = anyMap.getSeq(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(1, output.size());
    assertEquals("Hello World!", output.getStringValue(0));
  }

  /**
   * a very simple first test with attributes with HTML entities.
   * 
   * @throws Exception
   *           test failed
   */
  public void testHelloWorldUmlautAttribute() throws Exception {
    final HtmlToTextPipelet pipelet = createPipelet(createAttributesConfiguration());
    final String id = createBlackboardRecord("htmltotext", "hello-world-attribute");
    AnyMap anyMap = getBlackboard().getMetadata(id);
    anyMap
      .put(pipelet.getInputName(), anyMap.getFactory().createStringValue("<html>H&auml;llo W&ouml;rld!</html>"));
    pipelet.process(getBlackboard(), new String[] { id });
    anyMap = getBlackboard().getMetadata(id);
    final AnySeq output = anyMap.getSeq(pipelet.getOutputName());
    assertNotNull(output);
    assertEquals(1, output.size());
    assertEquals("H\u00e4llo W\u00f6rld!", output.getStringValue(0));
  }

  /**
   * a very simple first test with attachments. storeResults
   * 
   * @throws Exception
   *           test failed
   */
  public void testHelloWorldAttachment() throws Exception {
    final HtmlToTextPipelet pipelet = createPipelet(createAttachmentsConfiguration());
    final String id = createBlackboardRecord("htmltotext", "hello-world-attachment");
    final byte[] html = "<html>Hello World!</html>".getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    final byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals("Hello World!", new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
  }

  /**
   * a very simple first test with attachments with HTML entities.
   * 
   * @throws Exception
   *           test failed
   */
  public void testHelloWorldUmlautAttachment() throws Exception {
    final HtmlToTextPipelet pipelet = createPipelet(createAttachmentsConfiguration());
    final String id = createBlackboardRecord("htmltotext", "hello-world-attachment");
    final byte[] html = "<html>H&auml;llo W&ouml;rld!</html>".getBytes(ATransformationPipelet.ENCODING_ATTACHMENT);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    final byte[] text = getBlackboard().getAttachment(id, pipelet.getOutputName());
    assertEquals("H\u00e4llo W\u00f6rld!", new String(text, ATransformationPipelet.ENCODING_ATTACHMENT));
  }

  /**
   * a test with real umlauts.
   */
  public void testCorrectMetaEncodingAttachment() throws Exception {
    final AnyMap configuration = createAttachmentsConfiguration();
    final String id = createBlackboardRecord("htmltotext", "default-encoding-attachment");
    final byte[] html =
      "<html><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' />H\u00e4llo W\u00f6rld!</html>"
        .getBytes("iso-8859-1");
    HtmlToTextPipelet pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    String text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertEquals("H\u00e4llo W\u00f6rld!", text);

    configuration.put("defaultEncoding", "utf-8");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertEquals("H\u00e4llo W\u00f6rld!", text);
  }

  /**
   * a test with real umlauts.
   */
  public void testNoMetaEncodingUtfAttachment() throws Exception {
    final AnyMap configuration = createAttachmentsConfiguration();
    final String id = createBlackboardRecord("htmltotext", "default-encoding-attachment");
    final byte[] html = "<html>H\u00e4llo W\u00f6rld!</html>".getBytes("utf-8");
    HtmlToTextPipelet pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    String text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));

    configuration.put("defaultEncoding", "utf-8");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertEquals("H\u00e4llo W\u00f6rld!", text);

    configuration.put("defaultEncoding", "iso-8859-1");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));
  }

  /**
   * a test with real umlauts.
   */
  public void testIncorrectMetaEncodingAttachment() throws Exception {
    final AnyMap configuration = createAttachmentsConfiguration();
    final String id = createBlackboardRecord("htmltotext", "default-encoding-attachment");
    final byte[] html =
      "<html><meta http-equiv='Content-Type' content='text/html; charset=utf-8' />H\u00e4llo W\u00f6rld!</html>"
        .getBytes("iso-8859-1");
    HtmlToTextPipelet pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    String text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));

    configuration.put("defaultEncoding", "iso-8859-1");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));

    configuration.put("defaultEncoding", "utf-8");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));
  }

  /**
   * a test with real umlauts.
   */
  public void testIsoDefaultEncodingAttachment() throws Exception {
    final AnyMap configuration = createAttachmentsConfiguration();
    final String id = createBlackboardRecord("htmltotext", "default-encoding-attachment");
    final byte[] html = "<html>H\u00e4llo W\u00f6rld!</html>".getBytes("iso-8859-1");

    HtmlToTextPipelet pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    String text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertEquals("H\u00e4llo W\u00f6rld!", text);

    configuration.put("defaultEncoding", "iso-8859-1");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertEquals("H\u00e4llo W\u00f6rld!", text);

    configuration.put("defaultEncoding", "utf-8");
    pipelet = createPipelet(configuration);
    getBlackboard().setAttachment(id, pipelet.getInputName(), html);
    pipelet.process(getBlackboard(), new String[] { id });
    text =
      new String(getBlackboard().getAttachment(id, pipelet.getOutputName()),
        ATransformationPipelet.ENCODING_ATTACHMENT);
    assertFalse("H\u00e4llo W\u00f6rld!".equals(text));
  }

  /**
   * a test of configurable content removing.
   * 
   * @throws Exception
   *           test failed
   */
  public void testRemoveHeaders() throws Exception {
    final HtmlToTextPipelet pipeletKeep = createPipelet(createAttachmentsConfiguration());
    final HtmlToTextPipelet pipeletRemove = createPipelet(createConfigurationForRemoveHeaders());

    String id = createBlackboardRecord("htmltotext", "keep-headers");
    getBlackboard().setAttachmentFromStream(id, pipeletKeep.getInputName(),
      ConfigUtils.getConfigStream(CONFIG_BUNDLE, CONFIG_DATADIR + "/headers.html"));
    pipeletKeep.process(getBlackboard(), new String[] { id });
    final byte[] textBytes = getBlackboard().getAttachment(id, pipeletKeep.getOutputName());
    assertNotNull(textBytes);
    final String textString = new String(textBytes, ATransformationPipelet.ENCODING_ATTACHMENT);
    assertTrue(textString.indexOf("Hello World!") > 0);
    assertTrue(textString.indexOf("Hello Earth!") > 0);
    assertTrue(textString.indexOf("Hello Europe!") > 0);
    assertTrue(textString.indexOf("Hello!") > 0);

    id = createBlackboardRecord("htmltotext", "remove-headers");
    getBlackboard().setAttachmentFromStream(id, pipeletKeep.getInputName(),
      ConfigUtils.getConfigStream(CONFIG_BUNDLE, CONFIG_DATADIR + "/headers.html"));
    pipeletRemove.process(getBlackboard(), new String[] { id });
    final AnyMap anyMap = getBlackboard().getMetadata(id);
    final AnySeq output = anyMap.getSeq(pipeletRemove.getOutputName());
    assertNotNull(output);
    assertEquals(1, output.size());
    assertEquals("Hello!", output.getStringValue(0).trim());
  }

  /**
   * a test of metadata extraction.
   * 
   * @throws Exception
   *           test failed
   */
  public void testExtractMetadata() throws Exception {
    final HtmlToTextPipelet pipeletKeep = createPipelet(createConfigurationForMetadata());

    final String id = createBlackboardRecord("htmltotext", "extract-metadata");
    getBlackboard().setAttachmentFromStream(id, pipeletKeep.getInputName(),
      ConfigUtils.getConfigStream(CONFIG_BUNDLE, CONFIG_DATADIR + "/meta.html"));
    pipeletKeep.process(getBlackboard(), new String[] { id });
    final AnyMap anyMap = getBlackboard().getMetadata(id);
    AnySeq output = anyMap.getSeq(pipeletKeep.getOutputName());
    assertNotNull(output);
    assertEquals(1, output.size());
    assertEquals("Hello World!", output.getStringValue(0).trim());

    output = anyMap.getSeq("keywords");
    assertNotNull(output);
    assertEquals(1, output.size());
    assertEquals("cat", output.getStringValue(0).trim());

    final AnySeq authorsSeq = anyMap.getSeq("authors");
    assertEquals(3, authorsSeq.size());
    assertEquals("me", authorsSeq.getStringValue(0));
    assertEquals("you", authorsSeq.getStringValue(1));
    assertEquals("boo", authorsSeq.getStringValue(2));
  }

  /**
   * test files in configuration/data directory using attributes. no semantic tests, just see if some problematic
   * documents are processed without error.
   * 
   * @throws Exception
   *           test failed
   */
  public void testDataDirAttribute() throws Exception {

    final HtmlToTextPipelet pipelet = createPipelet(createAttributesConfiguration());
    final List<String> htmlfiles = ConfigUtils.getConfigEntries(CONFIG_BUNDLE, CONFIG_DATADIR);
    for (final String filename : htmlfiles) {
      if (!filename.startsWith(".")) { // exclude .svn directory.
        final String id = createBlackboardRecord("htmltotext", filename);
        final InputStream htmlStream = ConfigUtils.getConfigStream(CONFIG_BUNDLE, CONFIG_DATADIR + "/" + filename);
        final String htmlString = IOUtils.toString(htmlStream, ATransformationPipelet.ENCODING_ATTACHMENT);
        AnyMap anyMap = getBlackboard().getMetadata(id);
        anyMap.put(pipelet.getInputName(), anyMap.getFactory().createStringValue(htmlString));
        pipelet.process(getBlackboard(), new String[] { id });
        anyMap = getBlackboard().getMetadata(id);
        final AnySeq output = anyMap.getSeq(pipelet.getOutputName());
        assertNotNull(output);
        assertEquals(1, output.size());
        final String textString = output.getStringValue(0);
        assertNotNull(filename + ": null result", textString);
        _log.info(filename + ": " + textString);
      }
    }
  }

  /**
   * test files in configuration/data directory using attachments. no semantic tests, just see if some problematic
   * documents are processed without error.
   * 
   * @throws Exception
   *           test failed
   */
  public void testDataDirAttachment() throws Exception {
    final HtmlToTextPipelet pipelet = createPipelet(createAttachmentsConfiguration());
    final List<String> htmlfiles = ConfigUtils.getConfigEntries(CONFIG_BUNDLE, CONFIG_DATADIR);
    for (final String filename : htmlfiles) {
      if (!filename.startsWith(".")) { // exclude .svn directory.
        final String id = createBlackboardRecord("htmltotext", filename);
        final InputStream htmlStream = ConfigUtils.getConfigStream(CONFIG_BUNDLE, CONFIG_DATADIR + "/" + filename);
        getBlackboard().setAttachmentFromStream(id, pipelet.getInputName(), htmlStream);
        pipelet.process(getBlackboard(), new String[] { id });
        final byte[] textBytes = getBlackboard().getAttachment(id, pipelet.getOutputName());
        assertNotNull(filename + ": null result", textBytes);
        final String textString = new String(textBytes, ATransformationPipelet.ENCODING_ATTACHMENT);
        _log.info(filename + ": " + textString);
      }
    }
  }

  /**
   * @return a configuration for a remove header test
   */
  private AnyMap createConfigurationForRemoveHeaders() {
    final AnyMap configuration = createAttachmentsAttributesConfiguration();
    configuration.put("removeContentTags", "h1,h2,h3,h4");
    return configuration;
  }

  /**
   * @return a configuration for a metadata test
   */
  private AnyMap createConfigurationForMetadata() {
    final AnyMap configuration = createAttachmentsAttributesConfiguration();
    configuration.put("meta:author", "authors");
    configuration.put("meta:keywords", "keywords");
    return configuration;
  }
}
