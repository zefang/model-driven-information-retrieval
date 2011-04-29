/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (Brox IT Solutions GmbH) -
 * initial creator
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.deltaindexing.jpa.impl.test;

import junit.framework.TestCase;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.deltaindexing.jpa.impl.DeltaIndexingDao;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;

/**
 * Test class for DeltaIndexingDao.
 */
public class TestDeltaIndexingDao extends TestCase {

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {

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
   * Test DeltaIndexingDao.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testDeltaIndexingDao() throws Exception {
    final DataFactory dataFactory = DataFactoryCreator.createDefaultFactory();
    final AnyMap idAttributes1 = dataFactory.createAnyMap();
    final AnyMap idAttributes2 = dataFactory.createAnyMap();
    idAttributes1.put("name", dataFactory.createStringValue("testKey1"));

    final ConnectivityId id = ConnectivityIdFactory.getInstance().createId("testSource", idAttributes1);
    final ConnectivityId id2 = new ConnectivityId(id, "child");
    final String hash = "12345";

    try {
      new DeltaIndexingDao(null, null, true, true);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter id is null", e.getMessage());
    } catch (Exception e) {
      fail("expected IllegalArgumentException");
    }

    try {
      new DeltaIndexingDao(id, null, true, true);
      fail("expected IllegalArgumentException");
    } catch (IllegalArgumentException e) {
      assertNotNull(e);
      assertEquals("parameter hash is null", e.getMessage());
    } catch (Exception e) {
      fail("expected IllegalArgumentException");
    }

    final DeltaIndexingDao dao = new DeltaIndexingDao(id, hash, true, false);
    assertNotNull(dao);

    assertEquals(id.getDataSourceId(), dao.getDataSourceId());
    assertEquals(hash, dao.getHash());
    assertEquals(id.getIdHash(), dao.getIdHash());
    assertNull(dao.getParentIdHash());
    assertTrue(dao.isCompound());
    assertFalse(dao.isModified());
    assertFalse(dao.isVisited());

    final String newHash = "4711";
    dao.modifyAndVisit(newHash);
    assertTrue(dao.isModified());
    assertTrue(dao.isVisited());
    assertEquals(newHash, dao.getHash());

    final ConnectivityId serializedId = dao.toId();
    assertNotNull(serializedId);
    assertEquals(id.getDataSourceId(), serializedId.getDataSourceId());
    assertEquals(id.getIdHash(), serializedId.getIdHash());
    assertEquals(id.getContainerId(), serializedId.getContainerId());

    final DeltaIndexingDao dao2 = new DeltaIndexingDao(id2, hash, true, false);
    final ConnectivityId serializedId2 = dao2.toId();
    assertNotNull(serializedId2);
    assertEquals(id2.getDataSourceId(), serializedId2.getDataSourceId());
    assertEquals(id2.getIdHash(), serializedId2.getIdHash());
    assertEquals(id2.getContainerId(), serializedId2.getContainerId());
    assertEquals(id2, serializedId2);
  }
}
