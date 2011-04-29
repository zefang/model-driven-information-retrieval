/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.security.test;

import java.util.ArrayList;
import java.util.Collection;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.security.SecurityAttribute;
import org.eclipse.smila.security.SecurityAttributes;
import org.eclipse.smila.security.SecurityAttributes.AccessRightType;
import org.eclipse.smila.security.SecurityAttributes.EntityType;

/**
 * The Class TestSecurityResolver.
 */
public class TestSecurityAttribute extends TestCase {

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
   * Test creation of access rights attributes.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testSecurityAttributes() throws Exception {
    final Record record = DataFactoryCreator.createDefaultFactory().createRecord();
    final SecurityAttribute sa = new SecurityAttribute(record);

    final AnyMap acessRights = sa.getAccessRights();
    assertNotNull(acessRights);
    assertTrue(acessRights.isEmpty());

    final AnyMap writeRights = sa.getAccessRights(AccessRightType.WRITE);
    assertNotNull(writeRights);
    assertTrue(writeRights.isEmpty());

    final AnyMap readRights = sa.getAccessRights(AccessRightType.READ);
    assertNotNull(readRights);
    assertTrue(readRights.isEmpty());

    final AnySeq readPrincipals = sa.getAccessRights(AccessRightType.READ, EntityType.PRINCIPALS);
    assertNotNull(readPrincipals);
    assertTrue(readPrincipals.isEmpty());

    final AnySeq readGroups = sa.getAccessRights(AccessRightType.READ, EntityType.GROUPS);
    assertNotNull(readGroups);
    assertTrue(readGroups.isEmpty());

    // now the attributes must contain sub attributes
    assertNotNull(readRights);
    assertFalse(readRights.isEmpty());
    assertTrue(readRights.get(EntityType.PRINCIPALS.name()).isSeq());

    assertNotNull(acessRights);
    assertFalse(acessRights.isEmpty());
    assertEquals(writeRights, acessRights.get(AccessRightType.WRITE.name()));
    assertEquals(readRights, acessRights.get(AccessRightType.READ.name()));

    // write still empty:
    assertNotNull(writeRights);
    assertTrue(writeRights.isEmpty());

    // remove sub attributes
    sa.remove(AccessRightType.READ, EntityType.PRINCIPALS);
    sa.remove(AccessRightType.READ, EntityType.GROUPS);
    assertNotNull(readRights);
    assertTrue(readRights.isEmpty());

    sa.remove(AccessRightType.READ);
    sa.remove(AccessRightType.WRITE);
    assertNotNull(acessRights);
    assertTrue(acessRights.isEmpty());

    sa.remove();
    assertNull(record.getMetadata().get(SecurityAttributes.ACCESS_RIGHTS));
  }

  /**
   * Test creation of access rights attributes.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testSecurityAAttributeValues() throws Exception {
    final Record record = DataFactoryCreator.createDefaultFactory().createRecord();
    final SecurityAttribute sa = new SecurityAttribute(record);
    final String[] users = { "user1", "user2", "user3" };
    final String[] groups = { "group1", "group2", "group3" };

    // add users and groups
    for (int i = 0; i < users.length; i++) {
      sa.add(AccessRightType.READ, EntityType.PRINCIPALS, users[i]);
      sa.add(AccessRightType.READ, EntityType.GROUPS, groups[i]);
    }

    // check attributes and values
    final AnyMap readRights = sa.getAccessRights(AccessRightType.READ);
    assertNotNull(readRights);
    assertFalse(readRights.isEmpty());
    assertEquals(2, readRights.keySet().size());

    final AnySeq readPrincipals = sa.getAccessRights(AccessRightType.READ, EntityType.PRINCIPALS);
    assertNotNull(readPrincipals);
    assertEquals(users.length, readPrincipals.size());
    Collection<String> userValues = new ArrayList<String>();
    for (Any principal : readPrincipals) {
      userValues.add(((Value) principal).asString());
    }
    assertEquals(users.length, userValues.size());
    for (String user : users) {
      assertTrue(userValues.contains(user));
    }

    final AnySeq readGroups = sa.getAccessRights(AccessRightType.READ, EntityType.GROUPS);
    assertNotNull(readGroups);
    assertEquals(groups.length, readGroups.size());
    Collection<String> groupValues = new ArrayList<String>();
    for (Any group : readGroups) {
      groupValues.add(((Value) group).asString());
    }
    assertEquals(groups.length, groupValues.size());
    for (String group : groups) {
      assertTrue(groupValues.contains(group));
    }

    // remove
    sa.remove(AccessRightType.READ, EntityType.PRINCIPALS, users[0]);
    userValues = new ArrayList<String>();
    for (Any principal : readPrincipals) {
      userValues.add(((Value) principal).asString());
    }
    assertEquals(users.length - 1, userValues.size());
    assertFalse(userValues.contains(users[0]));

    sa.remove(AccessRightType.READ, EntityType.GROUPS, groups[0]);
    groupValues = new ArrayList<String>();
    for (Any group : readGroups) {
      groupValues.add(((Value) group).asString());
    }
    assertEquals(groups.length - 1, groupValues.size());
    assertFalse(groupValues.contains(groups[0]));

    sa.remove(AccessRightType.READ, EntityType.PRINCIPALS);
    sa.remove(AccessRightType.READ, EntityType.GROUPS);
    assertTrue(readRights.isEmpty());
  }

}
