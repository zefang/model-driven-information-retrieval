/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework.util.internal;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.CrawlerCallback;
import org.eclipse.smila.connectivity.framework.CrawlerCriticalException;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.connectivity.framework.DataReference;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;

/**
 * Default Implementation of the interface DataReference.
 * 
 * @see DataReference
 */
public class DataReferenceImpl implements DataReference {
  /**
   * The id.
   */
  private final ConnectivityId _id;

  /**
   * The record hash.
   */
  private final String _hash;

  /**
   * A reference to the CrawlerCallback.
   */
  private final CrawlerCallback _callback;

  /**
   * The factory used to create new record objects.
   */
  private final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * Conversion Constructor.
   * 
   * @param callback
   *          reference to a CrawlerCallback
   * @param sourceId
   *          the id of the source
   * @param id
   *          the record id
   * @param hash
   *          the record hash
   */
  @Deprecated
  public DataReferenceImpl(CrawlerCallback callback, String sourceId, String id, String hash) {
    if (callback == null) {
      throw new IllegalArgumentException("Parameter callback must not be null");
    }
    if (id == null) {
      throw new IllegalArgumentException("Parameter id must not be null");
    }
    if (hash == null) {
      throw new IllegalArgumentException("Parameter hash must not be null");
    }
    _callback = callback;
    _id = new ConnectivityId(sourceId, id);
    _hash = hash;
  }

  /**
   * Conversion Constructor.
   * 
   * @param callback
   *          reference to a CrawlerCallback
   * @param id
   *          the record id
   * @param hash
   *          the record hash
   */
  public DataReferenceImpl(CrawlerCallback callback, ConnectivityId id, String hash) {
    if (callback == null) {
      throw new IllegalArgumentException("Parameter callback must not be null");
    }
    if (id == null) {
      throw new IllegalArgumentException("Parameter id must not be null");
    }
    if (hash == null) {
      throw new IllegalArgumentException("Parameter hash must not be null");
    }
    _callback = callback;
    _id = id;
    _hash = hash;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.DataReference#getId()
   */
  @Override
  public ConnectivityId getId() {
    return _id;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.DataReference#getHash()
   */
  @Override
  public String getHash() {
    return _hash;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.DataReference#getRecord()
   */
  @Override
  public Record getRecord() throws CrawlerException, CrawlerCriticalException {
    // create record
    final Record record = _dataFactory.createRecord();
    record.setId(_id.getObjectId());
    record.setSource(_id.getDataSourceId());

    // set metadata
    record.getMetadata().putAll(_callback.getMetadata(_id));

    // fill attachments
    final String[] attachmenNames = _callback.getAttachmentNames(_id);
    for (String name : attachmenNames) {
      record.setAttachment(name, _callback.getAttachment(_id, name));
    }
    return record;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.DataReference#dispose()
   */
  @Override
  public void dispose() {
    _callback.dispose(_id);
  }
}
