/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.ontology.pipelets.CreateFileUriPipelet;
import org.eclipse.smila.ontology.records.SesameRecordHelper;

/**
 * Tests for {@link org.eclipse.smila.ontology.pipelets.CreateFileUriPipelet}.
 * 
 * @author jschumacher
 * 
 */
public class TestCreateFileUriPipelet extends AOntologyWorkflowTest {

  /**
   * {@inheritDoc}
   */
  @Override
  protected String getPipelineName() {
    return "CreateFileUriPipeline";
  }

  /**
   * check creation of file uri from relative windows path.
   * 
   * @throws Exception
   *           test fails
   */
  public void testRelativeWindowsPath() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "directory\\file.txt");
    executeWorkflow(id);
    final Record record = getBlackboard().getRecord(id);
    assertNotNull(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI));
    assertTrue(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI).isString());
    final String value = record.getMetadata().getStringValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertTrue(value.startsWith("file:/"));
    assertTrue(value.endsWith("directory/file.txt"));
  }

  /**
   * check creation of file uri from absolute windows path.
   * 
   * @throws Exception
   *           test fails
   */
  public void testAbsoluteWindowsPath() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "Q:\\directory\\file.txt");
    executeWorkflow(id);
    final Record record = getBlackboard().getRecord(id);
    assertNotNull(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI));
    assertTrue(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI).isString());
    final String value = record.getMetadata().getStringValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertTrue(value.startsWith("file:/"));
    assertTrue(value.endsWith("Q:/directory/file.txt"));
  }

  /**
   * check creation of file uri from absolute windows path.
   * 
   * @throws Exception
   *           test fails
   */
  public void testFilenameAttribute() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "Q:\\directory\\file.txt");
    Record record = getBlackboard().getRecord(id);
    record.getMetadata().put("_fileName", record.getFactory().createStringValue("Q:\\directory\\file.txt"));
    record.getMetadata().put(CreateFileUriPipelet.KEY_CONFIG_FILENAME_ATTRIBUTE,
      record.getFactory().createStringValue("_fileName"));
    executeWorkflow(id);
    record = getBlackboard().getRecord(id);
    assertNotNull(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI));
    assertTrue(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI).isString());
    final String value = record.getMetadata().getStringValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertTrue(value.startsWith("file:/"));
    assertTrue(value.endsWith("Q:/directory/file.txt"));
  }

  /**
   * check creation of file uri from relative unix path.
   * 
   * @throws Exception
   *           test fails
   */
  public void testRelativeUnixPath() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "directory/file.txt");
    executeWorkflow(id);
    final Record record = getBlackboard().getRecord(id);
    assertNotNull(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI));
    assertTrue(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI).isString());
    final String value = record.getMetadata().getStringValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertTrue(value.startsWith("file:/"));
    assertTrue(value.endsWith("directory/file.txt"));
  }

  /**
   * check creation of file uri from absolute unix path.
   * 
   * @throws Exception
   *           test fails
   */
  public void testAbsoluteUnixPath() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "/directory/file.txt");
    executeWorkflow(id);
    final Record record = getBlackboard().getRecord(id);
    assertNotNull(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI));
    assertTrue(record.getMetadata().get(SesameRecordHelper.ATTRIBUTE_URI).isString());
    final String value = record.getMetadata().getStringValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertTrue(value.startsWith("file:/"));
    assertTrue(value.endsWith("/directory/file.txt"));
  }

}
