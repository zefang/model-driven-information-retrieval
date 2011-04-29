/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.test;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;
import org.eclipse.smila.datamodel.impl.ValueImpl;

/**
 * Test class for testing the methods of Value and ValueImpl.
 * 
 * @author cind01
 * 
 */
public class TestValue extends TestCase {

  /**
   * Factory for creating Any objects.
   */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * Test creation of a String value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateStringValue() throws Exception {
    // test creation and correct type
    final String testString = "This is a test!";
    Value value = _dataFactory.createStringValue(testString);
    assertNotNull(value);
    assertTrue(value.isString());
    assertEquals(value.getValueType(), Any.ValueType.STRING);
    assertFalse(value.isDouble());
    assertFalse(value.isBoolean());
    assertFalse(value.isDate());
    assertFalse(value.isDateTime());
    assertFalse(value.isLong());
    Double doubleValue = null;
    try {
      doubleValue = value.asDouble();
      fail("Should not happen, an InvalidValueTypeException should occur.");
    } catch (final InvalidValueTypeException ivte) {
      assertNotNull(ivte);
      assertNull(doubleValue);
    }

    // test equals and hash code
    final Value stringValue = _dataFactory.createStringValue(testString);
    assertTrue(value.equals(stringValue));
    assertEquals(value.hashCode(), stringValue.hashCode());
    assertFalse(value.equals(null));

    // test double string value
    value = _dataFactory.createStringValue("5.0");
    assertNotNull(value);
    assertTrue(value.isString());
    assertFalse(value.isDouble());
    assertTrue(value.asDouble() instanceof Double);

    // test long string value
    value = _dataFactory.createStringValue("5");
    assertNotNull(value);
    assertTrue(value.isString());
    assertFalse(value.isDouble());
    assertTrue(value.asLong() instanceof Long);

    // test boolean string value
    value = _dataFactory.createStringValue("true");
    assertNotNull(value);
    assertTrue(value.isString());
    assertFalse(value.isDouble());
    assertTrue(value.asBoolean());

    // test date string value
    value = _dataFactory.createStringValue("1973-05-29");
    assertNotNull(value);
    assertTrue(value.isString());
    assertFalse(value.isDouble());
    assertTrue(value.asDate() instanceof Date);

    // test datetime string value
    value = _dataFactory.createStringValue("1973-05-29T07:30:00+0000");
    assertNotNull(value);
    assertTrue(value.isString());
    assertFalse(value.isDouble());
    assertTrue(value.asDateTime() instanceof Date);
  }

