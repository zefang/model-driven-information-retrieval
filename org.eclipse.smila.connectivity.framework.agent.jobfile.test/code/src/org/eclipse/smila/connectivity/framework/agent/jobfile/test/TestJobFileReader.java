/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial creator
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework.agent.jobfile.test;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.net.URL;
import java.util.Collection;
import java.util.Iterator;

import javax.xml.stream.XMLStreamException;

import org.apache.commons.io.FileUtils;
import org.eclipse.smila.connectivity.framework.agent.jobfile.JobFileHandler;
import org.eclipse.smila.connectivity.framework.agent.jobfile.JobFileReader;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.pipelets.xmlprocessing.util.NullPrintWriter;
import org.eclipse.smila.processing.pipelets.xmlprocessing.util.XMLUtils;
import org.eclipse.smila.test.DeclarativeServiceTestCase;
import org.w3c.tidy.Tidy;

/**
 * The Class TestCrawler.
 */
public class TestJobFileReader extends DeclarativeServiceTestCase implements JobFileHandler {

  /**
   * Constant for the data source.
   */
  private static final String DATA_SOURCE = "testjobfile";

  /**
   * Constant for the attachment separator.
   */
  private static final String ATTACHMENT_SEPARATOR = "####";

  /**
   * the JobFileReader.
   */
  private JobFileReader _reader;

  /**
   * Add counter.
   */
  private int _addCount;

  /**
   * Delete counter.
   */
  private int _delCount;

  /**
   * Internal flag.
   */
  private boolean _advancedTest;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {    
    _reader = new JobFileReader(this, ATTACHMENT_SEPARATOR);
    _advancedTest = false;
    _addCount = 0;
    _delCount = 0;
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
  }

  /**
   * {@inheritDoc}
   * 
   * @see JobFileHandler#add(Record)
   */
  @Override
  public void add(final Record record) {
    if (_advancedTest) {
      assertRecordAdvanced(record);
    } else {
      assertRecord(record);
    }
    _addCount++;
  }

  /**
   * {@inheritDoc}
   * 
   * @see JobFileHandler#delete(Record)
   */
  @Override
  public void delete(final Record record) {
    assertNotNull(record);
    assertEquals(DATA_SOURCE, record.getSource());
    _delCount++;
  }

  /**
   * Test exceptions.
   * 
   * @throws Exception
   *           the exception
   */
  public void testConstructorExceptions() throws Exception {
    try {
      new JobFileReader(null, ATTACHMENT_SEPARATOR);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter jobFileHandler is null", e.getMessage());
    }
    try {
      new JobFileReader(this, null);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter attachmentSeparator is null", e.getMessage());
    }
    try {
      new JobFileReader(this, "");
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter attachmentSeparator is an empty String", e.getMessage());
    }
    try {
      new JobFileReader(this, ATTACHMENT_SEPARATOR, null);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter recordReader is null", e.getMessage());
    }
  }

  /**
   * Test exceptions.
   * 
   * @throws Exception
   *           the exception
   */
  public void testExceptions() throws Exception {
    try {
      _reader.readJobFile(null);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter url is null", e.getMessage());
    }

    final URL brokenUrl = new URL("file://some/nonexisting/file");
    try {
      _reader.readJobFile(brokenUrl);
      fail("expected XMLStreamException");
    } catch (XMLStreamException e) {
      assertNotNull(e);
      assertEquals("Error while loading job file " + brokenUrl, e.getMessage());
    }

    final URL url = new URL("file://configuration/data/brokenjobfile.xml");
    try {
      _reader.readJobFile(url);
      fail("expected XMLStreamException");
    } catch (XMLStreamException e) {
      assertNotNull(e);
    }

    final URL invalidUrl = new URL("file://configuration/data/invalidjobfile.xml");
    try {
      _reader.readJobFile(invalidUrl);
      fail("expected XMLStreamException");
    } catch (XMLStreamException e) {
      assertNotNull(e);
      assertEquals("Invalid document " + invalidUrl + ". Must begin with tag <JobFile>", e.getMessage());
    }
  }

  /**
   * Test JobFileReader.
   * 
   * @throws Exception
   *           the exception
   */
  public void testReader() throws Exception {
    assertEquals(0, _addCount);
    assertEquals(0, _delCount);

    final URL url = new URL("file://configuration/data/testjobfile.xml");
    _reader.readJobFile(url);

    assertEquals(1 + 2, _addCount);
    assertEquals(2, _delCount);
  }

