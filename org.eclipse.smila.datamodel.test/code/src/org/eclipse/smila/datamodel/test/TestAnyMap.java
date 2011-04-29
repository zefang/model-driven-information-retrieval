/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map.Entry;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.impl.AnyMapImpl;
import org.eclipse.smila.datamodel.impl.ValueImpl;

/**
 * Test cases for AnyMap.
 */
public final class TestAnyMap extends TestCase {

  /** the factory for Any values. */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#clear()} and
   * {@link org.eclipse.smila.datamodel.AnyMap#isEmpty()} and {@link org.eclipse.smila.datamodel.AnyMap#size()}.
   */
  public void testClearSizeAndIsEmpty() {
    final AnyMap anyMap = new AnyMapImpl();
    assertNotNull(anyMap);
    assertTrue(anyMap.isEmpty());
    assertEquals(0, anyMap.size());

    final Value any1 = new ValueImpl(ValueType.BOOLEAN, Boolean.FALSE);
    final Value any2 = new ValueImpl(ValueType.STRING, "string");
    anyMap.put("1", any1);
    anyMap.put("2", any2);
    assertFalse(anyMap.isEmpty());
    assertEquals(2, anyMap.size());

    anyMap.clear();
    assertTrue(anyMap.isEmpty());
    assertEquals(0, anyMap.size());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#containsKey(java.lang.String)}.
   */
  public void testContainsKey() {
    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = new ValueImpl(ValueType.LONG, Long.MAX_VALUE);
    final Value anyValue2 = new ValueImpl(ValueType.DOUBLE, 2.0);
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);

    assertTrue(anyMap.containsKey("long"));
    assertFalse(anyMap.containsKey("short"));
    assertTrue(anyMap.containsKey("double"));
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#containsValue(org.eclipse.smila.datamodel.Any)}.
   */
  public void testContainsValue() {

    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    final Value anyValue2 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue3 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue4 = _dataFactory.createStringValue("2.0");
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);

    assertTrue(anyMap.containsValue(anyValue1));
    assertTrue(anyMap.containsValue(anyValue2));
    // anyValue2 and anyValue3 are equal to each other...
    assertTrue(anyMap.containsValue(anyValue3));
    assertFalse(anyMap.containsValue(anyValue4));
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#entrySet()} and
   * {@link org.eclipse.smila.datamodel.AnyMap#keySet() and {@link org.eclipse.smila.datamodel.any.AnyMap#values().
   */
  public void testEntrySetKeySetAndValues() {
    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    final Value anyValue2 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue3 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue4 = _dataFactory.createStringValue("2.0");
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);
    anyMap.put("double2", anyValue3);
    anyMap.put("string", anyValue4);

    assertEquals(4, anyMap.entrySet().size());
    final Collection<Any> values = new ArrayList<Any>();
    final Collection<Any> uniqueValues = new HashSet<Any>();
    final Collection<String> keys = new ArrayList<String>();
    for (final Entry<String, Any> entry : anyMap.entrySet()) {
      keys.add(entry.getKey());
      values.add(entry.getValue());
      uniqueValues.add(entry.getValue());
      assertTrue(anyMap.keySet().contains(entry.getKey()));
      assertTrue(anyMap.values().contains(entry.getValue()));
    }
    assertEquals(keys.size(), anyMap.keySet().size());
    assertEquals(values.size(), anyMap.values().size());
    assertTrue(values.size() == uniqueValues.size() + 1);
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#put(java.lang.String, org.eclipse.smila.datamodel.Any)}.
   */
  public void testPut() {
    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    final Value anyValue2 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue3 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue4 = _dataFactory.createStringValue("2.0");
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);
    anyMap.put("double2", anyValue3);
    anyMap.put("string", anyValue4);
    assertEquals(anyValue1, anyMap.get("long"));
    assertEquals(anyValue4, anyMap.get("string"));
    assertNull(anyMap.get("I do not exist."));
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#put(java.lang.String, java.lang.String)}.
   */
  public void testPutString() {
    final AnyMap anyMap = new AnyMapImpl();
    anyMap.put("key", "string");
    final Any anyValue = anyMap.get("key");
    assertTrue(anyValue.isString());
    assertEquals("string", ((Value) anyValue).asString());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#put(java.lang.String, java.lang.Number)}.
   */
  public void testPutNumber() {
    final AnyMap anyMap = new AnyMapImpl();
    anyMap.put("key", new Long(2));
    Any anyValue = anyMap.get("key");
    assertTrue(anyValue.isLong());
    assertEquals(new Long(2), ((Value) anyValue).asLong());

    anyMap.put("key", new Integer(2));
    anyValue = anyMap.get("key");
    assertTrue(anyValue.isLong());
    assertEquals(new Long(2), ((Value) anyValue).asLong());

    anyMap.put("key", new Short((short) 2));
    anyValue = anyMap.get("key");
    assertTrue(anyValue.isLong());
    assertEquals(new Long(2), ((Value) anyValue).asLong());

    anyMap.put("key", new Byte((byte) 2));
    anyValue = anyMap.get("key");
    assertTrue(anyValue.isLong());
    assertEquals(new Long(2), ((Value) anyValue).asLong());

    anyMap.put("key", new Double(1.0));
    anyValue = anyMap.get("key");
    assertTrue(anyValue.isDouble());
    assertEquals(new Double(1.0), ((Value) anyValue).asDouble());

    anyMap.put("key", new Float(1.0));
    anyValue = anyMap.get("key");
    assertTrue(anyValue.isDouble());
    assertEquals(new Double(1.0), ((Value) anyValue).asDouble());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#putAll(org.eclipse.smila.datamodel.AnyMap)}.
   */
  public void testPutAll() {
    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    final Value anyValue2 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue3 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue4 = _dataFactory.createStringValue("2.0");
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);
    anyMap.put("double2", anyValue3);
    anyMap.put("string", anyValue4);

    final AnyMap secondMap = new AnyMapImpl();
    final AnyMap thirdMap = new AnyMapImpl();
    thirdMap.putAll(secondMap);
    assertTrue(thirdMap.isEmpty());
    secondMap.putAll(anyMap);
    assertFalse(secondMap.isEmpty());
    final Value anotherValue = _dataFactory.createDateTimeValue(new Date());
    thirdMap.put("another key", anotherValue);
    thirdMap.putAll(secondMap);

    assertEquals(anyMap, secondMap);
    assertEquals(anyMap.hashCode(), secondMap.hashCode());
    assertFalse(anyMap.equals(thirdMap));
    assertFalse(secondMap.size() == thirdMap.size());

    for (final Entry<String, Any> entry : secondMap.entrySet()) {
      assertEquals(secondMap.get(entry.getKey()), thirdMap.get(entry.getKey()));
      assertEquals(secondMap.get(entry.getKey()), anyMap.get(entry.getKey()));
    }
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#remove(java.lang.String)}.
   */
  public void testRemove() {
    final AnyMap anyMap = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    final Value anyValue2 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue3 = _dataFactory.createDoubleValue(2.0);
    final Value anyValue4 = _dataFactory.createStringValue("2.0");
    anyMap.put("long", anyValue1);
    anyMap.put("double", anyValue2);
    anyMap.put("double2", anyValue3);
    anyMap.put("string", anyValue4);

    final Any anyRemoved = anyMap.remove("long");
    assertEquals(3, anyMap.size());
    assertTrue(anyMap.iterator().hasNext());
    assertFalse(anyMap.isEmpty());
    assertFalse(anyMap.entrySet().isEmpty());
    assertFalse(anyMap.values().isEmpty());
    assertFalse(anyMap.keySet().isEmpty());
    assertFalse(anyMap.containsKey("long"));
    assertFalse(anyMap.containsValue(anyRemoved));
    assertNull(anyMap.get("long"));
    assertNull(anyMap.remove("long"));
    assertEquals(anyRemoved, anyValue1);

    assertEquals(anyValue2, anyMap.remove("double"));
    assertEquals(anyValue3, anyMap.remove("double2"));
    assertEquals(anyValue4, anyMap.remove("string"));

    assertTrue(anyMap.isEmpty());
    assertTrue(anyMap.entrySet().isEmpty());
    assertTrue(anyMap.values().isEmpty());
    assertTrue(anyMap.keySet().isEmpty());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#getMap(java.lang.String)}.
   */
  public void testGetMap() {
    final AnyMap anyMap = new AnyMapImpl();
    final AnyMap anyMap2 = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    anyMap2.put("test", anyValue1);
    anyMap.put("map-test", anyMap2);

    assertEquals(anyMap2, anyMap.getMap("map-test"));
    assertNull(anyMap.getMap("not there."));
    try {
      anyMap2.getMap("test");
      fail("expected an exception when retrieving map that is no map.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnyMap#getValue(java.lang.String)}.
   */
  public void testGetValue() {
    final AnyMap anyMap = new AnyMapImpl();
    final AnyMap anyMap2 = new AnyMapImpl();
    final Value anyValue1 = _dataFactory.createLongValue(Long.MAX_VALUE);
    anyMap2.put("test", anyValue1);
    anyMap.put("map-test", anyMap2);

    assertEquals(anyValue1, anyMap.getMap("map-test").getValue("test"));
    assertNull(anyMap.getValue("not there."));
    try {
      anyMap.getValue("map-test");
      fail("expected an exception when retrieving Value that is no Value.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.Any#getValueType()} and all type based getters.
   */
  public void testValueTypesAndGetters() {
    final AnyMap anyMap = _dataFactory.createAnyMap();
    final Any anyMap2 = _dataFactory.createAnyMap();
    anyMap.put(anyMap2.getValueType().name(), anyMap2);
    final Any anySeq = _dataFactory.createAnySeq();
    anyMap.put(anySeq.getValueType().name(), anySeq);
    final Any booleanAny = _dataFactory.createBooleanValue(Boolean.TRUE);
    anyMap.put(booleanAny.getValueType().name(), booleanAny);
    final Any doubleAny = _dataFactory.createDoubleValue(Double.MAX_VALUE);
    anyMap.put(doubleAny.getValueType().name(), doubleAny);
    final Any stringAny = _dataFactory.createStringValue("string");
    anyMap.put(stringAny.getValueType().name(), stringAny);
    final Any longAny = _dataFactory.createLongValue(Long.MIN_VALUE);
    anyMap.put(longAny.getValueType().name(), longAny);
    final Any dateAny = _dataFactory.createDateValue(new Date());
    anyMap.put(dateAny.getValueType().name(), dateAny);
    final Any dateTimeAny = _dataFactory.createDateTimeValue(new Date());
    anyMap.put(dateTimeAny.getValueType().name(), dateTimeAny);

    assertEquals(ValueType.MAP, anyMap.getValueType());

    anyMap.getMap(ValueType.MAP.name());
    assertMapConvertionError(anyMap, ValueType.SEQ.name());
    assertMapConvertionError(anyMap, ValueType.BOOLEAN.name());
    assertMapConvertionError(anyMap, ValueType.LONG.name());
    assertMapConvertionError(anyMap, ValueType.DATE.name());
    assertMapConvertionError(anyMap, ValueType.DATETIME.name());
    assertMapConvertionError(anyMap, ValueType.DOUBLE.name());

    // --- SEQ
    anyMap.getSeq(ValueType.SEQ.name());
    assertSeqConvertionError(anyMap, ValueType.MAP.name());
    assertSeqConvertionError(anyMap, ValueType.BOOLEAN.name());
    assertSeqConvertionError(anyMap, ValueType.LONG.name());
    assertSeqConvertionError(anyMap, ValueType.DATE.name());
    assertSeqConvertionError(anyMap, ValueType.DATETIME.name());
    assertSeqConvertionError(anyMap, ValueType.DOUBLE.name());

    // --- BOOLEAN
    assertBooleanConvertionError(anyMap, ValueType.SEQ.name());
    assertBooleanConvertionError(anyMap, ValueType.MAP.name());
    anyMap.getBooleanValue(ValueType.BOOLEAN.name());
    assertBooleanConvertionError(anyMap, ValueType.LONG.name());
    assertBooleanConvertionError(anyMap, ValueType.DATE.name());
    assertBooleanConvertionError(anyMap, ValueType.DATETIME.name());
    assertBooleanConvertionError(anyMap, ValueType.DOUBLE.name());

    // LONG
    assertLongConvertionError(anyMap, ValueType.SEQ.name());
    assertLongConvertionError(anyMap, ValueType.MAP.name());
    assertLongConvertionError(anyMap, ValueType.BOOLEAN.name());
    anyMap.getLongValue(ValueType.LONG.name());
    assertLongConvertionError(anyMap, ValueType.DATE.name());
    assertLongConvertionError(anyMap, ValueType.DATETIME.name());
    anyMap.getDoubleValue(ValueType.LONG.name());

    // DATE
    assertDateConvertionError(anyMap, ValueType.SEQ.name());
    assertDateConvertionError(anyMap, ValueType.MAP.name());
    assertDateConvertionError(anyMap, ValueType.BOOLEAN.name());
    assertDateConvertionError(anyMap, ValueType.LONG.name());
    anyMap.getDateValue(ValueType.DATE.name());
    anyMap.getDateTimeValue(ValueType.DATE.name());    
    assertDateConvertionError(anyMap, ValueType.DOUBLE.name());

    // DATETIME
    assertDateTimeConvertionError(anyMap, ValueType.SEQ.name());
    assertDateTimeConvertionError(anyMap, ValueType.MAP.name());
    assertDateTimeConvertionError(anyMap, ValueType.BOOLEAN.name());
    assertDateTimeConvertionError(anyMap, ValueType.LONG.name());
    anyMap.getDateValue(ValueType.DATETIME.name());
    anyMap.getDateTimeValue(ValueType.DATETIME.name());
    assertDateTimeConvertionError(anyMap, ValueType.DOUBLE.name());

    // DOUBLE
    assertDoubleConvertionError(anyMap, ValueType.SEQ.name());
    assertDoubleConvertionError(anyMap, ValueType.MAP.name());
    assertDoubleConvertionError(anyMap, ValueType.BOOLEAN.name());
    anyMap.getLongValue(ValueType.DOUBLE.name());
    assertDoubleConvertionError(anyMap, ValueType.DATE.name());
    assertDoubleConvertionError(anyMap, ValueType.DATETIME.name());
    anyMap.getDoubleValue(ValueType.DOUBLE.name());

    // String: almost anything goes...
    assertStringConvertionError(anyMap, ValueType.SEQ.name());
    assertStringConvertionError(anyMap, ValueType.MAP.name());
    assertNotNull(anyMap.getStringValue(ValueType.BOOLEAN.name()));
    assertNotNull(anyMap.getStringValue(ValueType.LONG.name()));
    assertNotNull(anyMap.getStringValue(ValueType.DATE.name()));
    assertNotNull(anyMap.getStringValue(ValueType.DATETIME.name()));
    assertNotNull(anyMap.getStringValue(ValueType.DOUBLE.name()));

    anyMap.put("null", (Any) null);
    assertNull(anyMap.getStringValue("null"));
    assertNull(anyMap.getMap("null"));
    assertNull(anyMap.getSeq("null"));
    assertNull(anyMap.getBooleanValue("null"));
    assertNull(anyMap.getDateTimeValue("null"));
    assertNull(anyMap.getDateValue("null"));
    assertNull(anyMap.getDoubleValue("null"));
    assertNull(anyMap.getLongValue("null"));
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.Any#isMap()} and other type checking methods.
   */
  public void testIsMapAndConsorts() {
    final AnyMap anyMap = _dataFactory.createAnyMap();
    assertTrue(anyMap.isMap());
    assertFalse(anyMap.isBoolean());
    assertFalse(anyMap.isDate());
    assertFalse(anyMap.isDateTime());
    assertFalse(anyMap.isDouble());
    assertFalse(anyMap.isLong());
    assertFalse(anyMap.isSeq());
    assertFalse(anyMap.isString());
  }

  /**
   * Test method for {@link AnyMap#equals(Object)}.
   */
  public void testEquals() {
    final AnyMap anyMap = _dataFactory.createAnyMap();
    final AnyMap anyMap2 = _dataFactory.createAnyMap();

    assertEquals(anyMap, anyMap2);
    assertEquals(anyMap, anyMap);
    final AnyMap anyMap3 = null;
    assertFalse(anyMap.equals(anyMap3));
    assertFalse(anyMap.equals(new HashMap<String, Any>()));
  }

  /**
   * Test method for {@link AnyMap.Entry#equals(Object)}.
   */
  public void testEntryEquals() {
    final AnyMap anyMap = _dataFactory.createAnyMap();
    final AnyMap anyMap2 = _dataFactory.createAnyMap();

    anyMap.put("x", _dataFactory.createStringValue("y"));
    anyMap2.put("x", _dataFactory.createStringValue("y"));
    anyMap.put("y", _dataFactory.createStringValue("z"));
    anyMap2.put("y", _dataFactory.createStringValue("z"));
    assertTrue(anyMap.entrySet().containsAll(anyMap2.entrySet()));

    anyMap.put("a", _dataFactory.createStringValue("a"));
    anyMap2.put("a", _dataFactory.createStringValue("b"));

    for (final Entry<String, Any> entry : anyMap.entrySet()) {
      assertEquals(entry, entry);
      assertFalse(entry.equals(null));
      assertFalse(entry.equals(entry.getKey()));
      if (entry.getKey().equals("a")) {
        assertFalse(anyMap2.entrySet().contains(entry));
      } else {
        assertTrue(anyMap2.entrySet().contains(entry));
      }
    }
  }

  /**
   * Test for {@link org.eclipse.smila.datamodel.AnyMap#add(java.lang.String, org.eclipse.smila.datamodel.Value)}.
   */
  public void testAdd() {
    final AnyMap anyMap = _dataFactory.createAnyMap();
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final Value v1 = _dataFactory.createStringValue("v1");
    final Value v2 = _dataFactory.createStringValue("v2");
    final Value v3 = _dataFactory.createStringValue("v3");
    final Value v4 = _dataFactory.createStringValue("v4");
    anySeq.add(v3);
    anySeq.add(v4);

    // test add to <null> entry
    anyMap.add("key", v1); // creates SEQ entry
    assertTrue(anyMap.get("key").isSeq());
    assertTrue(((AnySeq) anyMap.get("key")).contains(v1));
    anyMap.add("key", v2);
    assertTrue(anyMap.get("key").isSeq());
    assertTrue(((AnySeq) anyMap.get("key")).contains(v1));
    assertTrue(((AnySeq) anyMap.get("key")).contains(v2));

    // test add to SEQ entry
    anyMap.remove("key");
    assertTrue(anyMap.isEmpty());
    anyMap.put("key", anySeq);
    anyMap.add("key", v1);
    assertTrue(anyMap.get("key").isSeq());
    assertTrue(((AnySeq) anyMap.get("key")).contains(v3));
    assertTrue(((AnySeq) anyMap.get("key")).contains(v4));
    assertTrue(((AnySeq) anyMap.get("key")).contains(v1));

    // test add to MAP entry -> SEQ
    anyMap.remove("key");
    assertTrue(anyMap.isEmpty());
    anyMap.put("key", anyMap);
    anyMap.add("key", v1);
    assertTrue(anyMap.get("key").isSeq());
    assertTrue(((AnySeq) anyMap.get("key")).contains(anyMap));
    assertTrue(((AnySeq) anyMap.get("key")).contains(v1));

    // test add to VALUE entry -> SEQ
    anyMap.remove("key");
    assertTrue(anyMap.isEmpty());
    anyMap.put("key", v1);
    anyMap.add("key", v2);
    assertTrue(anyMap.get("key").isSeq());
    assertTrue(((AnySeq) anyMap.get("key")).contains(v1));
    assertTrue(((AnySeq) anyMap.get("key")).contains(v2));
  }

  /**
   * checks for exceptions getting a map.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertMapConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getMap(key);
      fail("expected an exception when retireving map that is no map.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a seq.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertSeqConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getSeq(key);
      fail("expected an exception when retireving seq that is no seq.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a boolean.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertBooleanConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getBooleanValue(key);
      fail("expected an exception when retireving boolean that is no boolean.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a date.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertDateConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getDateValue(key);
      fail("expected an exception when retireving date that is no date.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a datetime.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertDateTimeConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getDateTimeValue(key);
      fail("expected an exception when retireving datetime that is no datetime.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a double.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertDoubleConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getDoubleValue(key);
      fail("expected an exception when retireving double that is no double.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a long.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertLongConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getLongValue(key);
      fail("expected an exception when retireving long that is no long.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * checks for exceptions getting a string.
   * 
   * @param anyMap
   *          the map
   * @param key
   *          the key
   */
  private void assertStringConvertionError(final AnyMap anyMap, final String key) {
    try {
      anyMap.getStringValue(key);
      fail("expected an exception when retireving long that is no string.");
    } catch (final InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }
}
