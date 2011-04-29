/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.compound;

import org.eclipse.smila.connectivity.framework.Crawler;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.datamodel.Record;

/**
 * The Interface CompoundCrawler.
 */
public interface CompoundCrawler extends Crawler {

  /**
   * Sets the compound record to extract data from.
   * 
   * @param record
   *          the compound Record
   * @throws CrawlerException
   *           if parameter record is null
   */
  void setCompoundRecord(final Record record) throws CrawlerException;

  /**
   * Gets the compound record.
   * 
   * @return the compound record.
   */
  Record getCompoundRecord();
}
