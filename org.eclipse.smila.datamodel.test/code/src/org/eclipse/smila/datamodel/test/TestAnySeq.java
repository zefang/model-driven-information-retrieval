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
import java.util.Iterator;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;

/**
 * Test case for AnySeq implementation.
 */
public final class TestAnySeq extends TestCase {

  /** the factory for our test objects. */
  private DataFactory _dataFactory;

  /** {@inheritDoc} */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    _dataFactory = DataFactoryCreator.createDefaultFactory();
  }

  /**
   * Tests add, addAll, size, isEmpty and some more methods or AnySeq.
   */
  public void testAnySeq() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final AnySeq anySeq2 = _dataFactory.createAnySeq();
    assertTrue(anySeq.equals(anySeq2));
    final Collection<Any> collection = new ArrayList<Any>();
    collection.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    collection.add(_dataFactory.createStringValue("string for testing purposes."));
    collection.add(_dataFactory.createDateValue(new Date()));
    collection.add(_dataFactory.createDateTimeValue(new Date()));
    collection.add(_dataFactory.createDoubleValue(2.9));
    collection.add(_dataFactory.createLongValue(Long.MAX_VALUE));
    collection.add(_dataFactory.createAnyMap());
    collection.add(_dataFactory.createAnySeq());

    assertNotNull(anySeq);
    assertTrue(anySeq.isEmpty());

    for (final Any any : collection) {
      final int oldSize = anySeq.size();
      anySeq.add(any);
      assertEquals(any, anySeq.get(oldSize));
      assertEquals(oldSize + 1, anySeq.size());

      anySeq2.add(0, any);
      assertEquals(any, anySeq2.get(0));
      assertEquals(oldSize + 1, anySeq2.size());

      assertTrue(anySeq.contains(any));
      assertTrue(anySeq2.contains(any));
    }
    assertFalse(anySeq.isEmpty());
    assertFalse(anySeq.equals(anySeq2));

    assertFalse(anySeq2.isEmpty());
    assertEquals(anySeq.size(), anySeq2.size());
    try {
      anySeq2.add(1000, _dataFactory.createStringValue("hallo"));
      fail("There should be an index out of bounds exception.");
    } catch (IndexOutOfBoundsException ex) {
      ;// that's fine.
    }
  }

  /**
   * Tests add(String).
   */
  public void testAddString() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add("string");
    final Any anyValue = anySeq.get(0);
    assertTrue(anyValue.isString());
    assertEquals("string", ((Value) anyValue).asString());
  }

  /**
   * Tests add(Number).
   */
  public void testAddDouble() {
    final AnySeq anySeq = _dataFactory.createAnySeq();

    anySeq.add(new Double(1.0));
    Any anyValue = anySeq.get(0);
    assertTrue(anyValue.isDouble());
    assertEquals(new Double(1.0), ((Value) anyValue).asDouble());
    anySeq.clear();

    anySeq.add(new Long(2));
    anyValue = anySeq.get(0);
    assertTrue(anyValue.isLong());
    assertEquals(new Long(2), ((Value) anyValue).asLong());
    anySeq.clear();

    anySeq.add(new Integer(4711));
    anyValue = anySeq.get(0);
    assertTrue(anyValue.isLong());
    assertEquals(new Long(4711), ((Value) anyValue).asLong());
    anySeq.clear();

    anySeq.add(new Short((short) 13));
    anyValue = anySeq.get(0);
    assertTrue(anyValue.isLong());
    assertEquals(new Long(13), ((Value) anyValue).asLong());
    anySeq.clear();

    anySeq.add(new Byte((byte) 7));
    anyValue = anySeq.get(0);
    assertTrue(anyValue.isLong());
    assertEquals(new Long(7), ((Value) anyValue).asLong());
    anySeq.clear();

    anySeq.add(new Float(3.14));
    anyValue = anySeq.get(0);
    assertTrue(anyValue.isDouble());
    assertEquals(new Double(new Float(3.14).doubleValue()), ((Value) anyValue).asDouble());
    anySeq.clear();
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#clear()}.
   */
  public void testClear() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(1, _dataFactory.createBooleanValue(Boolean.TRUE));
    assertEquals(2, anySeq.size());
    assertFalse(anySeq.isEmpty());
    anySeq.clear();
    assertEquals(0, anySeq.size());
    assertTrue(anySeq.isEmpty());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#get(int)}.
   */
  public void testGet() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(0, _dataFactory.createBooleanValue(Boolean.FALSE));
    assertTrue(anySeq.get(0).isBoolean());
    assertFalse(((Value) anySeq.get(0)).asBoolean().booleanValue());
    assertTrue(anySeq.get(1).isBoolean());
    assertTrue(((Value) anySeq.get(1)).asBoolean().booleanValue());
    try {
      anySeq.get(1000);
      fail("There should be an index out of bounds exception.");
    } catch (IndexOutOfBoundsException ex) {
      ;// that's fine.
    }
  }

  /**
   * Test all getters for null values.
   */
  public void testGetNull() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(0, _dataFactory.createBooleanValue(Boolean.FALSE));
    anySeq.add(2, null);
    assertNull(anySeq.getStringValue(2));
    assertNull(anySeq.get(2));
    assertNull(anySeq.getBooleanValue(2));
    assertNull(anySeq.getDateTimeValue(2));
    assertNull(anySeq.getDateValue(2));
    assertNull(anySeq.getDoubleValue(2));
    assertNull(anySeq.getLongValue(2));
    assertNull(anySeq.getMap(2));
    assertNull(anySeq.getSeq(2));
    assertNull(anySeq.getValue(2));
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#getValue(int)}.
   */
  public void testGetValue() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(0, _dataFactory.createBooleanValue(Boolean.FALSE));
    anySeq.add(2, _dataFactory.createAnySeq());
    assertTrue(anySeq.get(0).isBoolean());
    assertFalse(anySeq.getValue(0).asBoolean().booleanValue());
    assertTrue(anySeq.get(1).isBoolean());
    assertTrue(anySeq.getValue(1).asBoolean().booleanValue());
    try {
      anySeq.getValue(1000);
      fail("There should be an index out of bounds exception.");
    } catch (IndexOutOfBoundsException ex) {
      ;// that's fine.
    }
    try {
      // index 2 is an AnySeq, no Value!!
      anySeq.getValue(2);
      fail("There should be an InvalidValueTypeException.");
    } catch (InvalidValueTypeException ex) {
      ;// that's fine.
    }
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#iterator()}.
   */
  public void testIterator() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final int maxNo = 100;
    for (int i = 0; i < maxNo; i++) {
      anySeq.add(_dataFactory.createLongValue(Long.valueOf(i)));
    }

    int j = 0;
    final Iterator<Any> iter = anySeq.iterator();
    while (iter.hasNext()) {
      assertEquals(j++, ((Value) iter.next()).asLong().intValue());
    }
    assertEquals(maxNo, j);
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#remove(int)}.
   */
  public void testRemoveInt() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final int maxNo = 100;
    for (int i = 0; i < maxNo; i++) {
      anySeq.add(_dataFactory.createLongValue(Long.valueOf(i)));
    }

    try {
      anySeq.remove(maxNo);
      fail("There should be an index out of bounds exception.");
    } catch (IndexOutOfBoundsException ex) {
      ;// that's fine.
    }
    Any removed = anySeq.remove(maxNo - 1);
    assertEquals(maxNo - 1, ((Value) removed).asLong().intValue());
    removed = anySeq.remove(maxNo / 2);
    assertEquals(maxNo / 2, ((Value) removed).asLong().intValue());
    removed = anySeq.remove(0);
    assertEquals(0, ((Value) removed).asLong().intValue());
    assertEquals(maxNo - 3, anySeq.size());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#remove(org.eclipse.smila.datamodel.Any)}.
   */
  public void testRemoveAny() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final int maxNo = 100;
    for (int i = 0; i < maxNo; i++) {
      anySeq.add(_dataFactory.createLongValue(Long.valueOf(i)));
    }

    try {
      anySeq.remove(maxNo);
      fail("There should be an index out of bounds exception.");
    } catch (IndexOutOfBoundsException ex) {
      ;// that's fine.
    }
    Any toBeRemoved = _dataFactory.createLongValue(Long.valueOf(maxNo + 1));
    assertFalse(anySeq.remove(toBeRemoved));
    toBeRemoved = _dataFactory.createLongValue(Long.valueOf(maxNo - 1));
    assertTrue(anySeq.remove(toBeRemoved));
    final int size = anySeq.size();
    for (int j = 0; j < size; j++) {
      anySeq.remove(anySeq.get(0));
    }
    assertEquals(0, anySeq.size());
    assertTrue(anySeq.isEmpty());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.AnySeq#equals(java.lang.Object)} and
   * {@link org.eclipse.smila.datamodel.AnySeq#hashCode()}.
   */
  public void testEquals() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(0, _dataFactory.createBooleanValue(Boolean.FALSE));
    final AnySeq anyIdentical = anySeq;
    final AnySeq anySeq2 = _dataFactory.createAnySeq();
    anySeq2.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq2.add(0, _dataFactory.createBooleanValue(Boolean.FALSE));
    assertEquals(anySeq, anyIdentical);
    assertEquals(anyIdentical, anySeq2);
    assertEquals(anySeq, anySeq2);
    assertEquals(anySeq2, anySeq);
    assertEquals(anySeq, anySeq);

    assertEquals(anySeq.hashCode(), anySeq2.hashCode());
    assertEquals(anySeq.hashCode(), anyIdentical.hashCode());
  }

  /**
   * Test method for {@link org.eclipse.smila.datamodel.Any#getValueType()}.
   */
  public void testValueType() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    assertTrue(anySeq.getValueType() == ValueType.SEQ);
  }

  /**
   * test method for getter methods {@link org.eclipse.smila.datamodel.AnySeq#getBooleanValue(int)} etc.
   */
  public void testGetters() {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    final Date date = new Date();
    final Double doubleValue = Double.valueOf(2.9);
    anySeq.add(_dataFactory.createBooleanValue(Boolean.TRUE));
    anySeq.add(_dataFactory.createStringValue("string for testing purposes."));
    anySeq.add(_dataFactory.createDateValue(date));
    anySeq.add(_dataFactory.createDateTimeValue(date));
    anySeq.add(_dataFactory.createDoubleValue(doubleValue));
    anySeq.add(_dataFactory.createLongValue(Long.MAX_VALUE));
    anySeq.add(_dataFactory.createAnyMap());
    anySeq.add(_dataFactory.createAnySeq());

    assertEquals(Boolean.TRUE, anySeq.getBooleanValue(0));
    assertException(anySeq, ValueType.DATE, 0);
    assertException(anySeq, ValueType.DATETIME, 0);
    assertException(anySeq, ValueType.DOUBLE, 0);
    assertException(anySeq, ValueType.LONG, 0);
    assertException(anySeq, ValueType.MAP, 0);
    assertException(anySeq, ValueType.SEQ, 0);
    assertException(anySeq, ValueType.STRING, 0);

    assertException(anySeq, ValueType.BOOLEAN, 1);
    assertException(anySeq, ValueType.DATE, 1);
    assertException(anySeq, ValueType.DATETIME, 1);
    assertException(anySeq, ValueType.DOUBLE, 1);
    assertException(anySeq, ValueType.LONG, 1);
    assertException(anySeq, ValueType.MAP, 1);
    assertException(anySeq, ValueType.SEQ, 1);
    assertEquals("string for testing purposes.", anySeq.getStringValue(1));

    assertException(anySeq, ValueType.BOOLEAN, 2);
    assertEquals(date, anySeq.getDateValue(2));
    assertException(anySeq, ValueType.DATETIME, 2);
    assertException(anySeq, ValueType.DOUBLE, 2);
    assertException(anySeq, ValueType.LONG, 2);
    assertException(anySeq, ValueType.MAP, 2);
    assertException(anySeq, ValueType.SEQ, 2);
    assertException(anySeq, ValueType.STRING, 2);

    assertException(anySeq, ValueType.BOOLEAN, 3);
    assertException(anySeq, ValueType.DATE, 3);
    assertEquals(date, anySeq.getDateTimeValue(3));
    assertException(anySeq, ValueType.DOUBLE, 3);
    assertException(anySeq, ValueType.LONG, 3);
    assertException(anySeq, ValueType.MAP, 3);
    assertException(anySeq, ValueType.SEQ, 3);
    assertException(anySeq, ValueType.STRING, 3);

    assertException(anySeq, ValueType.BOOLEAN, 4);
    assertException(anySeq, ValueType.DATE, 4);
    assertException(anySeq, ValueType.DATETIME, 4);
    assertEquals(doubleValue, anySeq.getDoubleValue(4));
    assertException(anySeq, ValueType.LONG, 4);
    assertException(anySeq, ValueType.MAP, 4);
    assertException(anySeq, ValueType.SEQ, 4);
    assertException(anySeq, ValueType.STRING, 4);

    assertException(anySeq, ValueType.BOOLEAN, 5);
    assertException(anySeq, ValueType.DATE, 5);
    assertException(anySeq, ValueType.DATETIME, 5);
    assertException(anySeq, ValueType.DOUBLE, 5);
    assertEquals(Long.valueOf(Long.MAX_VALUE), anySeq.getLongValue(5));
    assertException(anySeq, ValueType.MAP, 5);
    assertException(anySeq, ValueType.SEQ, 5);
    assertException(anySeq, ValueType.STRING, 5);

    assertException(anySeq, ValueType.BOOLEAN, 6);
    assertException(anySeq, ValueType.DATE, 6);
    assertException(anySeq, ValueType.DATETIME, 6);
    assertException(anySeq, ValueType.DOUBLE, 6);
    assertException(anySeq, ValueType.LONG, 6);
    assertEquals(_dataFactory.createAnyMap(), anySeq.getMap(6));
    assertException(anySeq, ValueType.SEQ, 6);
    assertException(anySeq, ValueType.STRING, 6);

    assertException(anySeq, ValueType.BOOLEAN, 7);
    assertException(anySeq, ValueType.DATE, 7);
    assertException(anySeq, ValueType.DATETIME, 7);
    assertException(anySeq, ValueType.DOUBLE, 7);
    assertException(anySeq, ValueType.LONG, 7);
    assertException(anySeq, ValueType.MAP, 7);
    assertEquals(_dataFactory.createAnySeq(), anySeq.getSeq(7));
    assertException(anySeq, ValueType.STRING, 7);
  }

  /**
   * asserts that the correct exception is thrown.
   * 
   * @param anySeq
   *          the sequence to be tested
   * @param valueType
   *          the (wrong) value type to be retrieved
   * @param index
   *          the index of the object to be tested
   */
  private void assertException(final AnySeq anySeq, final ValueType valueType, final int index) {
    try {
      if (valueType == ValueType.BOOLEAN) {
        anySeq.getBooleanValue(index);
      } else if (valueType == ValueType.DATE) {
        anySeq.getDateValue(index);
      } else if (valueType == ValueType.DATETIME) {
        anySeq.getDateTimeValue(index);
      } else if (valueType == ValueType.DOUBLE) {
        anySeq.getDoubleValue(index);
      } else if (valueType == ValueType.LONG) {
        anySeq.getLongValue(index);
      } else if (valueType == ValueType.MAP) {
        anySeq.getMap(index);
      } else if (valueType == ValueType.SEQ) {
        anySeq.getSeq(index);
      } else if (valueType == ValueType.STRING) {
        anySeq.getStringValue(index);
      }
    } catch (InvalidValueTypeException ex) {
      ; // that's fine
    }
  }

}
