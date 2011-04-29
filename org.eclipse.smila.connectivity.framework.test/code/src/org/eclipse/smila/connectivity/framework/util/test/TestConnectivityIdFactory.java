/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.util.test;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Test case for ConnectivityIdFactory.
 */
public class TestConnectivityIdFactory extends DeclarativeServiceTestCase {

  /**
   * Reference to a ConnectivityIdFactory instance.
   */
  private ConnectivityIdFactory _cif;

  /** the default DataFactory. */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    _cif = ConnectivityIdFactory.getInstance();
    assertNotNull(_cif);
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
   * Test ConnectivityIdFactory.
   * 
   * @throws Exception
   *           the Exception
   */
  public void testConnectivityIdFactory() throws Exception {
    // prepare parameters
    final AnyMap anyMap1 = _dataFactory.createAnyMap();
    anyMap1.put("att1", _dataFactory.createStringValue("value1"));
    final AnyMap anyMap2 = _dataFactory.createAnyMap();
    final AnySeq anySeq = _dataFactory.createAnySeq();
    anySeq.add(_dataFactory.createStringValue("value1"));
    anySeq.add(_dataFactory.createStringValue("value2"));
    anyMap2.put("att2", anySeq);

    final String dataSourceId = "testDataSource";
    final AnyMap simpleIdAttributes = anyMap1;
    final AnyMap complexIdAttributes = _dataFactory.createAnyMap();
    complexIdAttributes.putAll(anyMap1);
    complexIdAttributes.putAll(anyMap2);

    // create and check Id with simple key
    final ConnectivityId id1 = _cif.createId(dataSourceId, simpleIdAttributes);
    assertNotNull(id1);
    assertEquals(id1, _cif.createId(dataSourceId, simpleIdAttributes));
    assertEquals(dataSourceId, id1.getDataSourceId());
    assertTrue(id1.getObjectId().contains("value1"));
    assertTrue(id1.getObjectId().contains("att1"));
    // complex key
    final ConnectivityId id2 = _cif.createId(dataSourceId, complexIdAttributes);
    assertFalse(id1.equals(id2));
    assertEquals(dataSourceId, id2.getDataSourceId());
    assertTrue(id2.getObjectId().contains("value1"));
    assertTrue(id2.getObjectId().contains("value2"));
    assertTrue(id2.getObjectId().contains("att2"));
  }

  /**
   * Test exception handling.
   * 
   * @throws Exception
   *           the Exception
   */
  public void testExceptions() throws Exception {
    final AnyMap anyMap1 = _dataFactory.createAnyMap();
    anyMap1.put("att1", _dataFactory.createStringValue("value1"));
    final String dataSourceId = "test";
    final AnyMap idAttributes = anyMap1;

    try {
      _cif.createId(null, idAttributes);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter dataSourceId must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _cif.createId("", idAttributes);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter dataSourceId must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _cif.createId(dataSourceId, (AnyMap) null);
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter idAttributes must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      _cif.createId(dataSourceId, _dataFactory.createAnyMap());
      fail("expected IllegalArgumentException");
    } catch (final IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("Parameter idAttributes must not be null or empty", e.getMessage());
    } catch (final Exception e) {
      fail("expected IllegalArgumentException");
    }
  }
}
