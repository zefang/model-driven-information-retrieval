/*******************************************************************************
 * Copyright (c) 2009, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the 
 * Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.search.api.helper;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.parameters.MissingParameterException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.QueryConstants.SortOrder;

/**
 * access to Query parameters as defined in the SMILA search API.
 * 
 * @author scum36
 * 
 */
public class QueryParameterAccessor extends ParameterAccessor {
  /**
   * currently active sort-by configuration. is cleared on changes in the above fields.
   */
  private LinkedHashMap<String, SortOrder> _sortByConfig;

  /**
   * currently active filters. is cleared on changes in the above fields.
   */
  private LinkedHashMap<String, AnyMap> _filters;

  /**
   * create accessor for given blackboard and request record.
   * 
   * @param blackboard
   *          blackboard instance.
   * 
   * @param queryRecordId
   *          search request record
   */
  public QueryParameterAccessor(final Blackboard blackboard, final String queryRecordId) {
    super(blackboard, queryRecordId);
  }

  /**
   * create accessor for given blackboard and request record.
   * 
   * @param blackboard
   *          blackboard instance.
   * @param configuration
   *          pipelet configuration
   * @param queryRecordId
   *          search request record
   */
  public QueryParameterAccessor(final Blackboard blackboard, final AnyMap configuration, final String queryRecordId) {
    super(blackboard, configuration, queryRecordId);
  }

  /**
   * set the ID of the record to read parameters from.
   * 
   * @param queryRecordId
   *          current record to proces.
   * @return "this", make it easier to use this method immediately after constructor.
   */
  @Override
  public ParameterAccessor setCurrentRecord(final String queryRecordId) {
    super.setCurrentRecord(queryRecordId);
    clearParsedConfigs();
    return this;
  }

  /**
   * set the configuration of the current pipelet, to read fallback values for missing parameters.
   * 
   * @param config
   *          pipelet configuration.
   * @return "this", make it easier to use this method immediately after constructor
   */
  @Override
  public ParameterAccessor setPipeletConfiguration(final AnyMap config) {
    super.setPipeletConfiguration(config);
    clearParsedConfigs();
    return this;
  }

  /**
   * access to predefined parameters as supported in the search API.
   * 
   * @return textual query string. null, if none is set.
   */
  public String getQuery() {
    return getParameter(QueryConstants.QUERY, null);
  }

  /**
   * access to predefined parameters as supported in the search API.
   * 
   * @return textual query string.
   * @throws MissingParameterException
   *           if query is not set.
   */
  public String getQueryRequired() throws MissingParameterException {
    return getRequiredParameter(QueryConstants.QUERY);
  }

  /**
   * @return true, if the request contains a fielded query instead of a simple query string.
   */
  public boolean hasQueryAttributes() {
    final Any query = getParameterAny(QueryConstants.QUERY);
    return query != null && query.isMap();
  }

  /**
   * @return true, if the request contains a fielded query with the given attribute.
   * @param name
   *          attribute name
   */
  public boolean hasQueryAttribute(final String name) {
    final Any query = getParameterAny(QueryConstants.QUERY);
    if (query != null && query.isMap()) {
      final Any queryAttribute = ((AnyMap) query).get(name);
      return queryAttribute != null && (queryAttribute.isValue() || queryAttribute.isSeq());
    }
    return false;
  }

  /**
   * @param name
   *          query attribute name
   * @return values of query attribute.
   */
  public List<Value> getQueryAttributeValues(final String name) {
    final Any query = getParameterAny(QueryConstants.QUERY);
    if (query != null && query.isMap()) {
      final Any queryAttribute = ((AnyMap) query).get(name);
      if (queryAttribute != null) {
        final List<Value> values = new ArrayList<Value>();
        if (queryAttribute.isValue()) {
          values.add((Value) queryAttribute);
        } else if (queryAttribute.isSeq()) {
          for (final Any element : (AnySeq) queryAttribute) {
            if (element.isValue()) {
              values.add((Value) element);
            }
          }
        }
        return values;
      }
    }
    return null;

  }

  /**
   * get the value of result size parameter. Default value is 10.
   * 
   * 
   * @return value of result size parameter.
   */
  public int getMaxCount() {
    return getIntParameter(QueryConstants.MAXCOUNT, QueryConstants.DEFAULT_MAXCOUNT);
  }

  /**
   * get the value of result offset parameter. Default value is 0.
   * 
   * @return value of result offset parameter
   */
  public int getOffset() {
    return getIntParameter(QueryConstants.OFFSET, QueryConstants.DEFAULT_OFFSET);
  }

