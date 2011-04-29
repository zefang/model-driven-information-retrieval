/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (Brox IT Solutions GmbH) -
 * initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.queue.broker.main.internal;

import org.eclipse.smila.connectivity.queue.AbstractBrokerPropertiesConfigImpl;

/**
 * The Class ConnectivityQueueManagerImpl.
 */
public class ConnectivityBrokerImpl extends AbstractBrokerPropertiesConfigImpl {

  /**
   * The Constant BUNDLE_ID.
   */
  private static final String BUNDLE_ID = "org.eclipse.smila.connectivity.queue.broker.main";

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.queue.AbstractBrokerPropertiesConfigImpl#getBundleId()
   */
  @Override
  protected String getBundleId() {
    return BUNDLE_ID;
  }

}