  /**
   * Test creation of a Double value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateDouble() throws Exception {
    // test creation and correct type
    final int testNumber = 12345;
    final Double testDouble = new Double(testNumber);
    final Value value = _dataFactory.createDoubleValue(testDouble);
    assertNotNull(value);
    assertTrue(value.isDouble());
    assertTrue(value.isNumber());
    assertEquals(value.getValueType(), Any.ValueType.DOUBLE);
    assertFalse(value.isString());
    assertFalse(value.isBoolean());
    assertFalse(value.isDate());
    assertFalse(value.isDateTime());
    assertFalse(value.isLong());

    Long longValue = value.asLong(); // should work
    assertEquals(new Long(testNumber), longValue);

    try {
      value.asBoolean();
      fail("Should not happen, an InvalidValueTypeException should occur.");
    } catch (final InvalidValueTypeException ivte) {
      assertNotNull(ivte);
    }

    // test equals and hash code
    final Value doubleValue = _dataFactory.createDoubleValue(testDouble);
    assertTrue(value.equals(doubleValue));
    assertEquals(value.hashCode(), doubleValue.hashCode());
    assertFalse(value.equals(null));

    // test for different type even if their internal value 12345 seems to be equal
    longValue = new Long(testNumber);
    assertFalse(value.equals(_dataFactory.createLongValue(longValue)));
  }

  /**
   * Test creation of a Long value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateLong() throws Exception {
    // test creation and correct type
    final int testNumber = 12345;
    final Long testLong = new Long(testNumber);
    final Value value = _dataFactory.createLongValue(testLong);
    assertNotNull(value);
    assertTrue(value.isLong());
    assertTrue(value.isNumber());
    assertFalse(value.isDouble());
    assertEquals(value.getValueType(), Any.ValueType.LONG);
    assertFalse(value.isString());
    assertFalse(value.isBoolean());
    assertFalse(value.isDate());
    assertFalse(value.isDateTime());

    Double doubleValue = value.asDouble();
    assertEquals(testLong, new Long(doubleValue.longValue()));

    try {
      value.asDate();
      fail("Should not happen, an InvalidValueTypeException should occur.");
    } catch (final InvalidValueTypeException ivte) {
      assertNotNull(ivte);
    }

    // test equals and hash code
    final Value longValue = _dataFactory.createLongValue(testLong);
    assertTrue(value.equals(longValue));
    assertEquals(value.hashCode(), longValue.hashCode());
    assertFalse(value.equals(null));

    // test for different type even if their internal value 12345 seems to be equal
    doubleValue = new Double(testNumber);
    assertFalse(value.equals(_dataFactory.createDoubleValue(doubleValue)));
  }

  /**
   * Test creation of a Boolean value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateBoolean() throws Exception {
    // test creation and correct type
    final String testString = "true";
    final Boolean testBoolean = Boolean.parseBoolean(testString);
    final Value value = _dataFactory.createBooleanValue(testBoolean);
    assertNotNull(value);
    assertTrue(value.isBoolean());
    assertFalse(value.isNumber());
    assertEquals(value.getValueType(), Any.ValueType.BOOLEAN);
    assertFalse(value.isDouble());
    assertFalse(value.isString());
    assertFalse(value.isDate());
    assertFalse(value.isDateTime());
    assertFalse(value.isLong());
    String stringValue = null;

    // /here no exception should occur
    stringValue = value.asString();
    assertEquals(testString, stringValue);

    // test equals and hash code
    final Value booleanValue = _dataFactory.createBooleanValue(testBoolean);
    assertTrue(value.equals(booleanValue));
    assertEquals(value.hashCode(), booleanValue.hashCode());
    assertFalse(value.equals(null));

    // test for different type even if their internal value 12345 seems to be equal
    assertFalse(value.equals(_dataFactory.createStringValue(testString)));
  }

  /**
   * Test creation of a date value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateDate() throws Exception {
    // test creation and correct type
    final Calendar cal = Calendar.getInstance();
    cal.set(Calendar.HOUR_OF_DAY, 0);
    cal.set(Calendar.MINUTE, 0);
    cal.set(Calendar.SECOND, 0);
    cal.set(Calendar.MILLISECOND, 0);
    final Date testDate = cal.getTime();

    final Value value = _dataFactory.createDateValue(testDate);
    assertNotNull(value);
    assertTrue(value.isDate());
    assertFalse(value.isNumber());
    assertFalse(value.isDouble());
    assertEquals(value.getValueType(), Any.ValueType.DATE);
    assertFalse(value.isString());
    assertFalse(value.isBoolean());
    assertFalse(value.isLong());
    assertFalse(value.isDateTime());
    assertEquals(value.asDateTime(), value.asDate());

    try {
      value.asLong();
      fail("Should not happen, an InvalidValueTypeException should occur.");
    } catch (final InvalidValueTypeException ivte) {
      assertNotNull(ivte);
    }

    // test equals and hash code
    final Value dateValue = _dataFactory.createDateValue(testDate);
    assertTrue(value.equals(dateValue));
    assertEquals(value.hashCode(), dateValue.hashCode());
    assertFalse(value.equals(null));

    final Date parsedDate = ValueFormatHelper.INSTANCE.parseDate(value.asString());
    assertEquals(testDate, parsedDate);
  }

  /**
   * Test creation of a datetime value and respective methods.
   * 
   * @throws Exception
   *           An exception if something goes wrong.
   */
  public void testCreateDateTime() throws Exception {
    final Calendar cal = Calendar.getInstance();
    cal.set(Calendar.MILLISECOND, 0);
    final Date testDate = cal.getTime();
    final Value value = _dataFactory.createDateTimeValue(testDate);
    assertNotNull(value);
    assertTrue(value.isDateTime());
    assertFalse(value.isNumber());
    assertFalse(value.isDouble());
    assertEquals(value.getValueType(), Any.ValueType.DATETIME);
    assertFalse(value.isString());
    assertFalse(value.isBoolean());
    assertFalse(value.isLong());
    assertFalse(value.isDate());
    assertEquals(value.asDateTime(), value.asDate());

    // test for different type even if their internal value the testDate seems to be equal
    try {
      value.asDouble();
      fail("Should not happen, an InvalidValueTypeException should occur.");
    } catch (final InvalidValueTypeException ivte) {
      assertNotNull(ivte);
    }

    // test equals and hash code
    final Value dateTimeValue = _dataFactory.createDateTimeValue(testDate);
    assertTrue(value.equals(dateTimeValue));
    assertEquals(value.hashCode(), dateTimeValue.hashCode());
    assertFalse(value.equals(null));

    final Date parsedDate = ValueFormatHelper.INSTANCE.parseDateTime(value.asString());
    assertEquals(testDate.getTime() / 1000, parsedDate.getTime() / 1000);
  }

