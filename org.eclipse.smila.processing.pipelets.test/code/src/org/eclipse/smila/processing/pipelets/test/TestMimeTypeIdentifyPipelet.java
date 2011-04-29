/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Georg Schmidt (brox IT-Solutions GmbH) - initial API and implementation (based on aperture test by DS)
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.test;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.common.mimetype.MimeTypeIdentifier;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.pipelets.MimeTypeIdentifyPipelet;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * The Class TestConnectivity.
 */
public class TestMimeTypeIdentifyPipelet extends DeclarativeServiceTestCase {

  /** the BlackboardService. */
  private Blackboard _blackboard;

  /** the MimeTypeIdentifyService. */
  private MimeTypeIdentifyPipelet _mis;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    final BlackboardFactory factory = getService(BlackboardFactory.class);
    assertNotNull("no BlackboardFactory service found.", factory);
    _blackboard = factory.createPersistingBlackboard();
    assertNotNull("no Blackboard created", _blackboard);
    final MimeTypeIdentifier mti = getService(MimeTypeIdentifier.class);
    assertNotNull("no MimeTypeIdentifier service found.", mti);
    _mis = new MimeTypeIdentifyPipelet();
    assertNotNull(_mis);

    final AnyMap configuration = _blackboard.getDataFactory().createAnyMap();
    configuration.put("FileExtensionAttribute", "FileExtension");
    configuration.put("MetaDataAttribute", "MetaData");
    configuration.put("MimeTypeAttribute", "MimeType");
    configuration.put("outputName", "text");
    _mis.configure(configuration);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
    _blackboard = null;
    _mis = null;
  }

  /**
   * Test the process method with a known extension.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testProcess() throws Exception {
    final String idValue = "testId";
    final String content = "This is a simple test document. It contains no special format.";
    final String extension = "txt";
    final String expectedMimeType = "text/plain";

    final Record record = createRecord(idValue, content, extension, null);
    _blackboard.setRecord(record);

    final String[] recordIds = new String[] { record.getId() };
    final String[] result = _mis.process(_blackboard, recordIds);
    assertNotNull(result);
    assertEquals(recordIds.length, result.length);

    final AnyMap anyMap = _blackboard.getMetadata(record.getId());
    final String outputText = anyMap.getStringValue("MimeType");
    assertNotNull(outputText);
    assertEquals(expectedMimeType, outputText);
  }

  /**
   * Test the process method with an unknown extension.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testProcessUnknownExtension() throws Exception {
    final String idValue = "testId";
    final String content = "This is a simple test document. It contains no special format.";
    final String extension = "dummy";

    final Record record = createRecord(idValue, content, extension, null);
    _blackboard.setRecord(record);

    final String[] recordIds = new String[] { record.getId() };
    final String[] result = _mis.process(_blackboard, recordIds);
    assertNotNull(result);
    assertEquals(recordIds.length, result.length);

    final AnyMap anyMap = _blackboard.getMetadata(record.getId());
    final String outputText = anyMap.getStringValue("MimeType");
    assertNull(outputText);
  }

  /**
   * Test the process method without an extension but with metadata.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testProcessMetadata() throws Exception {
    final String idValue = "testId";
    final String content = "This is a simple test document. It contains no special format.";
    final String expectedMimeType = "text/plain";
    final ArrayList<String> metadata = new ArrayList<String>();
    metadata.add("someproperty:somevalue");
    metadata.add("someotherproperty:somedifferentvalue");
    metadata.add("Content-Type:" + expectedMimeType + ";charset=UTF-8");
    metadata.add("yap:yav");

    final Record record = createRecord(idValue, content, null, metadata);
    _blackboard.setRecord(record);

    final String[] recordIds = new String[] { record.getId() };
    final String[] result = _mis.process(_blackboard, recordIds);
    assertNotNull(result);
    assertEquals(recordIds.length, result.length);

    final AnyMap anyMap = _blackboard.getMetadata(record.getId());
    final String outputText = anyMap.getStringValue("MimeType");
    assertNotNull(outputText);
    assertEquals(expectedMimeType, outputText);
  }

  /**
   * Creates a Record object for testing.
   * 
   * @param idValue
   *          the idValue
   * @param content
   *          the content
   * @param extension
   *          the file extension
   * @param metadata
   *          the metadata
   * @return a Record
   * @throws UnsupportedEncodingException
   *           if any error occurs
   */
  private Record createRecord(String idValue, String content, String extension, List<String> metadata)
    throws UnsupportedEncodingException {
    final String id = "testDataSource:" + idValue;

    final Record record = _blackboard.create(id);
    final AnyMap anyMap = record.getMetadata();

    if (extension != null) {
      anyMap.put("FileExtension", extension);
    }

    if (metadata != null) {
      final AnySeq sequence = _blackboard.getDataFactory().createAnySeq();
      for (final String stringValue : metadata) {
        sequence.add(stringValue);
      }
      anyMap.put("MetaData", sequence);
    }
    record.setAttachment("Content", content.getBytes());
    return record;
  }
}
