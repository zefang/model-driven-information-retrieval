/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity;

import java.io.Serializable;

import org.eclipse.smila.utils.digest.DigestHelper;

/**
 * Identifier for objects in the connectivity area. Holds the source id and an object id.
 */
public class ConnectivityId implements Serializable {

  /** serial sersion. */
  private static final long serialVersionUID = 1L;

  /** The id of the datassource. */
  private final String _dataSourceId;

  /** The id of the object within the dataSource. */
  private final String _objectId;

  /** The id of the container. */
  private final ConnectivityId _containerId;

  /** the hash for the id. */
  private String _idHash;

  /**
   * Creaters a new ConnectivityId.
   * 
   * @param dataSourceId
   *          The (unique) id of the dataSource containing the object.
   * @param objectId
   *          the id of the object. Must be unique within the dataSource.
   */
  public ConnectivityId(final String dataSourceId, final String objectId) {
    this(dataSourceId, objectId, null);
  }

  /**
   * Creaters a new ConnectivityId.
   * 
   * @param dataSourceId
   *          The (unique) id of the dataSource containing the object.
   * @param objectId
   *          the id of the object. Must be unique within the dataSource.
   * @param containerId
   *          the id of the container (e.g. zip file, etc.)
   */
  public ConnectivityId(final String dataSourceId, final String objectId, final ConnectivityId containerId) {
    _dataSourceId = dataSourceId;
    if (containerId != null) {
      _objectId = containerId.getObjectId() + ":<" + objectId + ">";
    } else {
      _objectId = objectId;
    }
    _containerId = containerId;
  }

  /**
   * Creates a new ID for an object in a container with id parentId.
   * 
   * @param parentId
   *          the id of the container
   * @param newObjectId
   *          the id of the new object within the container.
   */
  public ConnectivityId(final ConnectivityId parentId, final String newObjectId) {
    this(parentId.getDataSourceId(), newObjectId, parentId);
  }

  /**
   * @return the dataSourceId
   */
  public String getDataSourceId() {
    return _dataSourceId;
  }

  /**
   * @return the objectId
   */
  public String getObjectId() {
    return _objectId;
  }

  /**
   * @return the id of the parent container.
   */
  public ConnectivityId getContainerId() {
    return _containerId;
  }

  /**
   * @return a hash of the id.
   */
  public String getIdHash() {
    if (_idHash == null) {
      final String idString = toString();
      _idHash = DigestHelper.calculateDigest(idString);
    }
    return _idHash;
  }

  /** {@inheritDoc} */
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((_containerId == null) ? 0 : _containerId.hashCode());
    result = prime * result + ((_dataSourceId == null) ? 0 : _dataSourceId.hashCode());
    result = prime * result + ((_objectId == null) ? 0 : _objectId.hashCode());
    return result;
  }

  /** {@inheritDoc} */
  @Override
  public boolean equals(Object obj) {
    if (this == obj) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (!(obj instanceof ConnectivityId)) {
      return false;
    }
    final ConnectivityId other = (ConnectivityId) obj;
    if (_containerId == null) {
      if (other._containerId != null) {
        return false;
      }
    } else if (!_containerId.equals(other._containerId)) {
      return false;
    }
    if (_dataSourceId == null) {
      if (other._dataSourceId != null) {
        return false;
      }
    } else if (!_dataSourceId.equals(other._dataSourceId)) {
      return false;
    }
    if (_objectId == null) {
      if (other._objectId != null) {
        return false;
      }
    } else if (!_objectId.equals(other._objectId)) {
      return false;
    }
    return true;
  }

  /** {@inheritDoc} */
  @Override
  public String toString() {
    return "ConnectivityId [_dataSourceId=" + _dataSourceId + ", _objectId=" + _objectId + ", _containerId="
      + _containerId + "]";
  }
}
