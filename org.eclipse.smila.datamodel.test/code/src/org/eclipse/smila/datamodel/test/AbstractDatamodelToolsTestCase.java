/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import junit.framework.TestCase;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.Record;

/**
 * The Class AbstractTestCase.
 */
abstract class AbstractDatamodelToolsTestCase extends TestCase {

  /**
   * The _builder factory.
   */
  protected final DocumentBuilderFactory _builderFactory = DocumentBuilderFactory.newInstance();

  /**
   * The _log.
   */
  protected final Log _log = LogFactory.getLog(getClass());

  /**
   * Instantiates a new test record filters.
   */
  public AbstractDatamodelToolsTestCase() {
    _builderFactory.setNamespaceAware(true);
  }

  /**
   * Compare records.
   * 
   * @param record1
   *          the record1
   * @param record2
   *          the record2
   * 
   * @return true, if successful
   * 
   * @throws ParserConfigurationException
   *           the parser configuration exception
   * @throws IOException
   *           Signals that an I/O exception has occurred.
   */
  protected boolean compareRecords(final Record record1, final Record record2) throws ParserConfigurationException,
    IOException {
    assertNotNull(record1);
    final String result1 = record1.toString();
    _log.info("source record1:" + result1);
    assertNotNull(result1);
    assertNotNull(record2);
    final String result2 = record2.toString();
    _log.info("source record2:" + result2);
    assertNotNull(result2);
    return result1.equals(result2);
  }

  /**
   * Assert equals.
   * 
   * @param record1
   *          the record1
   * @param record2
   *          the record2
   * 
   * @throws ParserConfigurationException
   *           the parser configuration exception
   * @throws IOException
   *           Signals that an I/O exception has occurred.
   */
  protected void assertEquals(final Record record1, final Record record2) throws ParserConfigurationException,
    IOException {
    assertEquals(true, compareRecords(record1, record2));
  }

}
