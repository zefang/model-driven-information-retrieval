/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.search.api.helper;

import java.net.InetAddress;
import java.util.UUID;

import javax.xml.parsers.ParserConfigurationException;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.QueryConstants.SortOrder;
import org.eclipse.smila.search.api.SearchService;
import org.w3c.dom.Document;

/**
 * Builder for Query objects to send to a search service. Most methods just return the QueryBuilder they were called on
 * to make it easy to chain several methods call in a single code line.
 * 
 * @author jschumacher
 * 
 */
public class QueryBuilder {

  /**
   * Default data factory.
   */
  public static final DataFactory DEFAULT_FACTORY = DataFactoryCreator.createDefaultFactory();

  /**
   * IP address of host we are running on. Used as source of query record Ids.
   */
  private static String s_localhostIP;

  static {
    try {
      s_localhostIP = InetAddress.getLocalHost().getHostAddress();
    } catch (Exception ex) {
      // ignore
      ex = null;
    }
  }

  /**
   * name of pipeline to use for search.
   */
  private final String _workflowName;

  /**
   * query object.
   */
  private final Record _query;

  /**
   * factory for Any objects and Records.
   */
  private final DataFactory _factory;

  /**
   * init request for given pipeline with default data factory.
   * 
   * @param workflowName
   *          workflow name.
   */
  public QueryBuilder(final String workflowName) {
    this(workflowName, DEFAULT_FACTORY);
  }

  /**
   * create for non-default data factory.
   * 
   * @param workflowName
   *          workflow name.
   * @param factory
   *          data factory
   */
  public QueryBuilder(final String workflowName, final DataFactory factory) {
    _workflowName = workflowName;
    _factory = factory;
    _query = _factory.createRecord();
  }

  /**
   * create based on existing record.
   * 
   * @param workflowName
   *          workflow name.
   * @param request
   *          base request.
   */
  public QueryBuilder(final String workflowName, final Record request) {
    _workflowName = workflowName;
    _query = request;
    _factory = request.getFactory();
  }

  /**
   * set the ID of the query record. If the ID is not set by the client, the builder will create an Id just before the
   * request is executed, using the local IP address as source and a random {@link UUID} as key.
   * 
   * @param id
   *          Id
   * @return "this"
   */
  public QueryBuilder setId(final String id) {
    _query.setId(id);
    return this;
  }

  /**
   * set the textual query string for the query. The syntax of this string depends on the requirements of the retrieval
   * service used in the pipeline, so every string is accepted here and no syntax checking is done.
   * 
   * @param queryString
   *          textual query string.
   * @return "this"
   */
  public QueryBuilder setQuery(final String queryString) {
    getMetadata().put(QueryConstants.QUERY, _factory.createStringValue(queryString));
    return this;
  }

  /**
   * set attribute in "queryAttribute" part of request.
   * 
   * @param attributeName
   *          attribute name
   * @param values
   *          values.
   * @return "this"
   */
  public QueryBuilder setQueryAttribute(final String attributeName, final Object... values) {
    final Any queryPart = getMetadata().get(QueryConstants.QUERY);
    AnyMap attributes;
    if (queryPart != null && queryPart.isMap()) {
      attributes = (AnyMap) queryPart;
    } else {
      attributes = _factory.createAnyMap();
      getMetadata().put(QueryConstants.QUERY, attributes);
    }
    if (values.length == 1 && values[0] != null) {
      attributes.put(attributeName, _factory.parseFromObject(values[0]));
    } else {
      final AnySeq seq = _factory.createAnySeq();
      for (final Object value : values) {
        if (value != null) {
          seq.add(_factory.parseFromObject(value));
        }
      }
      attributes.put(attributeName, seq);
    }
    return this;
  }

  /**
   * set the maximum search result size for the query.
   * 
   * @param maxCount
   *          maximum result count.
   * @return "this"
   */
  public QueryBuilder setMaxCount(final int maxCount) {
    getMetadata().put(QueryConstants.MAXCOUNT, _factory.createLongValue(maxCount));
    return this;
  }

  /**
   * set the search result offset for the query, i.e. the number of most relevant result objects to skip in the result
   * list. Use this to implement paging on the result set.
   * 
   * @param offset
   *          result offset
   * @return "this"
   */
  public QueryBuilder setOffset(final int offset) {
    getMetadata().put(QueryConstants.OFFSET, _factory.createLongValue(offset));
    return this;
  }

  /**
   * set the threshold for the relevance value of search results, i.e. only results having a relevance of at least the
   * threshold value, should be returned to the client. Relevances are usually number between 0.0 (completely irrelevant
   * to the query) and 1.0 (perfect match), so the threshold value should be from the same range. However, as the search
   * API does not know about details of the used search engine, no checking is done and all double values are accepted.
   * 
   * @param threshold
   *          relevance threshold value.
   * @return "this"
   */
  public QueryBuilder setThreshold(final double threshold) {
    getMetadata().put(QueryConstants.THRESHOLD, _factory.createDoubleValue(threshold));
    return this;
  }

