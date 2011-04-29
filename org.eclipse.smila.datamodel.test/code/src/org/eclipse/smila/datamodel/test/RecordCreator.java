/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.test;

import java.text.ParseException;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.ValueFormatHelper;

/**
 * utility class to create record objects for tests.
 * 
 * @author jschumacher
 * 
 */
public final class RecordCreator {

  /** Factory to create test records. */
  public static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /** helper for parsing date/time values. */
  private static final ValueFormatHelper VALUE_FORMAT_HELPER = new ValueFormatHelper();

  /**
   * private constructor to avoid instantiation.
   */
  private RecordCreator() {
  }

  /**
   * Creates the test record.
   * 
   * @param dataSourceID
   *          the data source id
   * @param keyvalue
   *          the keyvalue
   * 
   * @return the record
   */
  public static Record createTestRecord(final String dataSourceID, final String keyvalue) {
    final Record record = FACTORY.createRecord();
    record.setId(dataSourceID + ":" + keyvalue);
    record.setSource(dataSourceID);
    final AnyMap metadata = record.getMetadata();

    final AnySeq attribute = FACTORY.createAnySeq();
    attribute.add(FACTORY.createStringValue("my first value"));
    attribute.add(FACTORY.createLongValue(42));
    attribute.add(FACTORY.createDoubleValue(Math.PI));
    attribute.add(FACTORY.createBooleanValue(Boolean.TRUE));
    metadata.put("attribute1", attribute);

    return record;
  }

  /**
   * @return a test record.
   * @throws ParseException
   *           error creating date values...
   */
  public static Record createTestRecord1() throws ParseException {
    final Record record = FACTORY.createRecord();
    record.setId("testRecord1");
    final AnyMap metadata = record.getMetadata();

    final AnySeq attribute = FACTORY.createAnySeq();
    attribute.add(FACTORY.createStringValue("my first value"));
    attribute.add(FACTORY.createLongValue(42));
    attribute.add(FACTORY.createDoubleValue(Math.PI));
    attribute.add(FACTORY.createBooleanValue(Boolean.TRUE));
    attribute.add(FACTORY.createDateValue(VALUE_FORMAT_HELPER.parseDate("2000-01-01")));
    attribute.add(FACTORY.createDateTimeValue(VALUE_FORMAT_HELPER.parseDateTime("2000-01-01T12:34:56+0100")));
    metadata.put("attribute1", attribute);

    final AnySeq annotation = FACTORY.createAnySeq();
    annotation.add(FACTORY.createStringValue("my first anonymous value"));
    annotation.add(FACTORY.createStringValue("my second anonymous value"));
    final AnyMap namedValues = FACTORY.createAnyMap();
    namedValues.put("name1", FACTORY.createStringValue("my first named value"));
    namedValues.put("name2", FACTORY.createStringValue("my second named value"));
    annotation.add(namedValues);
    metadata.put("annotation1", annotation);

    record.setAttachment("attachment1", "my very first attachment".getBytes());

    return record;
  }

  /**
   * @return a test record with single and multi-value attributes, no attachments.
   * @throws ParseException
   *           error creating date values...
   */
  public static Record createTestRecordWithValueAttributes() throws ParseException {
    final Record record = FACTORY.createRecord();
    record.setId("createRecordLiteralAttributes");
    final AnyMap metadata = record.getMetadata();

    metadata.put("single value", FACTORY.createStringValue("value"));

    final AnySeq multiValue = FACTORY.createAnySeq();
    multiValue.add(FACTORY.createStringValue("first value"));
    multiValue.add(FACTORY.createStringValue("second value"));
    multiValue.add(FACTORY.createStringValue("third value"));
    metadata.put("multi value", multiValue);

    metadata.put("int value", FACTORY.createLongValue(2));
    metadata.put("fp value", FACTORY.createDoubleValue(Math.PI));
    metadata.put("bool value", FACTORY.createBooleanValue(true));
    metadata.put("date value", FACTORY.createDateValue(VALUE_FORMAT_HELPER.parseDate("2000-01-01")));
    metadata.put("datetime value",
      FACTORY.createDateTimeValue(VALUE_FORMAT_HELPER.parseDateTime("2000-01-01T12:34:56+0100")));

    return record;
  }

  /**
   * @return a record with several map attributes, no attachments.
   */
  public static Record createTestRecordWithMapAttributes() {
    final Record record = FACTORY.createRecord();
    record.setId("createRecordObjectAttributes");
    final AnyMap metadata = record.getMetadata();

    AnyMap subobject = FACTORY.createAnyMap();
    subobject.put("value", FACTORY.createStringValue("level 1.1 value"));
    metadata.put("level 1.1", subobject);

    subobject = FACTORY.createAnyMap();
    final AnyMap subsubobject = FACTORY.createAnyMap();
    subsubobject.put("value", FACTORY.createStringValue("level 2.2 value"));
    subobject.put("level 2.2", subsubobject);
    metadata.put("level 2.1", subobject);

    final AnyMap subobject1 = FACTORY.createAnyMap();
    subobject1.put("value", FACTORY.createStringValue("multi object 1 value"));
    final AnyMap subobject2 = FACTORY.createAnyMap();
    subobject2.put("value", FACTORY.createStringValue("multi object 2 value"));
    final AnySeq multiObject = FACTORY.createAnySeq();
    multiObject.add(subobject1);
    multiObject.add(subobject2);
    metadata.put("multi object", multiObject);

    return record;
  }

}
