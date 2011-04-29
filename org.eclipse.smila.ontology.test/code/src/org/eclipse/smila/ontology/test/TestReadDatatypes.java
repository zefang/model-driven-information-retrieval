/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import java.util.Calendar;

import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.Value;
import org.openrdf.model.URI;
import org.openrdf.model.ValueFactory;
import org.openrdf.repository.RepositoryConnection;

/**
 * test for reading non-string literals with SesameRecordReaderPipelet.
 * 
 * @author jschumacher
 * 
 */
public class TestReadDatatypes extends AOntologyWorkflowTest {
  /**
   * test year value for date/time.
   */
  private static final int VALUE_YEAR = 2009;

  /**
   * test month value for date/time.
   */
  private static final int VALUE_MONTH = 3;

  /**
   * test day value for date/time.
   */
  private static final int VALUE_DAY = 13;

  /**
   * test hour value for date/time.
   */
  private static final int VALUE_HOUR = 13;

  /**
   * test minute value for date/time.
   */
  private static final int VALUE_MINUTE = 33;

  /**
   * test second value for date/time.
   */
  private static final int VALUE_SECOND = 37;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    final RepositoryConnection conn = _ontology.getDefaultConnection();
    conn.clear();
    final ValueFactory vf = conn.getValueFactory();
    final URI uri = vf.createURI("test:read");
    conn.add(uri, vf.createURI("test:int"), vf.createLiteral(2));
    conn.add(uri, vf.createURI("test:fp"), vf.createLiteral(Math.PI));
    conn.add(uri, vf.createURI("test:bool"), vf.createLiteral(true));
    final XMLGregorianCalendar date =
      DatatypeFactory.newInstance().newXMLGregorianCalendarDate(VALUE_YEAR, VALUE_MONTH, VALUE_DAY, 0);
    conn.add(uri, vf.createURI("test:date"), vf.createLiteral(date));
    final XMLGregorianCalendar time =
      DatatypeFactory.newInstance().newXMLGregorianCalendarTime(VALUE_HOUR + 1, VALUE_MINUTE, VALUE_SECOND, 0,
        MINUTES_PER_HOUR);
    conn.add(uri, vf.createURI("test:time"), vf.createLiteral(time));
    final XMLGregorianCalendar datetime =
      DatatypeFactory.newInstance().newXMLGregorianCalendar(VALUE_YEAR, VALUE_MONTH, VALUE_DAY, VALUE_HOUR + 2,
        VALUE_MINUTE, VALUE_SECOND, 0, 2 * MINUTES_PER_HOUR);
    conn.add(uri, vf.createURI("test:datetime"), vf.createLiteral(datetime));
    conn.commit();
    logRepositoryExport(conn);
    conn.close();
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
   */
  @Override
  protected String getPipelineName() {
    return "SesameReadPipeline";
  }

  /**
   * read a record from sesame identified by the key value of the SMILA id.
   * 
   * @throws Exception
   *           test fails
   */
  public void testReadWithID() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "test:read");
    executeWorkflow(id);
    checkRecord(id);
  }

  /**
   * read a record from sesame identified by the value of rdf:about attribute.
   * 
   * @throws Exception
   *           test fails
   */
  public void testReadWithAttribute() throws Exception {
    final String id = createURIAttributeRecord("test:read");
    executeWorkflow(id);
    checkRecord(id);

  }

  /**
   * check result record.
   * 
   * @param id
   *          record ID.
   * @throws BlackboardAccessException
   *           error reading record.
   */
  private void checkRecord(final String id) throws BlackboardAccessException {
    logRecord(id);

    Value literal = null;
    String path = "test:int";
    assertTrue(getBlackboard().getRecord(id).getMetadata().containsKey(path));
    literal = getBlackboard().getRecord(id).getMetadata().getValue(path);
    assertEquals(ValueType.LONG, literal.getValueType());
    assertEquals(Long.valueOf(2L), literal.asLong());

    path = "test:fp";
    assertTrue(getBlackboard().getRecord(id).getMetadata().containsKey(path));
    literal = getBlackboard().getRecord(id).getMetadata().getValue(path);
    assertEquals(ValueType.DOUBLE, literal.getValueType());
    assertEquals(Math.PI, literal.asDouble());

    path = "test:bool";
    assertTrue(getBlackboard().getRecord(id).getMetadata().containsKey(path));
    literal = getBlackboard().getRecord(id).getMetadata().getValue(path);
    assertEquals(ValueType.BOOLEAN, literal.getValueType());
    assertTrue(literal.asBoolean());

    path = "test:date";
    assertTrue(getBlackboard().getRecord(id).getMetadata().containsKey(path));
    literal = getBlackboard().getRecord(id).getMetadata().getValue(path);
    assertEquals(ValueType.DATE, literal.getValueType());
    final Calendar date = Calendar.getInstance();
    date.setTime(literal.asDate());
    assertEquals(VALUE_YEAR, date.get(Calendar.YEAR));
    assertEquals(VALUE_MONTH - 1, date.get(Calendar.MONTH));
    assertEquals(VALUE_DAY, date.get(Calendar.DAY_OF_MONTH));

    path = "test:datetime";
    assertTrue(getBlackboard().getRecord(id).getMetadata().containsKey(path));
    literal = getBlackboard().getRecord(id).getMetadata().getValue(path);
    assertEquals(ValueType.DATETIME, literal.getValueType());
    final Calendar datetime = Calendar.getInstance();
    datetime.setTime(literal.asDateTime());
    assertEquals(VALUE_YEAR, datetime.get(Calendar.YEAR));
    assertEquals(VALUE_MONTH - 1, datetime.get(Calendar.MONTH));
    assertEquals(VALUE_DAY, datetime.get(Calendar.DAY_OF_MONTH));
    final long zoneOffset = datetime.get(Calendar.ZONE_OFFSET);
    final long zoneOffsetHours = zoneOffset / MILLISECONDS_PER_HOUR;
    // assertEquals(2, zoneOffsetHours);
    assertEquals(VALUE_HOUR + zoneOffsetHours, datetime.get(Calendar.HOUR_OF_DAY));
    assertEquals(VALUE_MINUTE, datetime.get(Calendar.MINUTE));
    assertEquals(VALUE_SECOND, datetime.get(Calendar.SECOND));
  }
}