  /**
   * set the language parameter for the query. This is used by services/pipelets that have a language specific
   * functionality (e.g. stemming, spellchecking, recognition of currency values ...) to configure the language of the
   * query string. Usually the possible values are the standard locale codes like "en", "de".
   * 
   * @param language
   *          a language code.
   * @return "this"
   */
  public QueryBuilder setLanguage(final String language) {
    getMetadata().put(QueryConstants.LANGUAGE, _factory.createStringValue(language));
    return this;
  }

  /**
   * set the index name for the query. Some search engine integrations may be capable of managing multiple seperated
   * indexes and use this parameter to select the index to search in.
   * 
   * @param indexName
   *          index name
   * @return "this"
   */
  public QueryBuilder setIndexName(final String indexName) {
    getMetadata().put(QueryConstants.INDEXNAME, _factory.createStringValue(indexName));
    return this;
  }

  /**
   * set names attributes to appear in result records.
   * 
   * @param attributes
   *          attribute names.
   * @return "this"
   */
  public QueryBuilder setResultAttributes(final String... attributes) {
    final AnySeq seq = _factory.createAnySeq();
    for (final String attribute : attributes) {
      seq.add(_factory.createStringValue(attribute));
    }
    getMetadata().put(QueryConstants.RESULTATTRIBUTES, seq);
    return this;
  }

  /**
   * @param ranking
   *          set ranking configuration
   * @return "this"
   */
  public QueryBuilder setRanking(final Any ranking) {
    getMetadata().put(QueryConstants.RANKING, ranking);
    return this;
  }

  /**
   * add an sortby specification.
   * 
   * @param attribute
   *          an attribute to order by
   * @param mode
   *          the order direction (ascending or descending)
   * @return "this"
   */
  public QueryBuilder addSortBy(final String attribute, final SortOrder mode) {
    final AnyMap sortByAttribute = _factory.createAnyMap();
    sortByAttribute.put(QueryConstants.ORDER, _factory.createStringValue(mode.name().toLowerCase()));
    return addAttributeConfig(QueryConstants.SORTBY, attribute, sortByAttribute);
  }

  /**
   * @param attributes
   *          names of attributes to highlight
   * @return "this"
   */
  public QueryBuilder addHighlightAttributes(final String... attributes) {
    AnySeq highlight = getMetadata().getSeq(QueryConstants.HIGHLIGHT);
    if (highlight == null) {
      highlight = _factory.createAnySeq();
      getMetadata().put(QueryConstants.HIGHLIGHT, highlight);
    }
    for (final String attribute : attributes) {
      highlight.add(_factory.createStringValue(attribute));
    }
    return this;
  }

  /**
   * add groupby config for attribute with maxcount and sort config for groups.
   * 
   * @param attribute
   *          attribute name
   * @param maxCount
   *          max number of groups to return
   * @param sortCriterion
   *          sort criterion for groups, e.g. "value" or "count"
   * @param sortOrder
   *          sort order for groups
   * @return "this"
   */
  public QueryBuilder addGroupByAttribute(final String attribute, final int maxCount, final String sortCriterion,
    final SortOrder sortOrder) {
    final AnyMap groupBy = _factory.createAnyMap();
    groupBy.put(QueryConstants.MAXCOUNT, _factory.createLongValue(maxCount));
    final AnyMap sortBy = _factory.createAnyMap();
    sortBy.put(QueryConstants.GROUPBY_SORTCRITERION, _factory.createStringValue(sortCriterion));
    sortBy.put(QueryConstants.ORDER, _factory.createStringValue(sortOrder.name().toLowerCase()));
    groupBy.put(QueryConstants.SORTBY, sortBy);
    return addGroupByConfig(attribute, groupBy);
  }

  /**
   * add groupby config for attribute with maxcount.
   * 
   * @param attribute
   *          attribute name
   * @param maxCount
   *          max number of groups to return
   * @return "this"
   */
  public QueryBuilder addGroupByAttribute(final String attribute, final int maxCount) {
    final AnyMap groupBy = _factory.createAnyMap();
    groupBy.put(QueryConstants.MAXCOUNT, _factory.createLongValue(maxCount));
    return addGroupByConfig(attribute, groupBy);
  }

  /**
   * @param attribute
   *          attribute name
   * @param config
   *          groupBy config for this attribute
   * @return "this"
   */
  public QueryBuilder addGroupByConfig(final String attribute, final AnyMap config) {
    return addAttributeConfig(QueryConstants.GROUPBY, attribute, config);
  }

