/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.search.api.test;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.QueryConstants.SortOrder;
import org.eclipse.smila.search.api.helper.QueryBuilder;

/**
 * test query building and reading.
 * 
 * @author jschumacher
 * 
 */
public class BuilderAndAccessorTest extends TestCase {
  /**
   * test setting of parameters and accessing them.
   * 
   * @throws Exception
   *           test fails.
   */
  public void testParameters() throws Exception {
    final QueryBuilder builder = new QueryBuilder("pipeline");
    builder.setLanguage("en").setQuery("what am i thinking of").setMaxCount(2).setOffset(1).setThreshold(1.0);
    builder.setParameter("single", "value").addParameter("multi", "value1").addParameter("multi", "value2");
    builder.addSortBy("date", SortOrder.DESCENDING).addSortBy("size", SortOrder.ASCENDING);
    builder.addGroupByAttribute("author", 1).addGroupByAttribute("company", 2, "count", SortOrder.DESCENDING);
    final Record record = builder.getQuery();
    assertNotNull(record);
    final AnyMap parameters = record.getMetadata();
    assertNotNull(parameters);
    assertEquals("en", parameters.getStringValue(QueryConstants.LANGUAGE));
    assertEquals("what am i thinking of", parameters.getStringValue(QueryConstants.QUERY));
    assertEquals(2, parameters.getLongValue(QueryConstants.MAXCOUNT).intValue());
    assertEquals(1, parameters.getLongValue(QueryConstants.OFFSET).intValue());
    assertEquals(1.0, parameters.getDoubleValue(QueryConstants.THRESHOLD).doubleValue());
    assertEquals("value", parameters.getStringValue("single"));
    final AnySeq values = parameters.getSeq("multi");
    assertNotNull(values);
    assertEquals(2, values.size());
    assertEquals("value1", values.getStringValue(0));
    assertEquals("value2", values.getStringValue(1));
    final AnySeq sortBy = parameters.getSeq(QueryConstants.SORTBY);
    assertEquals(2, sortBy.size());
    assertEquals("date", sortBy.getMap(0).getStringValue(QueryConstants.ATTRIBUTE));
    assertEquals(SortOrder.DESCENDING.name().toLowerCase(), sortBy.getMap(0).getStringValue(QueryConstants.ORDER));
    assertEquals("size", sortBy.getMap(1).getStringValue(QueryConstants.ATTRIBUTE));
    assertEquals(SortOrder.ASCENDING.name().toLowerCase(), sortBy.getMap(1).getStringValue(QueryConstants.ORDER));
    final AnySeq groupBy = parameters.getSeq(QueryConstants.GROUPBY);
    assertEquals(2, groupBy.size());
    assertEquals("author", groupBy.getMap(0).getStringValue(QueryConstants.ATTRIBUTE));
    assertEquals(1, groupBy.getMap(0).getLongValue(QueryConstants.MAXCOUNT).intValue());
    assertEquals("company", groupBy.getMap(1).getStringValue(QueryConstants.ATTRIBUTE));
    assertEquals(2, groupBy.getMap(1).getLongValue(QueryConstants.MAXCOUNT).intValue());
    assertEquals("count",
      groupBy.getMap(1).getMap(QueryConstants.SORTBY).getStringValue(QueryConstants.GROUPBY_SORTCRITERION));
    assertEquals(SortOrder.DESCENDING.name().toLowerCase(), groupBy.getMap(1).getMap(QueryConstants.SORTBY)
      .getStringValue(QueryConstants.ORDER));

  }

}
