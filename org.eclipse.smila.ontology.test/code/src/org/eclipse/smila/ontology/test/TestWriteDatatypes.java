/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.xml.datatype.XMLGregorianCalendar;

import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.openrdf.model.Statement;
import org.openrdf.model.URI;
import org.openrdf.model.ValueFactory;
import org.openrdf.model.datatypes.XMLDatatypeUtil;
import org.openrdf.model.vocabulary.XMLSchema;
import org.openrdf.repository.RepositoryConnection;

/**
 * test for reading non-string literals with SesameRecordReaderPipelet.
 * 
 * @author jschumacher
 * 
 */
public class TestWriteDatatypes extends AOntologyWorkflowTest {
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
  private static final int VALUE_HOUR = 16;

  /**
   * test minute value for date/time.
   */
  private static final int VALUE_MINUTE = 11;

  /**
   * test second value for date/time.
   */
  private static final int VALUE_SECOND = 42;

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
    conn.commit();
    conn.close();
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
   */
  @Override
  protected String getPipelineName() {
    return "SesameWritePipeline";
  }

  /**
   * read a record from sesame identified by the key value of the SMILA id.
   * 
   * @throws Exception
   *           test fails
   */
  public void testWriteWithID() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "test:write");
    fillRecord(id, "test:write");
    executeWorkflow(id);
    checkStatements();
  }

  /**
   * read a record from sesame identified by the value of rdf:about attribute.
   * 
   * @throws Exception
   *           test fails
   */
  public void testWriteWithAttribute() throws Exception {
    final String id = createURIAttributeRecord("test:write");
    fillRecord(id, "test:write");
    executeWorkflow(id);
    checkStatements();
  }

  /**
   * check if expected statements have been created.
   * 
   * @throws Exception
   *           test fails.
   */
  private void checkStatements() throws Exception {
    final int zoneOffsetHours = TimeZone.getDefault().getRawOffset() / MILLISECONDS_PER_HOUR;
    final RepositoryConnection conn = _ontology.getDefaultConnection();
    logRepositoryExport(conn);
    final ValueFactory vf = conn.getValueFactory();
    final URI uri = vf.createURI("test:write");
    org.openrdf.model.Literal value = getObject(conn, uri, vf.createURI("test:int"));
    assertTrue(XMLDatatypeUtil.isIntegerDatatype(value.getDatatype()));
    assertEquals(2, value.intValue());

    value = getObject(conn, uri, vf.createURI("test:fp"));
    assertTrue(XMLDatatypeUtil.isFloatingPointDatatype(value.getDatatype()));
    assertEquals(Math.PI, value.doubleValue());

    value = getObject(conn, uri, vf.createURI("test:bool"));
    assertEquals(XMLSchema.BOOLEAN, value.getDatatype());
    assertTrue(value.booleanValue());

    value = getObject(conn, uri, vf.createURI("test:date"));
    assertEquals(XMLSchema.DATE, value.getDatatype());
    XMLGregorianCalendar cal = value.calendarValue();
    assertEquals(VALUE_YEAR, cal.getYear());
    assertEquals(VALUE_MONTH, cal.getMonth());
    assertEquals(VALUE_DAY, cal.getDay());

    value = getObject(conn, uri, vf.createURI("test:datetime"));
    assertEquals(XMLSchema.DATETIME, value.getDatatype());
    cal = value.calendarValue();
    assertEquals(VALUE_YEAR, cal.getYear());
    assertEquals(VALUE_MONTH, cal.getMonth());
    assertEquals(VALUE_DAY, cal.getDay());
    assertEquals(VALUE_HOUR, cal.getHour());
    assertEquals(VALUE_MINUTE, cal.getMinute());
    assertEquals(VALUE_SECOND, cal.getSecond());
    assertEquals(0, cal.getMillisecond());
    assertEquals(zoneOffsetHours * MINUTES_PER_HOUR, cal.getTimezone());

    conn.close();
  }

  /**
   * read a statement object.
   * 
   * @param conn
   *          repository connection.
   * @param uri
   *          subject URI
   * @param predicate
   *          predicate URI
   * @return literal object
   * @throws Exception
   *           something fails.
   */
  private org.openrdf.model.Literal getObject(final RepositoryConnection conn, final URI uri, final URI predicate)
    throws Exception {
    final List<Statement> result = conn.getStatements(uri, predicate, null, false).asList();
    assertEquals(1, result.size());
    return (org.openrdf.model.Literal) result.get(0).getObject();
  }

  /**
   * add test data to record.
   * 
   * @param id
   *          record ID.
   * @param uri
   *          the uri.
   * @throws BlackboardAccessException
   *           something fails.
   */
  private void fillRecord(final String id, final String uri) throws BlackboardAccessException {

    final AnyMap metadata = getBlackboard().getRecord(id).getMetadata();
    final DataFactory factory = metadata.getFactory();

    metadata.put(SesameRecordHelper.ATTRIBUTE_URI, uri);

    metadata.put("test:int", factory.createLongValue(2));

    metadata.put("test:fp", factory.createDoubleValue(Math.PI));

    metadata.put("test:bool", factory.createBooleanValue(Boolean.TRUE));

    metadata.put("test:date", factory.createDateValue(createTestDate()));

    metadata.put("test:datetime", factory.createDateTimeValue(createTestDate()));

    logRecord(id);
  }

  /**
   * @return a test date.
   */
  private Date createTestDate() {
    final Calendar cal = Calendar.getInstance();
    cal.set(Calendar.YEAR, VALUE_YEAR);
    cal.set(Calendar.MONTH, VALUE_MONTH - 1);
    cal.set(Calendar.DAY_OF_MONTH, VALUE_DAY);
    cal.set(Calendar.HOUR_OF_DAY, VALUE_HOUR);
    cal.set(Calendar.MINUTE, VALUE_MINUTE);
    cal.set(Calendar.SECOND, VALUE_SECOND);
    cal.set(Calendar.MILLISECOND, 0);
    final Date date = cal.getTime();
    return date;
  }

}
