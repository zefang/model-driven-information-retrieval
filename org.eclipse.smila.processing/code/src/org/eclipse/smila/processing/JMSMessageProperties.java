/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - rename: JMSMessageAnnotations -> JMSMessageProperties
 **********************************************************************************************************************/
package org.eclipse.smila.processing;

/**
 * Collection of properties used for JMS message properties.
 */
public final class JMSMessageProperties {

  /**
   * Constant for the record metadata entry '_messageProperties'.
   */
  public static final String MESSAGE_PROPERTIES = "_messageProperties";

  /**
   * Name of 'Operation' property.
   */
  public static final String PROPERTY_OPERATION = "Operation";

  /**
   * Name of 'DataSourceID' property.
   */
  public static final String PROPERTY_SOURCE = "DataSourceID";

  /**
   * Name of 'isXmlSnippet' property.
   */
  public static final String PROPERTY_IS_XML_SNIPPET = "isXmlSnippet";

  /**
   * Private constructor to avoid instance creation.
   */
  private JMSMessageProperties() {
  }
}