  /** test parsing of date values from string. */
  public void testParseDate() throws Exception {
    final Date date1 = ValueFormatHelper.INSTANCE.parseDate("2001-02-03");
    final Calendar calendar = Calendar.getInstance();
    calendar.setTime(date1);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final Date date2 = ValueFormatHelper.INSTANCE.parseDate("0050-02-03");
    calendar.setTime(date2);
    assertEquals(50, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    try {
      ValueFormatHelper.INSTANCE.parseDate("2001-02-031");
      fail("should not work");
    } catch (final ParseException ex) {
      ; // OK
    }
  }

  /** test parsing of datetime values from string. */
  public void testParseDateTime() throws Exception {
    // test datetime pattern 1
    final Date date1 = ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56.123+0000");
    final Calendar calendar = Calendar.getInstance();
    final long zoneOffset = calendar.get(Calendar.ZONE_OFFSET);
    final long hourOffset = zoneOffset / 3600 / 1000;
    calendar.setTime(date1);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final int hour1 = calendar.get(Calendar.HOUR_OF_DAY);
    assertEquals(12 + hourOffset, hour1);
    assertEquals(34, calendar.get(Calendar.MINUTE));
    assertEquals(56, calendar.get(Calendar.SECOND));
    assertEquals(123, calendar.get(Calendar.MILLISECOND));
    assertEquals(zoneOffset, calendar.get(Calendar.ZONE_OFFSET));

    // test datetime pattern 2
    final Date date2 = ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56+0100");
    calendar.setTime(date2);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final int hour2 = calendar.get(Calendar.HOUR_OF_DAY);
    assertEquals(11 + hourOffset, hour2);
    assertEquals(hour1 - 1, hour2);
    assertEquals(34, calendar.get(Calendar.MINUTE));
    assertEquals(56, calendar.get(Calendar.SECOND));
    assertEquals(zoneOffset, calendar.get(Calendar.ZONE_OFFSET));

    // test datetime pattern 1
    final Date date3 = ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56-0200");
    calendar.setTime(date3);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final int hour3 = calendar.get(Calendar.HOUR_OF_DAY);
    assertEquals(14 + hourOffset, hour3);
    assertEquals(hour1 + 2, hour3);
    assertEquals(34, calendar.get(Calendar.MINUTE));
    assertEquals(56, calendar.get(Calendar.SECOND));
    assertEquals(zoneOffset, calendar.get(Calendar.ZONE_OFFSET));

    // test parse exception
    try {
      ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56+00001");
      fail("should not work");
    } catch (final ParseException ex) {
      ; // OK
    }

    // test datetime pattern 3
    final Date date4 = ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56.123");
    calendar.setTime(date4);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final int hour4 = calendar.get(Calendar.HOUR_OF_DAY);
    assertEquals(12, hour4);
    assertEquals(34, calendar.get(Calendar.MINUTE));
    assertEquals(56, calendar.get(Calendar.SECOND));
    assertEquals(123, calendar.get(Calendar.MILLISECOND));
    assertEquals(zoneOffset, calendar.get(Calendar.ZONE_OFFSET));

    // test datetime pattern 4
    final Date date5 = ValueFormatHelper.INSTANCE.parseDateTime("2001-02-03T12:34:56");
    calendar.setTime(date5);
    assertEquals(2001, calendar.get(Calendar.YEAR));
    assertEquals(Calendar.FEBRUARY, calendar.get(Calendar.MONTH));
    assertEquals(3, calendar.get(Calendar.DAY_OF_MONTH));
    final int hour5 = calendar.get(Calendar.HOUR_OF_DAY);
    assertEquals(12, hour5);
    assertEquals(34, calendar.get(Calendar.MINUTE));
    assertEquals(56, calendar.get(Calendar.SECOND));
    assertEquals(zoneOffset, calendar.get(Calendar.ZONE_OFFSET));
  }

  /**
   * Check how Value.toString with null.
   */
  public void testNullValue() {
    Value value = null;
    try {
      value = _dataFactory.createStringValue(null);
      fail("Should not happen, an IllegalArgumentException should occur.");
    } catch (final IllegalArgumentException iae) {
      assertNotNull(iae);
      assertNull(value);
    }
  }

  /**
   * test iterable methods of value.
   */
  public void testIterable() {
    final Value value = _dataFactory.createStringValue("iterable");
    assertFalse(value.isEmpty());
    assertEquals(1, value.size());
    final Iterator<Any> iterator = value.iterator();
    assertTrue(iterator.hasNext());
    assertSame(iterator.next(), value);
    assertFalse(iterator.hasNext());
    for (final Any element : value) {
      assertSame(element, value);
    }
  }

  /** ValueDummy for testing. */
  private static class ValueDummy implements Value {

    private final Value _innerValue;

    /** ValueDummy constructor. */
    public ValueDummy(final Value in) {
      _innerValue = in;
    }

    @Override
    public ValueType getValueType() {
      return _innerValue.getValueType();
    }

    @Override
    public boolean isMap() {
      return _innerValue.isMap();
    }

    @Override
    public boolean isSeq() {
      return _innerValue.isSeq();
    }

    @Override
    public boolean isValue() {
      return _innerValue.isValue();
    }

    @Override
    public boolean isString() {
      return _innerValue.isString();
    }

    @Override
    public boolean isDouble() {
      return _innerValue.isDouble();
    }

    @Override
    public boolean isBoolean() {
      return _innerValue.isBoolean();
    }

    @Override
    public boolean isLong() {
      return _innerValue.isLong();
    }

    @Override
    public boolean isDate() {
      return _innerValue.isDate();
    }

    @Override
    public boolean isDateTime() {
      return _innerValue.isDateTime();
    }

    @Override
    public boolean isNumber() {
      return _innerValue.isNumber();
    }

    @Override
    public DataFactory getFactory() {
      return _innerValue.getFactory();
    }

    @Override
    public Iterator<Any> iterator() {
      return _innerValue.iterator();
    }

    @Override
    public boolean isEmpty() {
      return _innerValue.isEmpty();
    }

    @Override
    public int size() {
      return _innerValue.size();
    }

    @Override
    public String asString() {
      return _innerValue.asString();
    }

    @Override
    public Double asDouble() {
      return _innerValue.asDouble();
    }

    @Override
    public Long asLong() {
      return _innerValue.asLong();
    }

    @Override
    public Boolean asBoolean() {
      return _innerValue.asBoolean();
    }

    @Override
    public Date asDate() {
      return _innerValue.asDate();
    }

    @Override
    public Date asDateTime() {
      return _innerValue.asDateTime();
    }

    @Override
    public Object getObject() {
      return _innerValue;
    }

    /**
     * @return
     * @see org.eclipse.smila.datamodel.Any#asValue()
     */
    public Value asValue() {
      return _innerValue.asValue();
    }

    /**
     * @return
     * @see org.eclipse.smila.datamodel.Any#asMap()
     */
    public AnyMap asMap() {
      return _innerValue.asMap();
    }

    /**
     * @return
     * @see org.eclipse.smila.datamodel.Any#asSeq()
     */
    public AnySeq asSeq() {
      return _innerValue.asSeq();
    }

  }

  /**
   * tests {@link ValueImpl#ValueImpl(Value)}.
   */
  public void testCopyConstructor() {
    Value in = _dataFactory.createBooleanValue(Boolean.TRUE);
    Value out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asBoolean(), out.asBoolean());

    in = _dataFactory.createDateTimeValue(new Date());
    out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asDateTime(), out.asDateTime());

    in = _dataFactory.createDateValue(new Date());
    out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asDate(), out.asDate());

    in = _dataFactory.createDoubleValue(2.0);
    out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asDouble(), out.asDouble());

    in = _dataFactory.createLongValue(20);
    out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asLong(), out.asLong());

    in = _dataFactory.createStringValue("20");
    out = new ValueImpl(new ValueDummy(in));
    assertEquals(in.getValueType(), out.getValueType());
    assertEquals(in.asString(), out.asString());
  }
}
