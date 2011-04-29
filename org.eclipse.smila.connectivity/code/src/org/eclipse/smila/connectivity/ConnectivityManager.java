/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity;

import org.eclipse.smila.datamodel.Record;

/**
 * The Interface ConnectivityManager.
 */
public interface ConnectivityManager {

  /**
   * Record annotation jobId.
   */
  String ATTRIBUTE_JOB_ID = "jobId";

  /**
   * Put the given records for further processing to the ADD Queue.
   * 
   * @param records
   *          a list of Record objects
   * 
   * @return the number of records successfully added to the ADD Queue
   * 
   * @throws ConnectivityException
   *           if any error occurs
   */
  int add(Record[] records) throws ConnectivityException;

  /**
   * Put the the given records for Deletion from the system to the DELETE Queue.
   * 
   * @param records
   *          a list of records to delete
   * 
   * @return the number of records successfully added to the DELETE Queue
   * 
   * @throws ConnectivityException
   *           if any error occurs
   */
  int delete(Record[] records) throws ConnectivityException;
}
