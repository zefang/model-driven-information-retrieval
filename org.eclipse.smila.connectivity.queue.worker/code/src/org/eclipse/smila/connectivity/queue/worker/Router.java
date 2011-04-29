/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.queue.worker;

import java.util.Map;

import org.eclipse.smila.datamodel.Record;

/**
 * The Interface Router.
 */
public interface Router extends QueueWorker {

  /**
   * Route records.
   * 
   * @param records
   *          the records
   * @param operation
   *          the operation
   * @return a Map of (key: record id, value: exception) if certain records could not be routed
   * 
   * @throws RouterException
   *           the router exception
   */
  Map<String, Exception> route(Record[] records, Operation operation) throws RouterException;
}
