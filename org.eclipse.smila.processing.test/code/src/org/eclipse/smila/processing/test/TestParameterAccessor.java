/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.processing.test;

import java.util.Arrays;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.processing.parameters.MissingParameterException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Base class for WorkflowProcessor tests.
 * 
 * @author jschumacher
 * 
 */
public class TestParameterAccessor extends DeclarativeServiceTestCase {

  /**
   * BlackboardService instance to use.
   */
  private Blackboard _blackboard;

  /**
   * DataFactory.
   */
  private DataFactory _factory;

  /**
   * Check if WorkflowProcessor service is active. Wait up to 30 seconds for start. Fail, if no service is starting.
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    final BlackboardFactory factory = getService(BlackboardFactory.class);
    assertNotNull("no BlackboardFactory service found.", factory);
    _blackboard = factory.createPersistingBlackboard();
    assertNotNull("no Blackboard created", _blackboard);
    _factory = _blackboard.getDataFactory();
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSingleStringParameter() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testSingleStringParameter");
    _blackboard.getRecord(id).getMetadata().put("name", _factory.createStringValue("value"));
    final ParameterAccessor accessor = new ParameterAccessor(_blackboard);
    accessor.setCurrentRecord(id);
    assertEquals("value", accessor.getParameter("name", "default"));
    assertEquals("value", accessor.getRequiredParameter("name"));
    assertMissingRequiredParameter(accessor, "no-name");
    assertEquals("default", accessor.getParameter("no-name", "default"));
    _blackboard.invalidate(id);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSingleStringParameterWithQuery() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testSingleStringParameterWithQuery");
    final AnyMap parameters = _blackboard.getMetadata(id);
    parameters.put("name", _factory.createStringValue("value1"));
    parameters.put("record-name", _factory.createStringValue("value2"));

    final String query = createBlackboardRecord(getClass().getName(), "testSingleStringParameterWithQuery-Query");
    final AnyMap queryParameters = _blackboard.getRecord(query).getMetadata();
    queryParameters.put("name", _factory.createStringValue("value3"));
    queryParameters.put("query-name", _factory.createStringValue("value4"));

    final ParameterAccessor accessor = new ParameterAccessor(_blackboard, query);
    assertEquals("value3", accessor.getParameter("name", "default"));
    assertEquals("default", accessor.getParameter("record-name", "default"));
    assertEquals("value4", accessor.getParameter("query-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value3", accessor.getRequiredParameter("name"));
    assertMissingRequiredParameter(accessor, "record-name");
    assertEquals("value4", accessor.getRequiredParameter("query-name"));
    assertMissingRequiredParameter(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals("value1", accessor.getParameter("name", "default"));
    assertEquals("value2", accessor.getParameter("record-name", "default"));
    assertEquals("default", accessor.getParameter("query-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value1", accessor.getRequiredParameter("name"));
    assertEquals("value2", accessor.getRequiredParameter("record-name"));
    assertMissingRequiredParameter(accessor, "query-name");
    assertMissingRequiredParameter(accessor, "no-name");
    _blackboard.invalidate(id);
    _blackboard.invalidate(query);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSingleStringParameterWithQueryOrConfig() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testSingleStringParameterWithQueryOrConfig");
    final AnyMap parameters = _blackboard.getMetadata(id);
    parameters.put("name", _factory.createStringValue("value1"));
    parameters.put("record-name", _factory.createStringValue("value2"));

    final String query =
      createBlackboardRecord(getClass().getName(), "testSingleStringParameterWithQueryOrConfig-Query");
    final AnyMap queryParameters = _blackboard.getRecord(query).getMetadata();
    queryParameters.put("name", _factory.createStringValue("value3"));
    queryParameters.put("query-name", _factory.createStringValue("value4"));

    final AnyMap config = createConfig();
    ParameterAccessor accessor = new ParameterAccessor(_blackboard);
    accessor.setPipeletConfiguration(config);
    assertEquals("value5-1", accessor.getParameter("name", "default"));
    assertEquals("default", accessor.getParameter("record-name", "default"));
    assertEquals("default", accessor.getParameter("query-name", "default"));
    assertEquals("value6-1", accessor.getParameter("config-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value5-1", accessor.getRequiredParameter("name"));
    assertMissingRequiredParameter(accessor, "record-name");
    assertMissingRequiredParameter(accessor, "query-name");
    assertEquals("value6-1", accessor.getRequiredParameter("config-name"));
    assertMissingRequiredParameter(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals("value1", accessor.getParameter("name", "default"));
    assertEquals("value2", accessor.getParameter("record-name", "default"));
    assertEquals("default", accessor.getParameter("query-name", "default"));
    assertEquals("value6-1", accessor.getParameter("config-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value1", accessor.getRequiredParameter("name"));
    assertEquals("value2", accessor.getRequiredParameter("record-name"));
    assertMissingRequiredParameter(accessor, "query-name");
    assertEquals("value6-1", accessor.getRequiredParameter("config-name"));
    assertMissingRequiredParameter(accessor, "no-name");

    accessor = new ParameterAccessor(_blackboard, query);
    accessor.setPipeletConfiguration(config);
    assertEquals("value3", accessor.getParameter("name", "default"));
    assertEquals("default", accessor.getParameter("record-name", "default"));
    assertEquals("value4", accessor.getParameter("query-name", "default"));
    assertEquals("value6-1", accessor.getParameter("config-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value3", accessor.getRequiredParameter("name"));
    assertMissingRequiredParameter(accessor, "record-name");
    assertEquals("value4", accessor.getRequiredParameter("query-name"));
    assertEquals("value6-1", accessor.getRequiredParameter("config-name"));
    assertMissingRequiredParameter(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals("value1", accessor.getParameter("name", "default"));
    assertEquals("value2", accessor.getParameter("record-name", "default"));
    assertEquals("default", accessor.getParameter("query-name", "default"));
    assertEquals("value6-1", accessor.getParameter("config-name", "default"));
    assertEquals("default", accessor.getParameter("no-name", "default"));
    assertEquals("value1", accessor.getRequiredParameter("name"));
    assertEquals("value2", accessor.getRequiredParameter("record-name"));
    assertEquals("value6-1", accessor.getRequiredParameter("config-name"));
    assertMissingRequiredParameter(accessor, "query-name");
    assertMissingRequiredParameter(accessor, "no-name");
    _blackboard.invalidate(id);
    _blackboard.invalidate(query);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testStringListParameter() throws Exception {
    final List<String> expectedValues = Arrays.asList(new String[] { "value1", "value2" });
    final String id = createBlackboardRecord(getClass().getName(), "testMultipleStringParameter");
    final AnyMap parameters = _blackboard.getMetadata(id);
    addParameters(id, parameters, "name", expectedValues);
    final ParameterAccessor accessor = new ParameterAccessor(_blackboard);
    accessor.setCurrentRecord(id);
    assertEquals(expectedValues, accessor.getParameters("name"));
    assertEquals(expectedValues, accessor.getRequiredParameters("name"));
    assertMissingRequiredParameters(accessor, "no-name");
    assertTrue(accessor.getParameters("no-name").isEmpty());
    _blackboard.invalidate(id);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testStringListParameterWithQuery() throws Exception {
    final List<String> expectedValues1 = Arrays.asList(new String[] { "value1-1", "value1-2" });
    final List<String> expectedValues2 = Arrays.asList(new String[] { "value2-1", "value2-2" });
    final List<String> expectedValues3 = Arrays.asList(new String[] { "value3-1", "value3-2" });
    final List<String> expectedValues4 = Arrays.asList(new String[] { "value4-1", "value4-2" });

    final String id = createBlackboardRecord(getClass().getName(), "testStringListParameterWithQuery");
    final AnyMap parameters = _blackboard.getMetadata(id);
    addParameters(id, parameters, "name", expectedValues1);
    addParameters(id, parameters, "record-name", expectedValues2);

    final String query = createBlackboardRecord(getClass().getName(), "testStringListParameterWithQuery-Query");
    final AnyMap queryParameters = _blackboard.getMetadata(query);
    addParameters(query, queryParameters, "name", expectedValues3);
    addParameters(query, queryParameters, "query-name", expectedValues4);

    final ParameterAccessor accessor = new ParameterAccessor(_blackboard, query);
    assertEquals(expectedValues3, accessor.getParameters("name"));
    assertTrue(accessor.getParameters("record-name").isEmpty());
    assertEquals(expectedValues4, accessor.getParameters("query-name"));
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues3, accessor.getRequiredParameters("name"));
    assertMissingRequiredParameters(accessor, "record-name");
    assertEquals(expectedValues4, accessor.getRequiredParameters("query-name"));
    assertMissingRequiredParameters(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals(expectedValues1, accessor.getParameters("name"));
    assertEquals(expectedValues2, accessor.getParameters("record-name"));
    assertTrue(accessor.getParameters("query-name").isEmpty());
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues1, accessor.getRequiredParameters("name"));
    assertEquals(expectedValues2, accessor.getRequiredParameters("record-name"));
    assertMissingRequiredParameters(accessor, "no-query-name");
    assertMissingRequiredParameters(accessor, "no-name");

    _blackboard.invalidate(id);
    _blackboard.invalidate(query);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testStringListParameterWithQueryOrConfig() throws Exception {
    final List<String> expectedValues1 = Arrays.asList(new String[] { "value1-1", "value1-2" });
    final List<String> expectedValues2 = Arrays.asList(new String[] { "value2-1", "value2-2" });
    final List<String> expectedValues3 = Arrays.asList(new String[] { "value3-1", "value3-2" });
    final List<String> expectedValues4 = Arrays.asList(new String[] { "value4-1", "value4-2" });
    final List<String> expectedValues5 = Arrays.asList(new String[] { "value5-1", "value5-2" });
    final List<String> expectedValues6 = Arrays.asList(new String[] { "value6-1", "value6-2" });

    final String id = createBlackboardRecord(getClass().getName(), "testStringListParameterWithQueryOrConfig");
    final AnyMap parameters = _blackboard.getMetadata(id);
    addParameters(id, parameters, "name", expectedValues1);
    addParameters(id, parameters, "record-name", expectedValues2);

    final String query =
      createBlackboardRecord(getClass().getName(), "testStringListParameterWithQueryOrConfig-Query");
    final AnyMap queryParameters = _blackboard.getMetadata(query);
    addParameters(query, queryParameters, "name", expectedValues3);
    addParameters(query, queryParameters, "query-name", expectedValues4);

    final AnyMap config = createConfig();
    ParameterAccessor accessor = new ParameterAccessor(_blackboard);
    accessor.setPipeletConfiguration(config);
    assertEquals(expectedValues5, accessor.getParameters("name"));
    assertTrue(accessor.getParameters("record-name").isEmpty());
    assertTrue(accessor.getParameters("query-name").isEmpty());
    assertEquals(expectedValues6, accessor.getParameters("config-name"));
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues5, accessor.getRequiredParameters("name"));
    assertMissingRequiredParameters(accessor, "record-name");
    assertMissingRequiredParameters(accessor, "query-name");
    assertEquals(expectedValues6, accessor.getRequiredParameters("config-name"));
    assertMissingRequiredParameters(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals(expectedValues1, accessor.getParameters("name"));
    assertEquals(expectedValues2, accessor.getParameters("record-name"));
    assertTrue(accessor.getParameters("query-name").isEmpty());
    assertEquals(expectedValues6, accessor.getParameters("config-name"));
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues1, accessor.getRequiredParameters("name"));
    assertEquals(expectedValues2, accessor.getRequiredParameters("record-name"));
    assertMissingRequiredParameters(accessor, "query-name");
    assertEquals(expectedValues6, accessor.getRequiredParameters("config-name"));
    assertMissingRequiredParameters(accessor, "no-name");

    accessor = new ParameterAccessor(_blackboard, query);
    accessor.setPipeletConfiguration(config);
    assertEquals(expectedValues3, accessor.getParameters("name"));
    assertTrue(accessor.getParameters("record-name").isEmpty());
    assertEquals(expectedValues4, accessor.getParameters("query-name"));
    assertEquals(expectedValues6, accessor.getParameters("config-name"));
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues3, accessor.getRequiredParameters("name"));
    assertMissingRequiredParameters(accessor, "record-name");
    assertEquals(expectedValues4, accessor.getRequiredParameters("query-name"));
    assertEquals(expectedValues6, accessor.getRequiredParameters("config-name"));
    assertMissingRequiredParameters(accessor, "no-name");

    accessor.setCurrentRecord(id);
    assertEquals(expectedValues1, accessor.getParameters("name"));
    assertEquals(expectedValues2, accessor.getParameters("record-name"));
    assertTrue(accessor.getParameters("query-name").isEmpty());
    assertEquals(expectedValues6, accessor.getParameters("config-name"));
    assertTrue(accessor.getParameters("no-name").isEmpty());
    assertEquals(expectedValues1, accessor.getRequiredParameters("name"));
    assertEquals(expectedValues2, accessor.getRequiredParameters("record-name"));
    assertEquals(expectedValues6, accessor.getRequiredParameters("config-name"));
    assertMissingRequiredParameters(accessor, "query-name");
    assertMissingRequiredParameters(accessor, "no-name");

    _blackboard.invalidate(id);
    _blackboard.invalidate(query);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testDatatypes() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testDatatypes");
    final AnyMap parameters = _blackboard.getMetadata(id);
    parameters.put("int", _factory.createStringValue("1"));
    parameters.put("float", _factory.createStringValue(Double.toString(Math.PI)));
    parameters.put("bool", _factory.createStringValue("true"));
    final ParameterAccessor accessor = new ParameterAccessor(_blackboard, id);
    assertEquals(1, accessor.getIntParameter("int", 0).intValue());
    assertEquals(Math.PI, accessor.getFloatParameter("float", 0.0).doubleValue());
    assertEquals(true, accessor.getBooleanParameter("bool", false).booleanValue());
    assertEquals(1, accessor.getRequiredIntParameter("int").intValue());
    assertEquals(Math.PI, accessor.getRequiredFloatParameter("float").doubleValue());
    assertEquals(true, accessor.getRequiredBooleanParameter("bool").booleanValue());
    assertEquals(2, accessor.getIntParameter("no-int", 2).intValue());
    assertEquals(Math.E, accessor.getFloatParameter("no-float", Math.E).doubleValue());
    assertEquals(false, accessor.getBooleanParameter("no-bool", false).booleanValue());
    _blackboard.invalidate(id);
  }

  /**
   * create a new record on the blackboard.
   * 
   * @param source
   *          source value of ID
   * @param key
   *          key value of ID
   * @return id of created record.
   */
  protected String createBlackboardRecord(final String source, final String key) {
    final String id = source + "+" + key;
    _log.info("Invalidating and re-creating test record on blackboard.");
    _log.info("This may cause an exception to be logged that can be safely ignored.");
    _blackboard.invalidate(id);
    _blackboard.create(id);
    return id;
  }

