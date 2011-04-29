/*******************************************************************************
 * Copyright (c) 2008, 2009 empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.datamodel;

/**
 * Helper class to decouple Any and Record interfaces better from default implementation.
 * 
 * @author cind01
 * 
 */
public final class DataFactoryCreator {
  /**
   * Class name of default RecordFactory.
   */
  private static final String DEFAULT_DATAFACTORY_CLASSNAME =
    "org.eclipse.smila.datamodel.impl.DefaultDataFactoryImpl";

  /**
   * Private default constructor to avoid instance creation.
   */
  private DataFactoryCreator() {
  }

  /**
   * @return instance of the default RecordFactory.
   */
  public static DataFactory createDefaultFactory() {
    try {
      return (DataFactory) Class.forName(DEFAULT_DATAFACTORY_CLASSNAME).newInstance();
    } catch (Throwable ex) {
      System.out.println("FATAL ERROR: Could not create DefaultDataFactory - nothing will work probably.");
      return null;
    }
  }
}
