/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.security;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.security.SecurityAttributes.AccessRightType;
import org.eclipse.smila.security.SecurityAttributes.EntityType;

/**
 * 
 */
public final class SecurityAttribute {

  /**
   * The metadata object to set the security attribute on.
   */
  private final AnyMap _mObject;

  /**
   * the security attribute.
   */
  private AnyMap _attribute;

  /**
   * The {@link DataFactory} to use to create attribute objects.
   */
  private DataFactory _factory;

  /**
   * Conversion Constructor.
   * 
   * @param record
   *          the {@link Record} to contain the security attribute
   */
  public SecurityAttribute(final Record record) {
    this(record.getMetadata(), record.getFactory());
  }

  /**
   * Conversion Constructor.
   * 
   * @param metadata
   *          the {@link AnyMap} to contain the security attribute
   */
  public SecurityAttribute(final AnyMap metadata) {
    this(metadata, null);
  }

  /**
   * Conversion Constructor.
   * 
   * @param metadata
   *          the {@link AnyMap} to contain the security attribute
   * @param factory
   *          the RecordFactory to use for attribute creation
   */
  public SecurityAttribute(final AnyMap metadata, DataFactory factory) {
    _mObject = metadata;
    if (factory != null) {
      _factory = factory;
    } else {
      _factory = DataFactoryCreator.createDefaultFactory();
    }
  }

  /**
   * Returns the {@link SecurityAttributes#ACCESS_RIGHTS} attribute. If it does not exist it is created.
   * 
   * @return the {@link SecurityAttributes#ACCESS_RIGHTS} attribute
   */
  public AnyMap getAccessRights() {
    if (_attribute == null) {
      _attribute = ensureAnyMap(_mObject, SecurityAttributes.ACCESS_RIGHTS);
    }
    return _attribute;
  }

  /**
   * Returns the security attribute of the given {@link AccessRightType}. If it does not exist it is created.
   * 
   * @param accessRightType
   *          the AccessRightType
   * @return the security attribute
   */
  public AnyMap getAccessRights(AccessRightType accessRightType) {
    return ensureAnyMap(getAccessRights(), accessRightType.name());
  }

  /**
   * Returns the security attribute of the given {@link AccessRightType} and {@link EntityType}. If it does not exist it
   * is created.
   * 
   * @param accessRightType
   *          the AccessRightType
   * @param entityType
   *          the EntityType
   * @return the security attribute
   */
  public AnySeq getAccessRights(AccessRightType accessRightType, EntityType entityType) {
    final AnyMap accessRights = ensureAnyMap(getAccessRights(), accessRightType.name());
    return ensureAnySeq(accessRights, entityType.name());
  }

  /**
   * Adds the given entity as a value to the security attribute specified by {@link AccessRightType} and
   * {@link EntityType}. Non existing attributes are created.
   * 
   * @param accessRightType
   *          the AccessRightType
   * @param entityType
   *          the EntityType
   * @param entity
   *          the value to add
   */
  public void add(AccessRightType accessRightType, EntityType entityType, String entity) {
    final AnySeq accessRightsList = getAccessRights(accessRightType, entityType);
    accessRightsList.add(_factory.createStringValue(entity));
  }

  /**
   * Removes the {@link SecurityAttributes#ACCESS_RIGHTS} attribute and all sub attribute.
   */
  public void remove() {
    _mObject.remove(SecurityAttributes.ACCESS_RIGHTS);
  }

  /**
   * Removes the security attribute with the given {@link AccessRightType} and all it's sub attribute.
   * 
   * @param accessRightType
   *          the AccessRightType
   */
  public void remove(AccessRightType accessRightType) {
    getAccessRights().remove(accessRightType.name());
  }

  /**
   * Removes the security attribute with the given {@link AccessRightType} and {@link EntityType} and all it's sub
   * attributes.
   * 
   * @param accessRightType
   *          the AccessRightType
   * @param entityType
   *          the EntityType
   */
  public void remove(AccessRightType accessRightType, EntityType entityType) {
    getAccessRights(accessRightType).remove(entityType.name());
  }

  /**
   * Removes the given entity from the security attribute of the given {@link AccessRightType} and {@link EntityType}.
   * 
   * @param accessRightType
   *          the AccessRightType
   * @param entityType
   *          the EntityType
   * @param entity
   *          the value to remove
   */
  public void remove(AccessRightType accessRightType, EntityType entityType, String entity) {
    getAccessRights(accessRightType, entityType).remove(_factory.createStringValue(entity));
  }

  /**
   * Ensures that the given {@link AnyMap} contains the attribute with the given name. If not the attribute is created
   * as an empty {@link AnyMap}.
   * 
   * @param targetMap
   *          the AnyMap
   * @param name
   *          the name of the attribute
   * @return the attribute object
   */
  private AnyMap ensureAnyMap(AnyMap targetMap, String name) {
    if (targetMap.containsKey(name)) {
      return targetMap.getMap(name);
    } else {
      final AnyMap attribute = _factory.createAnyMap();
      targetMap.put(name, attribute);
      return attribute;
    }
  }

  /**
   * Ensures that the given {@link AnyMap} contains the attribute with the given name. If not the attribute is created
   * as an empty {@link AnyMap}.
   * 
   * @param targetMap
   *          the AnyMap
   * @param name
   *          the name of the attribute
   * @return the attribute object
   */
  private AnySeq ensureAnySeq(AnyMap targetMap, String name) {
    if (targetMap.containsKey(name)) {
      return targetMap.getSeq(name);
    } else {
      final AnySeq attribute = _factory.createAnySeq();
      targetMap.put(name, attribute);
      return attribute;
    }
  }
}
