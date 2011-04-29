/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;

/**
 * Test cases for the default DataFactory.
 */
public class TestDefaultDataFactory extends TestCase {

  /**
   * The DataFactory under test.
   */
  private DataFactory _dataFactory;

  /** {@inheritDoc} */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    _dataFactory = DataFactoryCreator.createDefaultFactory();
  }

  /** {@inheritDoc} */
  @Override
  protected void tearDown() throws Exception {
    super.tearDown();
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createRecord()}.
   */
  public void testCreateRecord() {
    final Record record = _dataFactory.createRecord();
    assertNotNull(record);
    assertNull(record.getId());
    assertNull(record.getSource());
    assertNotNull(record.getMetadata());
    assertTrue(record.getMetadata().isEmpty());
    assertTrue(record.getMetadata().isMap());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createRecord(java.lang.String)}.
   */
  public void testCreateRecordString() {
    final Record record = _dataFactory.createRecord("id");
    assertNotNull(record);
    assertEquals("id", record.getId());
    assertNull(record.getSource());
    assertNotNull(record.getMetadata());
    assertNotNull(record.getMetadata().get("_recordid"));
    assertTrue(record.getMetadata().isMap());
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createRecord(java.lang.String, java.lang.String)}.
   */
  public void testCreateRecordStringString() {
    final Record record = _dataFactory.createRecord("id", "source");
    assertNotNull(record);
    assertEquals("id", record.getId());
    assertEquals("source", record.getSource());
    assertNotNull(record.getMetadata());
    assertNotNull(record.getMetadata().get("_recordid"));
    assertNotNull(record.getMetadata().get("_source"));
    assertTrue(record.getMetadata().isMap());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createAnyMap()}.
   */
  public void testCreateAnyMap() {
    final AnyMap anySeq = _dataFactory.createAnyMap();
    assertEquals(0, anySeq.size());
    assertEquals(ValueType.MAP, anySeq.getValueType());
    assertTrue(anySeq.isMap());
    assertFalse(anySeq.isSeq());
    assertFalse(anySeq.isString());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createAnySeq()}.
   */
  public void testCreateAnySeq() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    assertEquals(0, anySeq.size());
    assertEquals(ValueType.SEQ, anySeq.getValueType());
    assertTrue(anySeq.isSeq());
    assertFalse(anySeq.isMap());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createStringValue(java.lang.String)}
   * .
   */
  public void testCreateStringValue() {
    final String inValue = "in string";
    final Value value = _dataFactory.createStringValue(inValue);
    assertEquals(ValueType.STRING, value.getValueType());
    assertEquals(inValue, value.asString());
    assertTrue(value.isString());
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createBooleanValue(java.lang.Boolean)}.
   */
  public void testCreateBooleanValue() {
    final Boolean inValue = Boolean.TRUE;
    final Value value = _dataFactory.createBooleanValue(inValue);
    assertEquals(ValueType.BOOLEAN, value.getValueType());
    assertEquals(inValue, value.asBoolean());
    assertTrue(value.isBoolean());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createLongValue(java.lang.Long)}.
   */
  public void testCreateLongValueLong() {
    final Long inValue = 314L;
    final Value value = _dataFactory.createLongValue(inValue);
    assertEquals(ValueType.LONG, value.getValueType());
    assertEquals(inValue, value.asLong());
    assertTrue(value.isLong());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createLongValue(int)}.
   */
  public void testCreateLongValueInt() {
    final Integer inValue = 314;
    final Value value = _dataFactory.createLongValue(inValue.intValue());
    assertEquals(ValueType.LONG, value.getValueType());
    assertEquals(inValue.longValue(), value.asLong().longValue());
    assertTrue(value.isLong());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createDoubleValue(java.lang.Double)}
   * .
   */
  public void testCreateDoubleValueDouble() {
    final Double inValue = 3.14d;
    final Value value = _dataFactory.createDoubleValue(inValue);
    assertEquals(ValueType.DOUBLE, value.getValueType());
    assertEquals(inValue, value.asDouble());
    assertTrue(value.isDouble());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createDoubleValue(float)}.
   */
  public void testCreateDoubleValueFloat() {
    final Float inValue = 3.14f;
    final Value value = _dataFactory.createDoubleValue(inValue.floatValue());
    assertEquals(ValueType.DOUBLE, value.getValueType());
    assertTrue(inValue - 0.01 < value.asDouble() && inValue + 0.01 > value.asDouble());
    assertTrue(value.isDouble());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createDateValue(java.util.Date)}.
   */
  public void testCreateDateValue() {
    final Date inValue = new Date();
    final Value value = _dataFactory.createDateValue(inValue);
    assertEquals(ValueType.DATE, value.getValueType());
    assertEquals(inValue, value.asDate());
    assertTrue(value.isDate());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#createDateTimeValue(java.util.Date)}
   * .
   */
  public void testCreateDateTimeValue() {
    final Date inValue = new Date();
    final Value value = _dataFactory.createDateTimeValue(inValue);
    assertEquals(ValueType.DATETIME, value.getValueType());
    assertEquals(inValue, value.asDateTime());
    assertTrue(value.isDateTime());
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#parseFromString(java.lang.String, java.lang.String)}
   * .
   */
  public void testParseFromString() {
    Value value = _dataFactory.parseFromString("test", null);
    assertEquals(ValueType.STRING, value.getValueType());
    value = _dataFactory.parseFromString("test", "string");
    assertEquals(ValueType.STRING, value.getValueType());
    value = _dataFactory.parseFromString("test", "String");
    assertEquals(ValueType.STRING, value.getValueType());
    value = _dataFactory.parseFromString("test", "STRING");
    assertEquals(ValueType.STRING, value.getValueType());
    value = _dataFactory.parseFromString("1", "long");
    assertEquals(ValueType.LONG, value.getValueType());
    assertEquals(1, value.asLong().longValue());
    value = _dataFactory.parseFromString("-3", "long");
    assertEquals(ValueType.LONG, value.getValueType());
    assertEquals(-3, value.asLong().longValue());
    value = _dataFactory.parseFromString(String.valueOf(Long.MAX_VALUE), "LONG");
    assertEquals(ValueType.LONG, value.getValueType());
    assertEquals(Long.MAX_VALUE, value.asLong().longValue());
    value = _dataFactory.parseFromString("3.1415926535897932384626433832795", "double");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    double parsedValue = value.asDouble().doubleValue();
    assertTrue(3.14 < parsedValue && parsedValue < 3.15);
    value = _dataFactory.parseFromString("5", "double");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    parsedValue = value.asDouble().doubleValue();
    assertEquals(5.0d, parsedValue);
    value = _dataFactory.parseFromString("3.141f", "double");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    parsedValue = value.asDouble().doubleValue();
    assertTrue(3.14 < parsedValue && parsedValue < 3.15);
    value = _dataFactory.parseFromString("-3.141d", "double");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    parsedValue = value.asDouble().doubleValue();
    assertTrue(-3.14 > parsedValue && parsedValue > -3.15);
    value = _dataFactory.parseFromString("3141e-3", "Double");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    parsedValue = value.asDouble().doubleValue();
    assertTrue(3.14 < parsedValue && parsedValue < 3.15);
    value = _dataFactory.parseFromString("NaN", "DOUBLE");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    assertEquals(Double.NaN, value.asDouble());
    value = _dataFactory.parseFromString("Infinity", "DOUBLE");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    assertEquals(Double.POSITIVE_INFINITY, value.asDouble());
    value = _dataFactory.parseFromString("-Infinity", "DOUBLE");
    assertEquals(ValueType.DOUBLE, value.getValueType());
    assertEquals(Double.NEGATIVE_INFINITY, value.asDouble());
    value = _dataFactory.parseFromString("True", "boolean");
    assertEquals(ValueType.BOOLEAN, value.getValueType());
    assertEquals(Boolean.TRUE, value.asBoolean());
    value = _dataFactory.parseFromString("FaLsE", "BOOLEAN");
    assertEquals(ValueType.BOOLEAN, value.getValueType());
    assertEquals(Boolean.FALSE, value.asBoolean());
    value = _dataFactory.parseFromString("2011-03-09T11:31:00+0100", "dateTime");
    assertEquals(ValueType.DATETIME, value.getValueType());
    Calendar cal = new GregorianCalendar();
    cal.setTime(value.asDateTime());
    assertEquals(31, cal.get(Calendar.MINUTE));
    assertEquals(9, cal.get(Calendar.DAY_OF_MONTH));
    assertEquals(2011, cal.get(Calendar.YEAR));
    try {
      value = _dataFactory.parseFromString("2011-03-09T11:31:00+0100", "date");
      fail("exception expected");
    } catch (final InvalidValueTypeException ex) {
      ; // OK
    }
    value = _dataFactory.parseFromString("2011-03-09", "Date");
    assertEquals(ValueType.DATE, value.getValueType());
    cal = new GregorianCalendar();
    cal.setTime(value.asDate());
    assertEquals(0, cal.get(Calendar.MINUTE));
    assertEquals(9, cal.get(Calendar.DAY_OF_MONTH));
    assertEquals(2, cal.get(Calendar.MONTH));
    assertEquals(2011, cal.get(Calendar.YEAR));

    try {
      _dataFactory.parseFromString("x", "long");
      fail("exception expected");
    } catch (InvalidValueTypeException ex) {
      ex = null;
    } catch (final Exception ex) {
      fail("wrong exception caught");
    }
    try {
      _dataFactory.parseFromString("1", "int");
      fail("exception expected");
    } catch (InvalidValueTypeException ex) {
      ex = null;
    } catch (final Exception ex) {
      fail("wrong exception caught");
    }
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#parseFromObject(java.lang.Object)}.
   */
  public void testParseFromObject() {
    Value value = _dataFactory.parseFromObject("test");
    assertEquals(ValueType.STRING, value.getValueType());
    value = _dataFactory.parseFromObject(1L);
    assertEquals(ValueType.LONG, value.getValueType());
    value = _dataFactory.parseFromObject(Short.valueOf((short) 1));
    assertEquals(ValueType.LONG, value.getValueType());
    value = _dataFactory.parseFromObject(Math.PI);
    assertEquals(ValueType.DOUBLE, value.getValueType());
    value = _dataFactory.parseFromObject((float) Math.PI);
    assertEquals(ValueType.DOUBLE, value.getValueType());
    value = _dataFactory.parseFromObject(new BigDecimal(Math.PI));
    assertEquals(ValueType.DOUBLE, value.getValueType());
    value = _dataFactory.parseFromObject(true);
    assertEquals(ValueType.BOOLEAN, value.getValueType());
    value = _dataFactory.parseFromObject(new Date());
    assertEquals(ValueType.DATETIME, value.getValueType());
    try {
      _dataFactory.parseFromObject(new byte[0]);
      fail("exception expected");
    } catch (InvalidValueTypeException ex) {
      ex = null;
    } catch (final Exception ex) {
      fail("wrong exception caught");
    }
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#cloneAny(org.eclipse.smila.datamodel.Any)}.
   */
  public void testCloneAny() {
    Value source = _dataFactory.createBooleanValue(Boolean.TRUE);
    assertEquals(source, _dataFactory.cloneAny(source));
    source = _dataFactory.createStringValue("in string");
    assertEquals(source, _dataFactory.cloneAny(source));
    source = _dataFactory.createDateTimeValue(new Date());
    assertEquals(source, _dataFactory.cloneAny(source));
    source = _dataFactory.createDateValue(new Date());
    assertEquals(source, _dataFactory.cloneAny(source));
    source = _dataFactory.createDoubleValue(1.5d);
    assertEquals(source, _dataFactory.cloneAny(source));
    source = _dataFactory.createLongValue(Long.MIN_VALUE);
    assertEquals(source, _dataFactory.cloneAny(source));
    final AnyMap sourceMap = _dataFactory.createAnyMap();
    sourceMap.put("blabla", source);
    assertEquals(sourceMap, _dataFactory.cloneAny(sourceMap));
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(source);
    anySeq.add(sourceMap);
    assertEquals(anySeq, _dataFactory.cloneAny(anySeq));
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#cloneAnyMap(org.eclipse.smila.datamodel.AnyMap)}.
   */
  public void testCloneAnyMap() {
    final Any val1 = _dataFactory.createLongValue(Long.MIN_VALUE);
    final Any val2 = _dataFactory.createStringValue("string");
    final AnyMap val3 = _dataFactory.createAnyMap();
    final AnySeq val4 = _dataFactory.createAnySeq();
    val4.add(val1);
    val4.add(val2);
    val3.put("seq", val4);
    val3.put("String", val2);
    assertEquals(val3, _dataFactory.cloneAnyMap(val3));
  }

  /**
   * Test method for
   * {@link org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl#cloneAnySeq(org.eclipse.smila.datamodel.AnySeq)}.
   */
  public void testCloneAnySeq() {
    final Any val1 = _dataFactory.createLongValue(Long.MIN_VALUE);
    final Any val2 = _dataFactory.createStringValue("string");
    final AnyMap val3 = _dataFactory.createAnyMap();
    final AnySeq val4 = _dataFactory.createAnySeq();
    val4.add(val1);
    val4.add(val2);
    val3.put("Long", val1);
    val3.put("String", val2);
    val4.add(val3);
    val4.add(val3);
    val4.add(val2);
    val4.add(val3);
    assertEquals(val4, _dataFactory.cloneAnySeq(val4));
  }
}
