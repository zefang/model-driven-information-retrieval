/*******************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.datamodel.test;

import java.util.Iterator;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Value;

/**
 * Tests for Attribute API.
 * 
 * @author jschumacher
 * 
 */
public class TestRecordMetadata extends TestCase {
  /**
   * Factory to create test records.
   */
  public static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /**
   * test AnySeq.
   */
  public void testSequence() {
    int expectedSize = 0;
    final AnySeq sequence = FACTORY.createAnySeq();
    assertEquals(expectedSize, sequence.size());
    assertTrue(sequence.isEmpty());
    assertFalse(sequence.iterator().hasNext());

    final Value lit1 = FACTORY.createStringValue("value 1");
    sequence.add(lit1);
    expectedSize++;
    final Value lit2 = FACTORY.createStringValue("value 2");
    sequence.add(lit2);
    expectedSize++;
    final Value lit3 = FACTORY.createStringValue("value 3");
    sequence.add(lit3);
    expectedSize++;

    assertEquals(expectedSize, sequence.size());
    assertFalse(sequence.isEmpty());
    Iterator<Any> elements = sequence.iterator();
    assertTrue(elements.hasNext());
    assertEquals(lit1, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit2, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit3, elements.next());
    assertFalse(elements.hasNext());
    assertEquals(lit1, sequence.get(0));
    assertEquals(lit2, sequence.get(1));
    assertEquals(lit3, sequence.get(2));

    sequence.remove(lit2);
    expectedSize--;

    assertEquals(expectedSize, sequence.size());
    assertFalse(sequence.isEmpty());
    elements = sequence.iterator();
    assertTrue(elements.hasNext());
    assertEquals(lit1, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit3, elements.next());
    assertFalse(elements.hasNext());
    assertEquals(lit1, sequence.get(0));
    assertEquals(lit3, sequence.get(1));

    sequence.clear();
    expectedSize = 0;

    assertEquals(expectedSize, sequence.size());
    assertTrue(sequence.isEmpty());
    assertFalse(sequence.iterator().hasNext());

  }

  /**
   * test AnyMap.
   */
  public void testMap() {
    int expectedSize = 0;
    final AnyMap map = FACTORY.createAnyMap();
    assertEquals(expectedSize, map.size());
    assertTrue(map.isEmpty());
    assertTrue(map.keySet().isEmpty());
    assertTrue(map.values().isEmpty());
    assertTrue(map.entrySet().isEmpty());

    final Value lit1 = FACTORY.createStringValue("value 1");
    map.put("a1", lit1);
    expectedSize++;
    final Value lit2 = FACTORY.createStringValue("value 2");
    map.put("a2", lit2);
    expectedSize++;
    final Value lit3 = FACTORY.createStringValue("value 3");
    map.put("a3", lit3);
    expectedSize++;

    assertEquals(expectedSize, map.size());
    assertFalse(map.isEmpty());
    assertFalse(map.keySet().isEmpty());
    assertFalse(map.values().isEmpty());
    assertFalse(map.entrySet().isEmpty());
    Iterator<String> keys = map.keySet().iterator();
    assertTrue(keys.hasNext());
    assertEquals("a1", keys.next());
    assertTrue(keys.hasNext());
    assertEquals("a2", keys.next());
    assertTrue(keys.hasNext());
    assertEquals("a3", keys.next());
    assertFalse(keys.hasNext());
    Iterator<Any> elements = map.values().iterator();
    assertTrue(elements.hasNext());
    assertEquals(lit1, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit2, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit3, elements.next());
    assertFalse(elements.hasNext());
    assertEquals(lit1, map.get("a1"));
    assertEquals(lit2, map.get("a2"));
    assertEquals(lit3, map.get("a3"));

    map.remove("a2");
    expectedSize--;

    assertEquals(expectedSize, map.size());
    assertFalse(map.isEmpty());
    keys = map.keySet().iterator();
    assertTrue(keys.hasNext());
    assertEquals("a1", keys.next());
    assertTrue(keys.hasNext());
    assertEquals("a3", keys.next());
    assertFalse(keys.hasNext());
    elements = map.values().iterator();
    assertTrue(elements.hasNext());
    assertEquals(lit1, elements.next());
    assertTrue(elements.hasNext());
    assertEquals(lit3, elements.next());
    assertFalse(elements.hasNext());
    assertEquals(lit1, map.get("a1"));
    assertEquals(lit3, map.get("a3"));

    map.clear();
    expectedSize = 0;
    assertEquals(expectedSize, map.size());
    assertTrue(map.isEmpty());
    assertTrue(map.keySet().isEmpty());
    assertTrue(map.values().isEmpty());
    assertTrue(map.entrySet().isEmpty());

  }
}
