/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.datamodel.Record;

/**
 * A proxy object interface to a record provided by a Crawler. The object contains the Id and the hash value of the
 * record but no additional data. The complete record can be loaded via the CrawlerCallback.
 */
public interface DataReference {
  /**
   * Returns the Id of the referenced record.
   * 
   * @return the Id of the referenced record
   */
  ConnectivityId getId();

  /**
   * Returns the hash of the referenced record as a String.
   * 
   * @return the hash of the referenced record as a String
   */
  String getHash();

  /**
   * Returns the complete Record object via the CrawlerCallback.
   * 
   * @return the complete record
   * @throws CrawlerException
   *           if any non critical error occurs
   * @throws CrawlerCriticalException
   *           if any critical error occurs
   */
  Record getRecord() throws CrawlerException, CrawlerCriticalException;

  /**
   * Disposes the referenced record object.
   */
  void dispose();
}
