/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.datamodel.AnyMap;

/**
 * A callback interface to access metadata and attachments of crawled data.
 */
public interface CrawlerCallback {
  /**
   * Returns the metadata for the given id.
   * 
   * @param id
   *          the record id
   * @return the MObject
   * @throws CrawlerException
   *           if any non critical error occurs
   * @throws CrawlerCriticalException
   *           if any critical error occurs
   */
  AnyMap getMetadata(final ConnectivityId id) throws CrawlerException, CrawlerCriticalException;

  /**
   * Returns an array of String[] containing the names of the available attachments for the given id.
   * 
   * @param id
   *          the record id
   * @return an array of String[] containing the names of the available attachments
   * @throws CrawlerException
   *           if any non critical error occurs
   * @throws CrawlerCriticalException
   *           if any critical error occurs
   */
  String[] getAttachmentNames(final ConnectivityId id) throws CrawlerException, CrawlerCriticalException;

  /**
   * Returns the attachment for the given Id and name pair.
   * 
   * @param id
   *          the record id
   * @param name
   *          the name of the attachment
   * @return a byte[] containing the attachment
   * @throws CrawlerException
   *           if any non critical error occurs
   * @throws CrawlerCriticalException
   *           if any critical error occurs
   */
  byte[] getAttachment(final ConnectivityId id, final String name) throws CrawlerException,
    CrawlerCriticalException;

  /**
   * Disposes the record with the given Id.
   * 
   * @param id
   *          the record id
   */
  void dispose(final ConnectivityId id);
}
