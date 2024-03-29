/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Marius Cimpean (brox IT Solutions GmbH) - initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.binarystorage.persistence.efs;

import java.io.InputStream;

import org.apache.commons.logging.Log;
import org.eclipse.smila.binarystorage.BinaryStorageException;
import org.eclipse.smila.binarystorage.config.BinaryStorageConfiguration;
import org.eclipse.smila.binarystorage.persistence.BinaryPersistence;

/**
 * EFS manager.
 *
 * @author mcimpean
 */
public class EFSBinaryPersistence extends BinaryPersistence {
  /** The logger. */
  private final Log _log = org.apache.commons.logging.LogFactory.getLog(EFSBinaryPersistence.class);

  /**
   * Basic constructor.
   *
   * @param binaryStorageConfig
   * @throws BinaryStorageException
   */
  public EFSBinaryPersistence(final BinaryStorageConfiguration binaryStorageConfig) throws BinaryStorageException {
    EFSUtils.init(binaryStorageConfig);
    if (_log.isDebugEnabled()) {
      _log.debug("Initializing fyle system manager for binary storage.");
    }
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#storeBinary(java.lang.String,
   *      byte[])
   */
  @Override
  public void storeBinary(final String key, final byte[] content) throws BinaryStorageException {
    EFSUtils.writeByteArrayToFile(key, content);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#storeBinary(java.lang.String,
   *      java.io.InputStream)
   */
  @Override
  public void storeBinary(final String key, final InputStream stream) throws BinaryStorageException {
    EFSUtils.writeInputStreamToFile(key, stream);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#deleteBinary(java.lang.String)
   */
  @Override
  public void deleteBinary(final String key) throws BinaryStorageException {
    EFSUtils.deleteFile(key);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#fetchSize(java.lang.String)
   */
  @Override
  public long fetchSize(final String key) throws BinaryStorageException {
    return EFSUtils.fetchSize(key);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#loadBinaryAsByteArray(java.lang.String)
   */
  @Override
  public byte[] loadBinaryAsByteArray(final String key) throws BinaryStorageException {
    return EFSUtils.readFileToByteArray(key);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#loadBinaryAsInputStream(java.lang.String)
   */
  @Override
  public InputStream loadBinaryAsInputStream(final String key) throws BinaryStorageException {
    return EFSUtils.readFileToInputStream(key);
  }

  /**
   * {@inheritDoc}
   *
   * @see org.eclipse.smila.binarystorage.internal.impl.persistence.BinaryPersistence#cleanup()
   */
  @Override
  public void cleanup() throws BinaryStorageException {
    // nothing to do
  }
}
