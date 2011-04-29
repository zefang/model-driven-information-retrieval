/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework.util;

import java.util.Iterator;
import java.util.Map.Entry;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;

/**
 * A factory to create Id objects in Crawlers and Agents.
 */
public final class ConnectivityIdFactory {

  /**
   * singleton instance.
   */
  private static ConnectivityIdFactory s_instance;

  /**
   * Default Constructor.
   */
  private ConnectivityIdFactory() {
  }

  /**
   * Returns the singleton instance of the IdFactory.
   * 
   * @return the IdFactory
   */
  public static ConnectivityIdFactory getInstance() {
    if (s_instance == null) {
      s_instance = new ConnectivityIdFactory();
    }
    return s_instance;
  }

  /**
   * Create an Id object based on the given Attributes.
   * 
   * @param dataSourceId
   *          the dataSourceId. Must not be null or empty.
   * @param idAttributes
   *          an AnyMap of Any objects whose entries are used to create the Id. Must not be null or empty.
   * @return the ConnectivityId object
   */
  public ConnectivityId createId(final String dataSourceId, final AnyMap idAttributes) {
    if (dataSourceId == null || dataSourceId.trim().length() == 0) {
      throw new IllegalArgumentException("Parameter dataSourceId must not be null or empty");
    }
    if (idAttributes == null || idAttributes.size() == 0) {
      throw new IllegalArgumentException("Parameter idAttributes must not be null or empty");
    }
    // concatenate values of attributes with multiple values
    final StringBuilder sb = new StringBuilder(dataSourceId).append(":<");
    final Iterator<Entry<String, Any>> iter = idAttributes.entrySet().iterator();
    while (iter.hasNext()) {
      final Entry<String, Any> entry = iter.next();
      sb.append(entry.getKey()).append('=').append(entry.getValue().toString());
      if (iter.hasNext()) {
        sb.append(';');
      }
    }
    sb.append('>');
    return new ConnectivityId(dataSourceId, sb.toString());
  }

  /**
   * Create an Id object based on data source and simple object id.
   * 
   * @param dataSourceId
   *          the dataSourceId. Must not be null or empty.
   * @param simpleId
   *          a simple object id
   * @return the ConnectivityId object
   */
  public ConnectivityId createId(final String dataSourceId, final String simpleId) {
    if (dataSourceId == null || dataSourceId.trim().length() == 0) {
      throw new IllegalArgumentException("Parameter dataSourceId must not be null or empty");
    }
    final StringBuilder sb = new StringBuilder(dataSourceId).append(":<");
    sb.append(simpleId);
    sb.append('>');
    return new ConnectivityId(dataSourceId, sb.toString());
  }
}
