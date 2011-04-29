/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.recordstorage.test;

import java.util.Date;
import java.util.Iterator;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.recordstorage.RecordStorage;
import org.eclipse.smila.recordstorage.RecordStorageException;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * The Class TestRecordStore.
 */
public class TestRecordStorage extends DeclarativeServiceTestCase {

  /**
   * Constant for attribute Title.
   */
  public static final String ATT_TITLE = "Title";

  /**
   * Constant for attribute Date.
   */
  public static final String ATT_DATE = "Date";

  /**
   * Constant for attribute Date.
   */
  public static final String ATT_SIZE = "Size";

  /**
   * Constant for attachment Text.
   */
  public static final String ATTACHMENT_TEXT = "Content";

  /**
   * Constant for annotation globalAnnotation.
   */
  public static final String ANON_GLOBAL = "globalAnnotation";

  /**
   * Constant for annotation value value_1.
   */
  public static final String ANON_VALUE_1 = "value_1";

  /**
   * Constant for annotation titleAnnotation.
   */
  public static final String ANON_TITLE = "titleAnnotation";

  /**
   * Constant for annotation value value_2.
   */
  public static final String ANON_VALUE_2 = "value_2";

  /**
   * record factory for creating records after reading.
   */
  private static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /** the RecordStore. */
  private RecordStorage _recordStorage;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    _recordStorage = getService(RecordStorage.class);
    assertNotNull(_recordStorage);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
    _recordStorage = null;
  }

  /**
   * Test add and delete document.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testCreateLoadDelete() throws Exception {
    final String idValue = "12345";
    final String source = "testDataSource";
    final String title = "test title";
    final String text = "test text";
    final int size = 666;
    final Date date = new Date(System.currentTimeMillis());
    final Record record = createRecord(idValue, source, title, date, text, size);

    assertFalse(_recordStorage.existsRecord(idValue));
    _recordStorage.storeRecord(record);
    assertTrue(_recordStorage.existsRecord(idValue));

    Record loadedRecord = _recordStorage.loadRecord(idValue);
    assertNotNull(loadedRecord);
    assertEquals(record.getId(), loadedRecord.getId());
    assertEquals(record.getSource(), loadedRecord.getSource());
    assertEquals(record.getMetadata().get(ATT_TITLE), loadedRecord.getMetadata().get(ATT_TITLE));
    assertEquals(record.getMetadata().get(ATT_DATE), loadedRecord.getMetadata().get(ATT_DATE));
    assertEquals(record.getMetadata().get(ATT_SIZE), loadedRecord.getMetadata().get(ATT_SIZE));
    assertTrue(record.hasAttachment(ATTACHMENT_TEXT));

    _recordStorage.removeRecord(idValue);
    loadedRecord = _recordStorage.loadRecord(idValue);
    assertNull(loadedRecord);
  }

  /**
   * Test modification of a Record.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testModify() throws Exception {
    final String idValue = "0815";
    final String source = "testDataSource";
    final String title = "test title";
    final String text = "test text";
    final int size = 666;
    final Date date = new Date(System.currentTimeMillis());
    final Record record = createRecord(idValue, source, title, date, text, size);

    assertFalse(_recordStorage.existsRecord(idValue));
    _recordStorage.storeRecord(record);
    assertTrue(_recordStorage.existsRecord(idValue));

    Record loadedRecord = _recordStorage.loadRecord(idValue);
    assertNotNull(loadedRecord);
    assertEquals(record.getId(), loadedRecord.getId());
    assertEquals(record.getSource(), loadedRecord.getSource());
    assertEquals(record.getMetadata().get(ATT_TITLE), loadedRecord.getMetadata().get(ATT_TITLE));
    assertEquals(record.getMetadata().get(ATT_DATE), loadedRecord.getMetadata().get(ATT_DATE));
    assertEquals(record.getMetadata().get(ATT_SIZE), loadedRecord.getMetadata().get(ATT_SIZE));
    assertTrue(loadedRecord.hasAttachment(ATTACHMENT_TEXT));

    // modify record, change size, remove date
    record.getMetadata().remove(ATT_DATE);
    record.getMetadata().put(ATT_SIZE, FACTORY.createLongValue(999));
    _recordStorage.storeRecord(record);

    loadedRecord = _recordStorage.loadRecord(idValue);
    assertNotNull(loadedRecord);
    assertEquals(record.getId(), loadedRecord.getId());
    assertEquals(record.getSource(), loadedRecord.getSource());
    assertEquals(record.getMetadata().get(ATT_TITLE), loadedRecord.getMetadata().get(ATT_TITLE));
    assertEquals(record.getMetadata().get(ATT_SIZE), loadedRecord.getMetadata().get(ATT_SIZE));
    assertFalse(loadedRecord.getMetadata().containsKey(ATT_DATE));
    assertTrue(loadedRecord.hasAttachment(ATTACHMENT_TEXT));

    _recordStorage.removeRecord(idValue);
    loadedRecord = _recordStorage.loadRecord(idValue);
    assertNull(loadedRecord);
  }

  /**
   * Test loadRecords().
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testLoadRecords() throws Exception {
    final String idValue = "12345";
    final String source = "testDataSource";
    final String title = "test title";
    final String text = "test text";
    final int size = 666;
    final Date date = new Date(System.currentTimeMillis());
    final Record record = createRecord(idValue, source, title, date, text, size);
    _recordStorage.storeRecord(record);

    // create 2nd record with equal attribute values
    final Record record2 = createRecord("0815", source, title, date, text, size);
    _recordStorage.storeRecord(record2);

    // create 3rd record with equal attribute values but different source
    final Record record3 = createRecord("otherSource-0815", "otherSource", title, date, text, size);
    _recordStorage.storeRecord(record3);

    // load all records of the same source
    final Iterator<Record> sourceRecords = _recordStorage.loadRecords("testDataSource");
    assertNotNull(sourceRecords);
    int counter = 0;
    while (sourceRecords.hasNext()) {
      final Record sourceRecord = sourceRecords.next();
      assertNotNull(sourceRecord);
      assertEquals("testDataSource", sourceRecord.getSource());
      counter++;
    }
    assertEquals(2, counter);

    _recordStorage.removeRecord(idValue);
    _recordStorage.removeRecord("0815");
    _recordStorage.removeRecord("otherSource-0815");
  }

  /**
   * Test exception handling.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testExceptions() throws Exception {
    try {
      _recordStorage.loadRecord(null);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter id is null", e.getMessage());
    }

    try {
      _recordStorage.storeRecord(null);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter record is null", e.getMessage());
    }

    try {
      _recordStorage.removeRecord(null);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter id is null", e.getMessage());
    }

    try {
      _recordStorage.existsRecord(null);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter id is null", e.getMessage());
    }

    try {
      _recordStorage.loadRecords(null);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter source is null", e.getMessage());
    }

    try {
      _recordStorage.loadRecords("");
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("parameter source is an empty String", e.getMessage());
    }

    try {
      final Record record = FACTORY.createRecord();
      _recordStorage.storeRecord(record);
      fail("expected RecordStorageException");
    } catch (final RecordStorageException e) {
      assertEquals("error storing record id: null", e.getMessage());
    }
  }

  /**
   * Utility method to create Record objects used in the tests.
   * 
   * @param idValue
   *          the id value
   * @param source
   *          the data source id
   * @param title
   *          the title
   * @param date
   *          the date
   * @param text
   *          the text
   * @param size
   *          the size
   * @return a Record
   */
  public static Record createRecord(final String idValue, final String source, final String title, final Date date,
    final String text, final int size) {
    final Record record = FACTORY.createRecord();
    record.setId(idValue);
    record.setSource(source);
    final AnyMap metadata = record.getMetadata();
    if (title != null) {
      metadata.put(ATT_TITLE, FACTORY.createStringValue(title));
    }
    if (date != null) {
      metadata.put(ATT_DATE, FACTORY.createDateValue(date));
    }
    if (size >= 0) {
      metadata.put(ATT_SIZE, FACTORY.createLongValue(size));
    }
    record.setAttachment(ATTACHMENT_TEXT, text.getBytes());
    return record;
  }
}