  /**
   * Test JobFileReader with CDATA sections and encoding.
   * 
   * @throws Exception
   *           the exception
   */
  public void testReaderAdvanced() throws Exception {
    _advancedTest = true;
    assertEquals(0, _addCount);
    assertEquals(0, _delCount);

    final URL url = new URL("file://configuration/data/testjobfile2.xml");
    _reader.readJobFile(url);

    assertEquals(2, _addCount);
  }

  /**
   * Asserts the given record.
   * 
   * @param record
   *          the record
   */
  private void assertRecord(final Record record) {
    assertNotNull(record);
    if (record.getSource() != null) {
      assertEquals(DATA_SOURCE, record.getSource());
    }

    final Iterator<String> attachmentNames = record.getAttachmentNames();
    assertNotNull(attachmentNames);
    assertTrue(attachmentNames.hasNext());
    assertNotNull(attachmentNames.next());
    assertFalse(attachmentNames.hasNext());
    assertNotNull(record.getAttachment("Content"));

    assertNotNull(record.getMetadata());
    final Collection<String> attributeNames = record.getMetadata().keySet();
    final Iterator<String> iter = attributeNames.iterator();
    while (iter.hasNext()) {
      final String attributeName = iter.next();
      assertNotNull(attributeName);
      // ignore system attributes.
      if (attributeName.startsWith("_")) {
        iter.remove();
      }
    }
    assertNotNull(attributeNames);
    final int expectedNumberOfAttributes = 6;
    assertEquals(expectedNumberOfAttributes, attributeNames.size());

    assertNotNull(record.getMetadata().get("MimeType"));
    assertNotNull(record.getMetadata().get("Size"));
    assertNotNull(record.getMetadata().get("Extension"));
    assertNotNull(record.getMetadata().get("LastModifiedDate"));
    assertNotNull(record.getMetadata().get("Filename"));

    assertTrue(record.getMetadata().get("MimeType").isString());
    assertTrue(record.getMetadata().get("Size").isLong());
    assertTrue(record.getMetadata().get("Extension").isString());
    assertTrue(record.getMetadata().get("LastModifiedDate").isDateTime());
    assertTrue(record.getMetadata().get("Filename").isString());
  }

  /**
   * Asserts the given record for the advanced test. The html of attribute "Content" should be equals to the file
   * sample.html.
   * 
   * @param record
   *          the record
   */
  private void assertRecordAdvanced(final Record record) {
    assertNotNull(record);
    if (record.getSource() != null) {
      assertEquals(DATA_SOURCE, record.getSource());
    }

    assertFalse(record.hasAttachments());
    assertNotNull(record.getMetadata());
    final Collection<String> attributeNames = record.getMetadata().keySet();
    final Iterator<String> iter = attributeNames.iterator();
    while (iter.hasNext()) {
      final String attributeName = iter.next();
      assertNotNull(attributeName);
      // ignore system attributes.
      if (attributeName.startsWith("_")) {
        iter.remove();
      }
    }
    assertNotNull(attributeNames);
    final int expectedNumberOfAttributes = 3;
    assertEquals(expectedNumberOfAttributes, attributeNames.size());

    assertNotNull(record.getMetadata().get("MimeType"));
    assertNotNull(record.getMetadata().get("LastModifiedDate"));
    assertTrue(record.getMetadata().get("MimeType").isString());
    assertTrue(record.getMetadata().get("LastModifiedDate").isDateTime());
    final String content = record.getMetadata().getStringValue("Content");
    assertNotNull(content);
    try {
      final Tidy tidy = createTidy();
      final byte[] sampleBytes = FileUtils.readFileToByteArray(new File("configuration/data/sample.html"));
      final String sampleHtml =
        XMLUtils.documentToString(tidy.parseDOM(new ByteArrayInputStream(sampleBytes), null));
      final String contentHtml =
        XMLUtils.documentToString(tidy.parseDOM(new ByteArrayInputStream(content.getBytes()), null));

      assertEquals(sampleHtml, contentHtml);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Creates a tidy instance.
   * 
   * @return the Tidy instance
   */
  private Tidy createTidy() {
    final Tidy tidy = new Tidy();
    tidy.setXHTML(false);
    tidy.setQuiet(true);
    tidy.setErrout(new NullPrintWriter());
    return tidy;
  }
}