  /**
   * get the value of threshold parameter. Default value is 0.0.
   * 
   * @return value of threshold parameter
   */
  public double getThreshold() {
    return getFloatParameter(QueryConstants.THRESHOLD, QueryConstants.DEFAULT_THRESHOLD);
  }

  /**
   * get the value of language parameter. Default value is null
   * 
   * @return value of language parameter
   */
  public String getLanguage() {
    return getParameter(QueryConstants.LANGUAGE, null);
  }

  /**
   * get the value of indexName parameter. Default value is null
   * 
   * @return value of indexName parameter
   */
  public String getIndexName() {
    return getParameter(QueryConstants.INDEXNAME, null);
  }

  /**
   * Get the values (names of attributes) of resultAttributes parameter. Default value is an empty list.
   * 
   * @return values of resultAttributes parameter
   */
  public List<String> getResultAttributes() {
    List<String> values = getParameters(QueryConstants.RESULTATTRIBUTES);
    if (values == null || values.isEmpty()) {
      values = new ArrayList<String>();
      final String value = getParameter(QueryConstants.RESULTATTRIBUTES, null);
      if (value != null) {
        values.add(value);
      } // if
    } // if
    return values;
  }

  /**
   * @return sortby configs by attribute
   */
  public LinkedHashMap<String, SortOrder> getSortByConfig() {
    if (_sortByConfig == null) {
      _sortByConfig = new LinkedHashMap<String, SortOrder>();
      final List<AnyMap> annotations = getSubParameters(QueryConstants.SORTBY);
      if (annotations != null) {
        for (final AnyMap annotation : annotations) {
          final String attributeName = annotation.getStringValue(QueryConstants.ATTRIBUTE);
          final String orderModeValue = annotation.getStringValue(QueryConstants.ORDER);
          final SortOrder orderMode = SortOrder.valueOf(orderModeValue.toUpperCase());
          if (attributeName != null && orderMode != null) {
            _sortByConfig.put(attributeName, orderMode);
          }
        }
      }
    }
    return _sortByConfig;
  }

  /**
   * get iterator on names of attributes that have an order-by parameter set. Order of iteration is order of precedence
   * in ordering.
   * 
   * @return names of attributes to be ordered.
   */
  public Iterator<String> getSortByAttributeNames() {
    return getSortByConfig().keySet().iterator();
  }

  /**
   * get sort order for an attribute.
   * 
   * @param attributeName
   *          attribute name
   * @return order for attribute, if specified, or null else.
   */
  public SortOrder getSortOrder(final String attributeName) {
    return getSortByConfig().get(attributeName);
  }

  /**
   * @return iterator on names of attributes mentioned in highlight config.
   */
  public List<String> getHighlightAttributeNames() {
    return getParameters(QueryConstants.HIGHLIGHT);
  }

  /**
   * @return filters by attribute
   */
  public LinkedHashMap<String, AnyMap> getFilters() {
    if (_filters == null) {
      _filters = new LinkedHashMap<String, AnyMap>();
      for (final AnyMap filter : getSubParameters(QueryConstants.FILTER)) {
        if (filter.containsKey(QueryConstants.ATTRIBUTE)) {
          _filters.put(filter.getStringValue(QueryConstants.ATTRIBUTE), filter);
        }
      }
    }
    return _filters;
  }

  /**
   * @return true if query has filters on attributes.
   */
  public boolean hasFilters() {
    return getFilters() != null && !getFilters().isEmpty();
  }

  /**
   * @return iterator on names of attributes for which filters are defined
   */
  public Iterator<String> getFilterAttributeNames() {
    return getFilters().keySet().iterator();
  }

  /**
   * 
   * @param attributeName
   *          filter attribute name
   * @return attribute filter. Null, if no filter is set.
   */
  public AnyMap getFilter(final String attributeName) {
    return getFilters().get(attributeName);
  }

  /**
   * @return content of ranking parameter.
   */
  public Any getRankingConfig() {
    return getParameterAny(QueryConstants.RANKING);
  }

  /** @return content of groupby parameter */
  public List<AnyMap> getGroupByConfig() {
    return getSubParameters(QueryConstants.GROUPBY);
  }

  /**
   * reset parsed config after change of record or config.
   */
  private void clearParsedConfigs() {
    _sortByConfig = null;
    _filters = null;
  }
}
