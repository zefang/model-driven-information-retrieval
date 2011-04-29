/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.util.test;

import java.util.HashMap;
import java.util.Map;

import org.eclipse.smila.connectivity.framework.util.ConnectivityHashFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test case for ConnectivityHashFactory.
 */
public class TestConnectivityHashFactory extends DeclarativeServiceTestCase {

  /**
   * Reference to a ConnectivityHashFactory instance.
   */
  private ConnectivityHashFactory _chf;

  /** the default DataFactory. */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    _chf = ConnectivityHashFactory.getInstance();
    assertNotNull(_chf);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
  }

  /**
   * Test ConnectivityHashFactory.
   * 
   * @throws Exception
   *           the Exception
   */
  public void testConnectivityHashFactory() throws Exception {

    // prepare parameters
    final AnyMap anyMap1 = _dataFactory.createAnyMap();
    anyMap1.put("att1", _dataFactory.createStringValue("value1"));
    final AnyMap anyMap2 = _dataFactory.createAnyMap();
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createStringValue("value1"));
    anySeq.add(_dataFactory.createStringValue("value2"));
    anyMap2.put("att2", anySeq);

    final String attachment1 = "A test attachment";
    final byte[] attachment2 = "Another test attachment".getBytes();

    // create and check hashes
    createAndCheck(anyMap1, anyMap2, attachment1, attachment2);
  }

  /**
   * Test exception handling.
   * 
   * @throws Exception
   *           the Exception
   */
  public void testOneParamExceptions() throws Exception {
    try {
      _chf.createHash((AnyMap) null);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter hashAttributes must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _chf.createHash(_dataFactory.createAnyMap());
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter hashAttributes must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _chf.createHash((Map<String, ?>) null);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter hashAttachments must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _chf.createHash(new HashMap<String, String>());
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter hashAttachments must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    final HashMap<String, Integer> map = new HashMap<String, Integer>();
    map.put("key", 1);
    try {
      _chf.createHash(map);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Attachments must be of type String or byte[]", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }
  }

  /**
   * Test exception handling.
   * 
   * @throws Exception
   *           the Exception
   */
  public void testTwoParamExceptions() throws Exception {
    try {
      _chf.createHash(null, null);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameters hashAttributes and hashAttachments must not both be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _chf.createHash(_dataFactory.createAnyMap(), null);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameters hashAttributes and hashAttachments must not both be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _chf.createHash(null, new HashMap<String, String>());
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameters hashAttributes and hashAttachments must not both be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }
  }

  /**
   * Create and check hashes.
   * 
   * @param att1
   *          a first attribute map
   * @param att2
   *          a second attribute map
   * @param attachment1
   *          a String attachment
   * @param attachment2
   *          a byte[] attachment
   * @throws Exception
   *           if any error occurs
   */
  private void createAndCheck(final AnyMap att1, final AnyMap att2, final String attachment1,
    final byte[] attachment2) throws Exception {
    final HashMap<String, Object> map = new HashMap<String, Object>();

    // compute hashes
    final String hash1 = _chf.createHash(att1);
    final String hash2 = _chf.createHash(att2);
    final AnyMap mergedMap = _dataFactory.createAnyMap();
    mergedMap.putAll(att1);
    mergedMap.putAll(att2);
    final String hash3 = _chf.createHash(mergedMap);
    map.put("attachment1", attachment1);
    final String hash4 = _chf.createHash(map);
    map.put("attachment2", attachment2);
    final String hash5 = _chf.createHash(map);
    map.clear();
    map.put("attachment2", attachment2);
    final String hash6 = _chf.createHash(map);

    // check results
    assertNotNull(hash1);
    assertNotNull(hash2);
    assertNotNull(hash3);
    assertNotNull(hash4);
    assertNotNull(hash5);
    assertNotNull(hash6);
    assertNotSame(hash1, hash2);
    assertNotSame(hash1, hash3);
    assertNotSame(hash1, hash4);
    assertNotSame(hash1, hash5);
    assertNotSame(hash1, hash6);
    assertNotSame(hash2, hash3);
    assertNotSame(hash2, hash4);
    assertNotSame(hash2, hash5);
    assertNotSame(hash2, hash6);
    assertNotSame(hash3, hash4);
    assertNotSame(hash3, hash5);
    assertNotSame(hash3, hash6);
    assertNotSame(hash4, hash5);
    assertNotSame(hash4, hash6);
    assertNotSame(hash5, hash6);

    // check if hashes are reproducable
    final String hash11 = _chf.createHash(att1);
    final String hash12 = _chf.createHash(att2);
    final String hash13 = _chf.createHash(mergedMap);
    map.clear();
    map.put("attachment1", attachment1);
    final String hash14 = _chf.createHash(map);
    map.put("attachment2", attachment2);
    final String hash15 = _chf.createHash(map);
    map.clear();
    map.put("attachment2", attachment2);
    final String hash16 = _chf.createHash(map);

    assertNotNull(hash11);
    assertNotNull(hash12);
    assertNotNull(hash13);
    assertNotNull(hash14);
    assertNotNull(hash15);
    assertNotNull(hash16);
    assertEquals(hash1, hash11);
    assertEquals(hash2, hash12);
    assertEquals(hash3, hash13);
    assertEquals(hash4, hash14);
    assertEquals(hash5, hash15);
    assertEquals(hash6, hash16);
  }
}
