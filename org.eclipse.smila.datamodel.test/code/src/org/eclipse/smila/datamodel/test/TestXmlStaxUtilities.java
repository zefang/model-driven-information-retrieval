/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation.
 *******************************************************************************/

package org.eclipse.smila.datamodel.test;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.XMLStreamWriter;

import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.xml.StaxRecordReader;
import org.eclipse.smila.datamodel.xml.StaxRecordWriter;

/**
 * Test StAX transformation of Records.
 * 
 * @author jschumacher
 * 
 */
public class TestXmlStaxUtilities extends ARecordTestCase {

  /** StAX writer factory. */
  private XMLOutputFactory _outputFactory = XMLOutputFactory.newInstance();

  /** StAX reader factory. */
  private XMLInputFactory _inputFactory = XMLInputFactory.newInstance();

  /** Id Writer. */
  private StaxRecordWriter _recordWriter = new StaxRecordWriter(true);

  /** Id Reader. */
  private StaxRecordReader _recordReader = new StaxRecordReader();

  /**
   * write and read record using StAX.
   * 
   * @param record
   *          record to transform
   * @return parsed record
   * @throws Exception
   *           error in transformation
   */
  private Record writeAndRead(final Record record) throws Exception {
    final ByteArrayOutputStream out = new ByteArrayOutputStream();
    final XMLStreamWriter writer = _outputFactory.createXMLStreamWriter(out, "utf-8");
    writer.writeStartDocument("utf-8", "1.1");
    _recordWriter.writeRecord(writer, record);
    writer.writeEndDocument();
    writer.close();
    out.close();

    final String xmlRecord = out.toString("utf-8");
    System.out.println("XML Record: " + xmlRecord);

    final ByteArrayInputStream in = new ByteArrayInputStream(out.toByteArray());
    final XMLStreamReader reader = _inputFactory.createXMLStreamReader(in);
    reader.nextTag();
    final Record parsedRecord = _recordReader.readRecord(reader);
    assertNotNull(parsedRecord);
    return parsedRecord;
  }

  /**
   * write and read record using StAX.
   * 
   * @param records
   *          record to transform
   * @return parsed record
   * @throws Exception
   *           error in transformation
   */
  private List<Record> writeAndRead(final List<Record> records) throws Exception {
    final ByteArrayOutputStream out = new ByteArrayOutputStream();
    final XMLStreamWriter writer = _outputFactory.createXMLStreamWriter(out, "utf-8");
    writer.writeStartDocument("utf-8", "1.1");
    _recordWriter.writeRecordList(writer, records);
    writer.writeEndDocument();
    writer.close();
    out.close();

    final String xmlRecord = out.toString("utf-8");
    System.out.println("XML Record List: " + xmlRecord);

    final ByteArrayInputStream in = new ByteArrayInputStream(out.toByteArray());
    final XMLStreamReader reader = _inputFactory.createXMLStreamReader(in);
    reader.nextTag(); // to Id tag.
    final List<Record> parsedRecords = _recordReader.readRecords(reader);
    assertNotNull(parsedRecords);
    return parsedRecords;
  }

  /**
   * just a test to check the record comparison code...
   * 
   * @throws ParseException
   *           error
   */
  public void testCheck() throws ParseException {
    final Record record1 = RecordCreator.createTestRecord1();
    final Record record2 = RecordCreator.createTestRecordWithValueAttributes();
    final Record record3 = RecordCreator.createTestRecordWithMapAttributes();
    checkRecordEquality(record1, record1);
    checkRecordEquality(record2, record2);
    checkRecordEquality(record3, record3);
    checkRecordInequality(record1, record2);
    checkRecordInequality(record1, record3);
    checkRecordInequality(record2, record1);
    checkRecordInequality(record2, record3);
    checkRecordInequality(record3, record1);
    checkRecordInequality(record3, record2);

    Record modifiedRecord = RecordCreator.createTestRecord1();
    final Value value = modifiedRecord.getFactory().createStringValue("additional string value");
    final String attributeName = modifiedRecord.getMetadata().keySet().iterator().next();
    modifiedRecord.getMetadata().put(attributeName, value);
    checkRecordInequality(record1, modifiedRecord);
    checkRecordInequality(modifiedRecord, record1);

    modifiedRecord = RecordCreator.createTestRecord1();
    final Value valueModified = modifiedRecord.getFactory().createStringValue("modified string value");
    modifiedRecord.getMetadata().put(attributeName, valueModified);
    checkRecordInequality(record1, modifiedRecord);
    checkRecordInequality(modifiedRecord, record1);

    modifiedRecord = RecordCreator.createTestRecord1();
    modifiedRecord.setAttachment("additional attachment", "test".getBytes());
    checkRecordInequality(record1, modifiedRecord);
    checkRecordInequality(modifiedRecord, record1);

    modifiedRecord = RecordCreator.createTestRecord1();
    modifiedRecord.removeAttachment(modifiedRecord.getAttachmentNames().next());
    modifiedRecord.setAttachment("modified attachment", "test".getBytes());
    checkRecordInequality(record1, modifiedRecord);
    checkRecordInequality(modifiedRecord, record1);
  }

  /**
   * simple first test.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testRecord1() throws Exception {
    final Record testRecord = RecordCreator.createTestRecord1();
    final Record resultRecord = writeAndRead(testRecord);
    checkRecordEquality(testRecord, resultRecord);
  }

  /**
   * test record with some literal attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testRecordLiteralAttributes() throws Exception {
    final Record testRecord = RecordCreator.createTestRecordWithValueAttributes();
    final Record resultRecord = writeAndRead(testRecord);
    checkRecordEquality(testRecord, resultRecord);
  }

  /**
   * test record with some literal attributes.
   * 
   * @throws Exception
   *           test fails
   */
  public void testRecordObjectAttributes() throws Exception {
    final Record testRecord = RecordCreator.createTestRecordWithMapAttributes();
    final Record resultRecord = writeAndRead(testRecord);
    checkRecordEquality(testRecord, resultRecord);
  }

  /**
   * test list of records.
   * 
   * @throws Exception
   *           test fails
   */
  public void testRecordList() throws Exception {
    final List<Record> testRecords = new ArrayList<Record>();
    testRecords.add(RecordCreator.createTestRecord1());
    testRecords.add(RecordCreator.createTestRecordWithValueAttributes());
    testRecords.add(RecordCreator.createTestRecordWithMapAttributes());
    final List<Record> resultRecords = writeAndRead(testRecords);
    assertEquals(testRecords.size(), resultRecords.size());
    for (int i = 0; i < testRecords.size(); i++) {
      checkRecordEquality(testRecords.get(i), resultRecords.get(i));
    }
  }
}