  /**
   * add list parameter.
   * 
   * @param id
   *          record id
   * @param parameters
   *          parameter annotation
   * @param name
   *          parameter name
   * @param values
   *          parameter values
   * @throws BlackboardAccessException
   *           error creating the annotation
   */
  private void addParameters(final String id, final AnyMap parameters, final String name, final List<String> values)
    throws BlackboardAccessException {
    final AnySeq listParam = _blackboard.getDataFactory().createAnySeq();
    for (final String value : values) {
      listParam.add(_blackboard.getDataFactory().createStringValue(value));
    }
    parameters.put(name, listParam);
  }

  /**
   * assert that getRequiredParameter throws the correct exception.
   * 
   * @param accessor
   *          parameter accessor
   * @param name
   *          parameter name
   */
  private void assertMissingRequiredParameter(final ParameterAccessor accessor, final String name) {
    try {
      accessor.getRequiredParameter(name);
      fail("expected exception missing");
    } catch (final Exception ex) {
      assertTrue(ex instanceof MissingParameterException);
    }
  }

  /**
   * assert that getRequiredParameters throws the correct exception.
   * 
   * @param accessor
   *          parameter accessor
   * @param name
   *          parameter name
   */
  private void assertMissingRequiredParameters(final ParameterAccessor accessor, final String name) {
    try {
      accessor.getRequiredParameters(name);
      fail("expected exception missing");
    } catch (final Exception ex) {
      assertTrue(ex instanceof MissingParameterException);
    }
  }

  /**
   * create pipelet configuration for tests.
   * 
   * @return parsed config
   */
  private AnyMap createConfig() {
    final AnyMap config = _factory.createAnyMap();
    final AnySeq prop1 = _factory.createAnySeq();
    prop1.add(_factory.createStringValue("value5-1"));
    prop1.add(_factory.createStringValue("value5-2"));
    config.put("name", prop1);
    final AnySeq prop2 = _factory.createAnySeq();
    prop2.add(_factory.createStringValue("value6-1"));
    prop2.add(_factory.createStringValue("value6-2"));
    config.put("config-name", prop2);

    return config;
  }

}
