/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.security;

/**
 * Constants for names and values of record security attribute commonly used in crawlers and search pipelines. Here is a
 * short example how the attribute structure could look like:
 * 
 * <pre>
 * _accessRights
 * |
 * |-READ
 * | |
 * | |- PRINCIPALS 
 * | |  + user1 
 * | |  + user2 
 * | |
 * | |- GROUPS 
 * |    + group1 
 * |    + group2 
 * |     
 * |-WRITE
 *   |
 *   |- PRINCIPALS 
 *      + userX 
 *   ...
 * </pre>
 */
public final class SecurityAttributes {

  /**
   * Constant for the base attribute ACCESS_RIGHTS.
   */
  public static final String ACCESS_RIGHTS = "_accessRights";

  /**
   * predefined sub attributes of attribute "ACCESS_RIGHTS".
   * 
   */
  public enum AccessRightType {
    /**
     * type name of access right READ.
     */
    READ,
    /**
     * type name of access right WRITE.
     */
    WRITE
  }

  /**
   * predefined sub attributes of any attribute of enum {@link AccessRightType}.
   * 
   */
  public enum EntityType {
    /**
     * type name of principal PRINCIPALS.
     */
    PRINCIPALS,
    /**
     * type name of principal GROUPS.
     */
    GROUPS
  }

  /**
   * prevent instance creation.
   */
  private SecurityAttributes() {
    // prevent instance creation
  }
}
