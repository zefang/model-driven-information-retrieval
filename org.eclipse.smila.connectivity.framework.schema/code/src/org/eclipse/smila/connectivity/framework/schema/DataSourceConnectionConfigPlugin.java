/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.schema;

/**
 * The Interface DataSourceConnectionConfigPlugin.
 */
public interface DataSourceConnectionConfigPlugin {

  /**
   * Gets the schema location relative bundle root.
   * 
   * @return the schema location
   */
  String getSchemaLocation();

  /**
   * Gets the messages package.
   * 
   * @return the messages package
   */
  String getMessagesPackage();

}
