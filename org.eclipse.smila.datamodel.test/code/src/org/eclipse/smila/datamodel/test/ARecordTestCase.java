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

import junit.framework.AssertionFailedError;
import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;

/**
 * Abstract base class for record test cases. Provides methods for asserting record equality.
 * 
 * @author jschumacher
 * 
 */
public abstract class ARecordTestCase extends TestCase {

  /**
   * check if two records have the same content.
   * 
   * @param record1
   *          expected record
   * @param record2
   *          record to test
   */
  protected void checkRecordEquality(final Record record1, final Record record2) {
    checkAnyMapEquality(record1.getMetadata(), record2.getMetadata());

    assertEquals("number of attachments differs", record1.attachmentSize(), record2.attachmentSize());
    if (record1.hasAttachments()) {
      final Iterator<String> names = record1.getAttachmentNames();
      while (names.hasNext()) {
        final String name = names.next();
        assertTrue("missing attachment", record2.hasAttachment(name));
        // equality of attachment value not checked because attachment values do not go into XML.
      }
    }

    assertEquals(record1.getId(), record2.getId());
  }

  /**
   * check if two records have different content.
   * 
   * @param record1
   *          one record
   * @param record2
   *          another record
   */
  protected void checkRecordInequality(final Record record1, final Record record2) {
    boolean recordsEqual = false;
    try {
      checkRecordEquality(record1, record2);
      recordsEqual = true;
    } catch (final AssertionFailedError ex) {
      System.out.println("Difference found: " + ex.toString());
    } catch (final Exception ex) {
      fail("wrong exception caught: " + ex.toString());
    }
    if (recordsEqual) {
      fail("a difference should have been found");
    }
  }

  /**
   * check if two metadata objects have the same content.
   * 
   * @param mobject1
   *          expected metadata object
   * @param mobject2
   *          metadata object to test
   */
  private void checkAnyMapEquality(final AnyMap mobject1, final AnyMap mobject2) {
    if (mobject1 != null || mobject2 != null) {
      assertNotNull(mobject1);
      assertNotNull(mobject2);
      assertEquals("number of attributes differs", mobject1.size(), mobject2.size());

      final Iterator<String> expectedAttributeNames = mobject1.keySet().iterator();
      while (expectedAttributeNames.hasNext()) {
        final String name = expectedAttributeNames.next();
        assertTrue("missing attribute " + name, mobject2.containsKey(name));
        checkAnyEquality(mobject1.get(name), mobject2.get(name));
      }
    }
  }

  /**
   * check if two metadata objects have the same content.
   * 
   * @param mobject1
   *          expected metadata object
   * @param mobject2
   *          metadata object to test
   */
  private void checkAnySeqEquality(final AnySeq mobject1, final AnySeq mobject2) {
    if (mobject1 != null || mobject2 != null) {
      assertNotNull(mobject1);
      assertNotNull(mobject2);
      assertEquals("number of elements differs", mobject1.size(), mobject2.size());

      for (int i = 0; i < mobject1.size(); i++) {
        checkAnyEquality(mobject1.get(i), mobject2.get(i));
      }
    }
  }

  /**
   * check if two attributes have the same content.
   * 
   * @param attribute1
   *          expected attribute
   * @param attribute2
   *          attribute to test
   */
  private void checkAnyEquality(final Any attribute1, final Any attribute2) {
    assertNotNull(attribute1);
    assertNotNull(attribute2);
    assertEquals(attribute1.getValueType(), attribute2.getValueType());
    switch (attribute1.getValueType()) {
      case MAP:
        checkAnyMapEquality((AnyMap) attribute1, (AnyMap) attribute2);
        break;
      case SEQ:
        checkAnySeqEquality((AnySeq) attribute1, (AnySeq) attribute2);
        break;
      default:
        assertEquals(attribute1, attribute2);
        break;
    }
  }

}