  /**
   * add a "oneOf" filter of allowed values for an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param values
   *          allowed values
   * @return "this"
   */
  public QueryBuilder addOneOfFilter(final String attribute, final Object... values) {
    return addListFilter(attribute, QueryConstants.FILTER_ONEOF, values);
  }

  /**
   * add a "allOf" filter of required values for an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param values
   *          required values
   * @return "this"
   */
  public QueryBuilder addAllOfFilter(final String attribute, final Object... values) {
    return addListFilter(attribute, QueryConstants.FILTER_ALLOF, values);
  }

  /**
   * add a "noneOf" filter of forbidden values for an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param values
   *          forbidden values
   * @return "this"
   */

  public QueryBuilder addNoneOfFilter(final String attribute, final Object... values) {
    return addListFilter(attribute, QueryConstants.FILTER_NONEOF, values);
  }

  /**
   * add a "atLeast" filter for the minimum (inclusive lower bound) value of an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param value
   *          minimum value
   * @return "this"
   */
  public QueryBuilder addAtLeastFilter(final String attribute, final Object value) {
    return addBoundFilter(attribute, QueryConstants.FILTER_ATLEAST, value);
  }

  /**
   * add a "atMost" filter for the maximum (inclusive upper bound) value of an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param value
   *          maximum value
   * @return "this"
   */
  public QueryBuilder addAtMostFilter(final String attribute, final Object value) {
    return addBoundFilter(attribute, QueryConstants.FILTER_ATMOST, value);
  }

  /**
   * add a "greaterThan" filter for the exclusive lower bound value of an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param value
   *          exclusive lower bound value
   * @return "this"
   */
  public QueryBuilder addGreaterThanFilter(final String attribute, final Object value) {
    return addBoundFilter(attribute, QueryConstants.FILTER_GREATERTHAN, value);
  }

  /**
   * add a "lessThan" filter for the exclusive upper bound value of an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param value
   *          exclusive upper bound value
   * @return "this"
   */
  public QueryBuilder addLessThanFilter(final String attribute, final Object value) {
    return addBoundFilter(attribute, QueryConstants.FILTER_LESSTHAN, value);
  }

  /**
   * add range filter (inclusive). bounds may be null.
   * 
   * @param attribute
   *          attribute name
   * @param lowerBound
   *          lower bound of range
   * @param upperBound
   *          upper bound of range
   * @return "this"
   */
  public QueryBuilder addRangeFilter(final String attribute, final Object lowerBound, final Object upperBound) {
    if (lowerBound == null && upperBound == null) {
      return this;
    }
    final AnyMap filter = _factory.createAnyMap();
    if (lowerBound != null) {
      filter.put(QueryConstants.FILTER_ATLEAST, _factory.parseFromObject(lowerBound));
    }
    if (upperBound != null) {
      filter.put(QueryConstants.FILTER_ATMOST, _factory.parseFromObject(upperBound));
    }
    return addFilter(attribute, filter);
  }

  /**
   * add a filter with a value list.
   * 
   * @param attribute
   *          attribute name
   * @param filterType
   *          filter type
   * @param values
   *          filter values
   * @return "this"
   */
  public QueryBuilder addListFilter(final String attribute, final String filterType, final Object... values) {
    final AnyMap filter = _factory.createAnyMap();
    final AnySeq oneOf = _factory.createAnySeq();
    for (final Object value : values) {
      oneOf.add(_factory.parseFromObject(value));
    }
    filter.put(filterType, oneOf);
    return addFilter(attribute, filter);
  }

  /**
   * add a filter with a single value bound.
   * 
   * @param attribute
   *          attribute name
   * @param filterType
   *          filter type
   * @param boundValue
   *          value
   * @return "this"
   */
  public QueryBuilder addBoundFilter(final String attribute, final String filterType, final Object boundValue) {
    final AnyMap filter = _factory.createAnyMap();
    filter.put(filterType, _factory.parseFromObject(boundValue));
    return addFilter(attribute, filter);
  }

  /**
   * add a arbitrary complex filter object for an attribute.
   * 
   * @param attribute
   *          attribute name
   * @param filter
   *          filter
   * @return "this"
   */
  public QueryBuilder addFilter(final String attribute, final AnyMap filter) {
    return addAttributeConfig(QueryConstants.FILTER, attribute, filter);
  }

