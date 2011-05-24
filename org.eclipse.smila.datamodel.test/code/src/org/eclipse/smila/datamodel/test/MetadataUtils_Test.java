/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.MetadataUtils;

/**
 */
public final class MetadataUtils_Test extends TestCase {

  private AnyMap _metadata;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    _metadata = DataFactoryCreator.createDefaultFactory().createAnyMap();

  }

  /**
   * tests creation of maps on the fly.
   */
  public void test_Map_Create() throws Exception {
    AnyMap child;

    child = MetadataUtils.getMap(_metadata, true, "child");
    assertNotNull(child);
    assertTrue(child == _metadata.getMap("child"));

    _metadata.clear();
    child = MetadataUtils.getMap(_metadata, true, "child/grantChild");
    assertNotNull(child);
    assertTrue(child == _metadata.getMap("child").getMap("grantChild"));

  }

  /**
   * tests creation of maps on the fly.
   */
  public void test_Map_NoCreate_NotExisting() throws Exception {
    AnyMap child;

    child = MetadataUtils.getMap(_metadata, false, "child");
    assertNull(child);
    assertTrue(_metadata.isEmpty());

    _metadata.clear();
    child = MetadataUtils.getMap(_metadata, false, "child/grantChild");
    assertNull(child);
    assertTrue(_metadata.isEmpty());

  }

  /**
   * tests regular access to existing maps
   */
  public void test_Map_NoCreate_Existing() throws Exception {
    final AnyMap map1 = _metadata.getMap("child", true);
    final AnyMap map2 = map1.getMap("grantChild", true);
    AnyMap child;

    child = MetadataUtils.getMap(_metadata, false, "child");
    assertNotNull(child);
    assertTrue(map1 == child);

    child = MetadataUtils.getMap(_metadata, false, "child/grantChild");
    assertNotNull(child);
    assertTrue(map2 == child);

  }

  /**
   * tests that no existing maps get overwritten
   */
  public void test_Map_Create_Existing() throws Exception {
    final AnyMap map1 = _metadata.getMap("child", true);
    final AnyMap map2 = map1.getMap("grantChild", true);
    AnyMap child;

    child = MetadataUtils.getMap(_metadata, true, "child");
    assertNotNull(child);
    assertTrue(map1 == child);

    child = MetadataUtils.getMap(_metadata, true, "child/grantChild");
    assertNotNull(child);
    assertTrue(map2 == child);

  }
}
