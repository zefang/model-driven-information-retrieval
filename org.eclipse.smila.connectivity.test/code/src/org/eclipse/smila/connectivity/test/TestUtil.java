/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.test;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;

/**
 * The Class TestUtil.
 */
public final class TestUtil {

  /**
   * The default RECORD_FACTORY.
   */
  public static final DataFactory RECORD_FACTORY = DataFactoryCreator.createDefaultFactory();

  /**
   * Instantiates a new test util.
   */
  private TestUtil() {
  }

  /**
   * Creates am array of 10 Record objects.
   * 
   * @param dataSourceId
   *          the dataSourceId
   * 
   * @return a Record[]
   */
  public static Record[] createDiRecord(final String dataSourceId) {
    final Record[] diData = new Record[AllTests.NUMBER_10];
    for (int i = 0; i < AllTests.NUMBER_10; i++) {
      diData[i] = RECORD_FACTORY.createRecord();
      final ConnectivityId id = ConnectivityIdFactory.getInstance().createId(dataSourceId, "myNameVale" + i);
      diData[i].setId(id.getObjectId());
      diData[i].setSource(id.getDataSourceId());
    }
    return diData;
  }

  /**
   * Creates am array of 8 Record objects, first 4 are identical to the ones created with createDiRecord(), the last 4
   * have a different HASH.
   * 
   * @param dataSourceId
   *          the dataSourceId
   * 
   * @return a Record[]
   */
  public static Record[] createDeltaDiRecord(final String dataSourceId) {
    final Record[] diData = new Record[AllTests.NUMBER_8];

    // create 4 identical Records (no update)
    for (int i = 0; i < AllTests.NUMBER_4; i++) {
      diData[i] = RECORD_FACTORY.createRecord();
      final ConnectivityId id = ConnectivityIdFactory.getInstance().createId(dataSourceId, "myNameVale" + i);
      diData[i].setId(id.getObjectId());
      diData[i].setSource(id.getDataSourceId());
    }
    // create 4 changed Records (update)
    for (int i = AllTests.NUMBER_4; i < AllTests.NUMBER_8; i++) {
      diData[i] = RECORD_FACTORY.createRecord();
      final ConnectivityId id = ConnectivityIdFactory.getInstance().createId(dataSourceId, "myNameVale" + i);
      diData[i].setId(id.getObjectId());
      diData[i].setSource(id.getDataSourceId());
    }
    // leave 2 records for deltaIndexingDelete
    return diData;
  }

  /**
   * Creates an array of 10 Id objects.
   * 
   * @param dataSourceId
   *          the dataSourceId
   * 
   * @return a Record[]
   */
  public static ConnectivityId[] createIds(final String dataSourceId) {
    final ConnectivityId[] ids = new ConnectivityId[AllTests.NUMBER_10];
    for (int i = 0; i < AllTests.NUMBER_10; i++) {
      ids[i] = ConnectivityIdFactory.getInstance().createId(dataSourceId, "myNameVale" + i);
    }
    return ids;
  }
}
