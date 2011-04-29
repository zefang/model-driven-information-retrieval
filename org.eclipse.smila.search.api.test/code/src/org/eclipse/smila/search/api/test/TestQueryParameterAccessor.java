/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.search.api.test;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * Base class for WorkflowProcessor tests.
 * 
 * @author jschumacher
 * 
 */
public class TestQueryParameterAccessor extends DeclarativeServiceTestCase {

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
  public void testQueryParameters() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testKnownParameters");
    final QueryParameterAccessor accessor = new QueryParameterAccessor(_blackboard, id);
    assertNull(accessor.getQuery());
    assertEquals(QueryConstants.DEFAULT_MAXCOUNT, accessor.getMaxCount());
    assertEquals(QueryConstants.DEFAULT_OFFSET, accessor.getOffset());
    assertEquals(QueryConstants.DEFAULT_THRESHOLD, accessor.getThreshold());
    assertNull(accessor.getLanguage());
    assertNull(accessor.getIndexName());
    assertTrue(accessor.getResultAttributes().isEmpty());

    final AnyMap parameters = _blackboard.getMetadata(id);
    parameters.put(QueryConstants.QUERY, _factory.createStringValue("Hello World"));
    parameters.put(QueryConstants.MAXCOUNT, _factory.createStringValue("2"));
    parameters.put(QueryConstants.OFFSET, _factory.createStringValue("1"));
    parameters.put(QueryConstants.THRESHOLD, _factory.createStringValue("0.5"));
    parameters.put(QueryConstants.LANGUAGE, _factory.createStringValue("en"));
    parameters.put(QueryConstants.INDEXNAME, _factory.createStringValue("my-index"));
    final List<String> expectedAttributes = Arrays.asList(new String[] { "title", "uri" });
    addParameters(id, parameters, QueryConstants.RESULTATTRIBUTES, expectedAttributes);

    assertEquals("Hello World", accessor.getQuery());
    assertEquals(2, accessor.getMaxCount());
    assertEquals(1, accessor.getOffset());
    assertEquals(1.0 / 2.0, accessor.getThreshold());
    assertEquals("en", accessor.getLanguage());
    assertEquals("my-index", accessor.getIndexName());
    assertEquals(expectedAttributes, accessor.getResultAttributes());
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSortBy() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testOrderBy");
    final AnyMap parameters = _blackboard.getMetadata(id);
    final AnySeq orderBy = _factory.createAnySeq();
    final AnyMap orderBy1 = _factory.createAnyMap();
    orderBy1.put(QueryConstants.ATTRIBUTE, _factory.createStringValue("att1"));
    orderBy1.put(QueryConstants.ORDER, _factory.createStringValue(QueryConstants.SortOrder.ASCENDING.toString()));
    orderBy.add(orderBy1);
    final AnyMap orderBy2 = _factory.createAnyMap();
    orderBy2.put(QueryConstants.ATTRIBUTE, _factory.createStringValue("att2"));
    orderBy2.put(QueryConstants.ORDER, _factory.createStringValue(QueryConstants.SortOrder.DESCENDING.toString()));
    orderBy.add(orderBy2);
    parameters.put(QueryConstants.SORTBY, orderBy);

    final QueryParameterAccessor accessor = new QueryParameterAccessor(_blackboard, id);
    final Iterator<String> names = accessor.getSortByAttributeNames();
    assertTrue(names.hasNext());
    String name = names.next();
    assertEquals("att1", name);
    assertEquals(QueryConstants.SortOrder.ASCENDING, accessor.getSortOrder(name));
    assertTrue(names.hasNext());
    name = names.next();
    assertEquals("att2", name);
    assertEquals(QueryConstants.SortOrder.DESCENDING, accessor.getSortOrder(name));
    assertFalse(names.hasNext());
    _blackboard.invalidate(id);
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSortByConfig() throws Exception {
    final String id = createBlackboardRecord(getClass().getName(), "testSortByConfig");
    final QueryParameterAccessor accessor = new QueryParameterAccessor(_blackboard, id);
    accessor.setPipeletConfiguration(createConfig());
    final Iterator<String> names = accessor.getSortByAttributeNames();
    assertTrue(names.hasNext());
    final String name = names.next();
    assertEquals("defaultSortAttribute", name);
    assertEquals(QueryConstants.SortOrder.ASCENDING, accessor.getSortOrder(name));
    assertFalse(names.hasNext());
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

    final AnyMap subProp = _factory.createAnyMap();
    subProp.put(QueryConstants.ATTRIBUTE, _factory.createStringValue("defaultSortAttribute"));
    subProp.put(QueryConstants.ORDER, _factory.createStringValue(QueryConstants.SortOrder.ASCENDING.name()));
    config.put(QueryConstants.SORTBY, subProp);
    ;
    return config;
  }

}
