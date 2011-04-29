/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.deltaindexing.jpa.impl;

import java.io.IOException;
import java.util.Iterator;

import org.eclipse.smila.connectivity.ConnectivityId;

/**
 * An Iterator implementation that iterates over an internal Iterator of DeltaIndexingDao objects and converts them to
 * Id objects when accessed by the next() method.
 */
public class IdIterator implements Iterator<ConnectivityId> {

  /**
   * Internal iterator over DeltaIndexingDao objects.
   */
  private final Iterator<DeltaIndexingDao> _daoIterator;

  /**
   * Conversion Constructor.
   * 
   * @param daoIterator
   *          a iterator over recordDao objects
   */
  public IdIterator(Iterator<DeltaIndexingDao> daoIterator) {
    if (daoIterator == null) {
      throw new IllegalArgumentException("parameter daoIterator is null");
    }
    _daoIterator = daoIterator;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.util.Iterator#hasNext()
   */
  @Override
  public boolean hasNext() {
    return _daoIterator.hasNext();
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.util.Iterator#next()
   */
  @Override
  public ConnectivityId next() {
    final DeltaIndexingDao dao = _daoIterator.next();
    if (dao != null) {
      try {
        return dao.toId();
      } catch (IOException e) {
        throw new RuntimeException(e);
      } catch (ClassNotFoundException e) {
        throw new RuntimeException(e);
      }
    }
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.util.Iterator#remove()
   */
  @Override
  public void remove() {
    throw new UnsupportedOperationException("use delete(Id) method of delta indexing manager instead");
  }

}
