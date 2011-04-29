/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterHelper;

/**
 * The Class TestRecortFilterHelper.
 */
public final class TestRecordFilterHelper extends AbstractDatamodelToolsTestCase {

  /** The _helper. */
  private RecordFilterHelper _helper;

  /**
   * {@inheritDoc}
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    _helper = new RecordFilterHelper(TestRecordFilterHelper.class.getResourceAsStream("RecordFilters.xml"));
  }

  /**
   * {@inheritDoc}
   */
  @Override
  protected void tearDown() throws Exception {
    _helper = null;
    super.tearDown();
  }

  /**
   * Test filtering.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testFiltering() throws Exception {
    Record record = RecordCreator.createTestRecord1();
    record.removeAttachments();

    Record record1 = _helper.filter(record, "no-filter");
    assertEquals(false, record == record1);
    assertEquals(record, record1);

    record1 = _helper.filter(record, "only-attribute1");
    _log.info("record1=" + record1);
    assertEquals(2, record1.getMetadata().size());
    assertNotNull(record1.getMetadata().get("_recordid"));
    assertNotNull(record1.getMetadata().get("attribute1"));

    // other source record
    record = RecordCreator.createTestRecordWithValueAttributes();
    record.removeAttachments();
    assertEquals(8, record.getMetadata().size());
    _log.info("record=" + record);
    record1 = _helper.filter(record, "filter-single-and-datetime");
    assertEquals(3, record1.getMetadata().size());
    _log.info("record1=" + record1);
    assertNotNull(record1.getMetadata().get("_recordid"));
    assertNotNull(record1.getMetadata().get("single value"));
    assertNotNull(record1.getMetadata().get("datetime value"));
  }
}
