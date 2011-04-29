/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.ontology.pipelets.ASesameRecordPipelet;
import org.eclipse.smila.ontology.pipelets.SesameRecordReaderPipelet;
import org.eclipse.smila.ontology.records.SesameRecordHelper;

/**
 * variation of RecordReader test for non-default repository and without record filter.
 * 
 * @author jschumacher
 * 
 */
public class TestSesameMemoryRecordReaderPipelet extends TestSesameRecordReaderPipelet {
  /**
   * {@inheritDoc}
   */
  @Override
  protected String getPipelineName() {
    return "SesameMemoryReadPipeline";
  }

  /**
   * {@inheritDoc}
   */
  @Override
  protected String getRepositoryName() {
    return "memory";
  }

  /**
   * test switching on including inferred statements.
   * 
   * @throws Exception
   *           test fails
   */
  public void testIncludeInferred() throws Exception {
    final String id =
      createBlackboardRecord(getClass().getName(), "http://www.odci.gov/cia/publications/factbook/geos/af.html");
    final Record record = getBlackboard().getRecord(id);
    final AnyMap parameters = record.getFactory().createAnyMap();
    parameters.put(ASesameRecordPipelet.PARAM_RECORDFILTER,
      record.getFactory().createStringValue("ontologyBaseAttribute"));
    parameters.put(SesameRecordReaderPipelet.PARAM_INCLUDEINFERRED, record.getFactory().createStringValue("true"));
    record.getMetadata().putAll(parameters);
    getBlackboard().setRecord(record);
    executeWorkflow(id);
    logRecord(id);
    final int expectedNumberOfTypes = 11;
    assertEquals(expectedNumberOfTypes,
      getBlackboard().getRecord(id).getMetadata().getSeq(SesameRecordHelper.ATTRIBUTE_TYPE).size());
  }
}