  /**
   * add a complex parameter (ie. the given config) for an attribute: the parameter will be a sequence of maps, each
   * containing the attribute name under key "attribute". e.g.
   * 
   * <pre>
   * {Seq key='parameterName'
   *    ${config-map
   *      {Value key='attribute' value='$attributeName'}
   *    }
   * }
   * </pre>
   * 
   * @used interally by {@link #addFilter(String, AnyMap)}, {@link #addGroupByConfig(String, AnyMap)} and others
   * @param parameterName
   *          parameter name
   * @param attributeName
   *          attribute name
   * @param config
   *          the map which is added to the seq named param and inti which the attribute string/value is added.
   * @return "this"
   * 
   */
  public QueryBuilder addAttributeConfig(final String parameterName, final String attributeName, final AnyMap config) {
    AnySeq paramSeq = getMetadata().getSeq(parameterName);
    if (paramSeq == null) {
      paramSeq = _factory.createAnySeq();
      getMetadata().put(parameterName, paramSeq);
    }
    config.put(QueryConstants.ATTRIBUTE, _factory.createStringValue(attributeName));
    paramSeq.add(config);
    return this;
  }

  /**
   * sets a single parameter value.
   * 
   * @param name
   *          parameter name
   * @param value
   *          parameter value
   * @return "this"
   */
  public QueryBuilder setParameter(final String name, final String value) {
    getMetadata().put(name, _factory.createStringValue(value));
    return this;
  }

  /**
   * adds to a parameter sequence.
   * 
   * @param name
   *          parameter name
   * @param value
   *          parameter value
   * @return "this"
   */
  public QueryBuilder addParameter(final String name, final String value) {
    AnySeq values;
    if (getMetadata().containsKey(name)) {
      final Any current = getMetadata().get(name);
      if (current.isSeq()) {
        values = (AnySeq) current;
      } else {
        values = _factory.createAnySeq();
        values.add(current);
        getMetadata().put(name, values);
      }
    } else {
      values = _factory.createAnySeq();
      getMetadata().put(name, values);
    }
    values.add(_factory.createStringValue(value));
    return this;
  }

  /**
   * add attachment to query. Keep in mind that attachments are kept in memory in search processig, so you should care
   * about not adding large attachments.
   * 
   * @param name
   *          attachment name
   * @param attachment
   *          attachment content
   * @return "this"
   */
  public QueryBuilder setAttachment(final String name, final byte[] attachment) {
    _query.setAttachment(name, attachment);
    return this;
  }

  /**
   * execute query on given search service and wrap result in high level result helper.
   * 
   * @param searchService
   *          search service instance.
   * @return search result.
   * @throws ProcessingException
   *           any error while processing the search
   */
  public ResultAccessor executeRequest(final SearchService searchService) throws ProcessingException {
    ensureQueryId();
    final Record result = searchService.search(_workflowName, _query);
    return new ResultAccessor(_workflowName, result);
  }

  /**
   * execute query on given search service and return search result as XML DOM document.
   * 
   * @param searchService
   *          search service instance.
   * @return search result, or XML description of error that occurred in searcuh
   * @throws ParserConfigurationException
   *           error creating the XML result
   */
  public Document executeRequestXml(final SearchService searchService) throws ParserConfigurationException {
    ensureQueryId();
    return searchService.searchAsXml(_workflowName, _query);
  }

  /**
   * execute query on given search service and return search result as XML string.
   * 
   * @param searchService
   *          search service instance.
   * @return search result, or XML description of error that occurred in search
   * @throws ParserConfigurationException
   *           error creating the XML result
   */
  public String executeRequestXmlString(final SearchService searchService) throws ParserConfigurationException {
    ensureQueryId();
    return searchService.searchAsXmlString(_workflowName, _query);
  }

  /**
   * access underlying query record for advanced manipulation.
   * 
   * @return query record.
   */
  public Record getQuery() {
    return _query;
  }

  /**
   * access underlying query record metadata for advanced manipulation.
   * 
   * @return query record metadata.
   */
  public AnyMap getMetadata() {
    return _query.getMetadata();
  }

  /**
   * the name of the search pipeline to use.
   * 
   * @return pipeline name.
   */
  public String getWorkflowName() {
    return _workflowName;
  }

  /**
   * @return data factory used.
   */
  public DataFactory getFactory() {
    return _factory;
  }

  /**
   * create a ID for the query object, if the client did not set one. Use the local IP adress as source and create a
   * random UUID for the key. This makes it possible to use the ID for query logging.
   */
  private void ensureQueryId() {
    if (_query.getId() == null) {
      String source = s_localhostIP;
      if (source == null) {
        source = _workflowName;
      }
      final String key = UUID.randomUUID().toString();
      final String id = source + ":" + key;
      setId(id);
    }
  }

  /**
   * adds the given fieldNames as rsult field(s)
   */
  public QueryBuilder addResultAttributes(String... fieldNames) {
    for (String fieldName : fieldNames) {
      final Value value = getFactory().createStringValue(fieldName);
      getMetadata().add(QueryConstants.RESULTATTRIBUTES, value);
    }
    return this;
  }

}
