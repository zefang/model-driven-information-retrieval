/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation, Andreas Schank (Attensity Europe GmbH) -
 * separated API from implementation, refactored: integrated indexing and search service.
 **********************************************************************************************************************/

package org.eclipse.smila.lucene.internal;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;
import org.eclipse.smila.lucene.LuceneIndexService;
import org.eclipse.smila.lucene.LuceneSearchService;
import org.eclipse.smila.lucene.LuceneService;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.search.datadictionary.DataDictionaryController;
import org.eclipse.smila.search.datadictionary.DataDictionaryException;
import org.eclipse.smila.search.datadictionary.messages.datadictionary.DAnyFinderDataDictionary;
import org.eclipse.smila.search.datadictionary.messages.datadictionary.DIndex;
import org.eclipse.smila.search.datadictionary.messages.ddconfig.DField;
import org.eclipse.smila.search.datadictionary.messages.ddconfig.DFieldConfig;
import org.eclipse.smila.search.index.IndexAdmin;
import org.eclipse.smila.search.index.IndexConnection;
import org.eclipse.smila.search.index.IndexException;
import org.eclipse.smila.search.index.IndexManager;
import org.eclipse.smila.search.lucene.index.access.IndexWriterPool;
import org.eclipse.smila.search.lucene.tools.search.lucene.DTextFieldParameter;
import org.eclipse.smila.search.lucene.tools.search.lucene.DTextFieldParameter.DOperator;
import org.eclipse.smila.search.lucene.tools.search.lucene.DTextFieldParameter.DTolerance;
import org.eclipse.smila.search.plugin.IIndexAccess;
import org.eclipse.smila.search.plugin.Plugin;
import org.eclipse.smila.search.plugin.PluginFactory;
import org.eclipse.smila.search.templates.NodeTransformerException;
import org.eclipse.smila.search.utils.search.DQuery;
import org.eclipse.smila.search.utils.search.DTextField;
import org.eclipse.smila.search.utils.searchresult.DHit;
import org.eclipse.smila.search.utils.searchresult.LuceneSearchResult;
import org.eclipse.smila.utils.log.RecordLifecycleLogHelper;
import org.osgi.service.component.ComponentContext;

/**
 * Abstract base class for services dealing with Lucene.
 */
public class LuceneServiceImpl implements LuceneService, LuceneSearchService, LuceneIndexService {

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(LuceneServiceImpl.class);

  /**
   * Reverse mappings of fieldNo to attribute names.
   */
  private HashMap<String, HashMap<String, HashMap<Integer, String>>> _reverseMappings =
    new HashMap<String, HashMap<String, HashMap<Integer, String>>>();

  /**
   * Reference to the DataDictioanry.
   */
  private DAnyFinderDataDictionary _dataDictionary;

  /**
   * The mappings in a multi map format.
   */
  private HashMap<String, HashMap<String, HashMap<String, Integer>>> _mappings;

  /**
   * The index admin.
   */
  private IndexAdmin _indexAdmin;

  /**
   * The _indices.
   */
  private Set<String> _indices = Collections.synchronizedSet(new HashSet<String>());

  /**
   * process methods use read lock, deactivate needs write lock.
   */
  private final ReadWriteLock _lock = new ReentrantReadWriteLock(true);

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   * 
   * @throws Exception
   *           if any error occurs
   */
  protected void activate(final ComponentContext context) throws Exception {
    try {
      loadMappings();
      loadReverseMappings();
      _dataDictionary = DataDictionaryController.getDataDictionary();
    } catch (final Exception e) {
      if (_log.isErrorEnabled()) {
        _log.error("error initializing LuceneSearchService", e);
      }
      throw e;
    }
    synchronized (_indices) {
      try {
        loadMappings();

        final Plugin plugin = PluginFactory.getPlugin();
        final IIndexAccess indexAccess = plugin.getIndexAccess();
        _indexAdmin = indexAccess.getIndexAdmin();
        final DAnyFinderDataDictionary dic = DataDictionaryController.getDataDictionary();
        final Enumeration<DIndex> indices = dic.getIndices();
        while (indices.hasMoreElements()) {
          final DIndex dIndex = indices.nextElement();
          if (!_indexAdmin.exists(dIndex.getName())) {
            if (_log.isInfoEnabled()) {
              _log.info("Physical Index [" + dIndex.getName() + "] doesn´t exist. Adapt DataDictionary.");
            }
            DataDictionaryController.deleteIndex(dIndex.getName());
          } else {
            _indices.add(dIndex.getName());
          }
        }
      } catch (final Exception e) {
        if (_log.isErrorEnabled()) {
          _log.error("error initializing LuceneIndexService", e);
        }
        throw e;
      }
    }
  }

  /**
   * DS deactivate method.
   * 
   * @param context
   *          the ComponentContext
   * 
   * @throws Exception
   *           if any error occurs
   */
  protected void deactivate(final ComponentContext context) throws Exception {
    try {
      unloadReverseMappings();
      unloadMappings();
      _dataDictionary = null;
    } catch (final Exception e) {
      if (_log.isErrorEnabled()) {
        _log.error("error deactivating LuceneSearchService", e);
      }
      throw e;
    }
    _lock.writeLock().lock();
    try {
      _indices = null;
      _indexAdmin = null;
      unloadMappings();
    } catch (final Exception e) {
      if (_log.isErrorEnabled()) {
        _log.error("error deactivating LuceneIndexService", e);
      }
      throw e;
    } finally {
      _lock.writeLock().unlock();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void search(final Blackboard blackboard, final String requestId, final QueryParameterAccessor parameters)
    throws BlackboardAccessException, IndexException, DataDictionaryException, NodeTransformerException,
    ProcessingException {
    IndexConnection indexConnection = null;
    try {
      final String indexName = parameters.getIndexName();
      indexConnection = IndexManager.getInstance(indexName);
      if (indexConnection != null) {
        final AnyMap request = blackboard.getMetadata(requestId);
        DQuery dQuery = null;
        if (hasQueryString(parameters)) {
          dQuery = createSimpleQuery(parameters, indexName);
        } else if (hasAttributeQuery(parameters, indexName)) {
          dQuery = createFieldedQuery(parameters, indexName);
        }

        // append any filters to the query
        dQuery = appendFilter(dQuery, parameters, indexName);

        // check if a DQueryExpression exists and execute it
        if (dQuery != null) {
          // append the field numbers for the result attributes
          dQuery = appendResultFields(dQuery, parameters, indexName);

          // append the field numbers for all attrributes with a highlight annotation
          dQuery = appendHiglightingFields(dQuery, parameters, indexName);

          // execute expression query
          final LuceneSearchResult result = indexConnection.doQuery(dQuery);

          // process lucene result
          processResult(request, result);
        } else {
          request.put(SearchResultConstants.RECORDS, request.getFactory().createAnySeq());
          request.put(SearchResultConstants.COUNT, request.getFactory().createLongValue(0));
        }
      } else {
        throw new IndexException("Could not open connection to index " + indexName);
      }
    } finally {
      if (indexConnection != null) {
        IndexManager.releaseInstance(indexConnection, false);
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void addRecord(final Blackboard blackboard, final String id, final String indexName,
    final boolean allowDoublets) throws BlackboardAccessException, IndexException, IOException,
    ParserConfigurationException {
    _lock.readLock().lock();
    IndexConnection indexConnection = null;
    try {
      if (!isIndexExists(indexName)) {
        synchronized (_indices) {
          if (!isIndexExists(indexName)) {
            createIndex(indexName);
          }
        }
      }
      indexConnection = IndexManager.getInstance(indexName);
      if (indexConnection != null) {
        if (!allowDoublets && indexConnection.docExists(id)) {
          indexConnection.deleteDocument(id);
        }
        final HashMap<String, HashMap<String, Integer>> indexMap = getMappings().get(indexName);
        if (indexMap != null) {
          indexConnection.learnDocument(blackboard, id, indexMap.get(MappingsLoader.ATTRIBUTES),
            indexMap.get(MappingsLoader.ATTACHMENTS));
          if (_log.isInfoEnabled()) {
            _log.info("adding record " + id + " to Lucene index");
          }
        } else {
          throw new IndexException("Could not find a mapping in file " + CONFIG_FILE_MAPPINGS + " for index "
            + indexName);
        }
      } else {
        throw new IndexException("Could not open connection to index " + indexName);
      }
    } finally {
      if (indexConnection != null) {
        IndexManager.releaseInstance(indexConnection, false);
      }
      _lock.readLock().unlock();
    }
    if (RecordLifecycleLogHelper.isRecordStateLogEnabled()) {
      RecordLifecycleLogHelper.logRecordState("Record added to lucene index", id);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void deleteRecord(final String id, final String indexName) throws IndexException {
    _lock.readLock().lock();
    IndexConnection indexConnection = null;
    try {
      indexConnection = IndexManager.getInstance(indexName);
      if (indexConnection != null) {
        indexConnection.deleteDocument(id);
        if (_log.isInfoEnabled()) {
          _log.info("deleted record " + id + " from Lucene index");
        }
      } else {
        throw new IndexException("Could not open connection to index " + indexName);
      }
    } finally {
      if (indexConnection != null) {
        IndexManager.releaseInstance(indexConnection, false);
      }
      _lock.readLock().unlock();
    }
    if (RecordLifecycleLogHelper.isRecordStateLogEnabled()) {
      RecordLifecycleLogHelper.logRecordState("Record deleted from lucene index", id);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean isIndexExists(final String indexName) throws IndexException {
    return _indices.contains(indexName);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void reorganizeIndex(final String indexName) throws IndexException {
    _lock.readLock().lock();
    try {
      _indexAdmin.reorganize(indexName);
    } finally {
      _lock.readLock().unlock();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void createIndex(final String indexName) throws IndexException {
    synchronized (_indices) {
      if (isIndexExists(indexName)) {
        throw new IndexException(String.format("Index [%s] already exists", indexName));
      }
      try {
        _lock.readLock().lock();
        DataDictionaryController.addIndex(indexName);
        final DIndex dIndex = DataDictionaryController.getIndex(indexName);
        _indexAdmin.create(dIndex.getIndexStructure());
        _indices.add(dIndex.getName());
      } catch (final DataDictionaryException e) {
        throw new IndexException(e);
      } finally {
        _lock.readLock().unlock();
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void deleteIndex(final String indexName) throws IndexException {
    synchronized (_indices) {
      _lock.readLock().lock();
      try {
        _indexAdmin.delete(indexName);
        _indices.remove(indexName);
      } finally {
        _lock.readLock().unlock();
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void renameIndex(final String indexName, final String newIndexName) throws IndexException {
    synchronized (_indices) {
      _lock.readLock().lock();
      try {
        _indexAdmin.rename(indexName, newIndexName);
        _indices.remove(indexName);
        _indices.add(newIndexName);
      } finally {
        _lock.readLock().unlock();
      }
    }
  }

  /**
   * Returns the names of all available indexes.
   * 
   * @return an iterator over index names
   */
  @Override
  public Iterator<String> getIndexNames() {
    return _indices.iterator();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void flushIndex(final String indexName) throws IndexException {
    _lock.readLock().lock();
    try {
      IndexWriterPool.flushIndexWriter(indexName);
    } finally {
      _lock.readLock().unlock();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void removeWriteLock(final String indexName) throws IndexException {
    _lock.readLock().lock();
    try {
      final IndexConnection indexConnection = IndexManager.getInstance(indexName);
      if (indexConnection != null) {
        indexConnection.unlock();
      }
    } finally {
      _lock.readLock().unlock();
    }
  }

  /**
   * Loads the mappings.
   */
  protected void loadMappings() {
    _mappings = MappingsLoader.loadMappingsMap(CONFIG_FILE_MAPPINGS);
  }

  /**
   * Unloads the mappings.
   */
  protected void unloadMappings() {
    if (_mappings != null) {
      final Collection<HashMap<String, HashMap<String, Integer>>> collection = _mappings.values();
      for (final HashMap<String, HashMap<String, Integer>> map : collection) {
        if (map != null) {
          final Collection<HashMap<String, Integer>> values = map.values();
          for (final HashMap<String, Integer> submap : values) {
            if (submap != null) {
              submap.clear();
            }
          }
          map.clear();
        }
      }
      _mappings.clear();
      _mappings = null;
    }
  }

  /**
   * Returns the mappings.
   * 
   * @return the mappings.
   */
  protected HashMap<String, HashMap<String, HashMap<String, Integer>>> getMappings() {
    return _mappings;
  }

  /**
   * Checks if the ParameterAccessor contain a query.
   * 
   * @param parameters
   *          the ParameterAccessor
   * @return true if the ParameterAccessor contains a query, false otherwise
   */
  private boolean hasQueryString(final QueryParameterAccessor parameters) {
    final String queryString = parameters.getQuery();
    if (queryString != null && queryString.trim().length() != 0) {
      return true;
    }
    return false;
  }

  /**
   * Checks the query record if it contains attributes for the configured IndexFields with Literal values.
   * 
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name of the index
   * @return true if the record contains such attributes, false otherwise
   * @throws BlackboardAccessException
   *           if any error occurs
   */
  private boolean hasAttributeQuery(final QueryParameterAccessor parameters, final String indexName)
    throws BlackboardAccessException {
    if (parameters.hasQueryAttributes()) {
      final DIndex dIndex = _dataDictionary.getIndex(indexName);
      final Iterator<DField> fieldIt = dIndex.getConfiguration().getDefaultConfig().getFields();
      while (fieldIt.hasNext()) {
        final DField field = fieldIt.next();
        final String attributeName = getAttributeName(indexName, field.getFieldNo());
        if (parameters.hasQueryAttribute(attributeName)) {
          return true;
        }
      }
    }
    return false;
  }

  /**
   * Creates a simple query based on a single TextFiled.
   * 
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name of the index
   * @return a DQuery object
   * @throws ProcessingException
   *           if parameter SEARCH_ANNOTATION_QUERY_ATTRIBUTE is not set or any other error occurs
   */
  private DQuery createSimpleQuery(final QueryParameterAccessor parameters, final String indexName)
    throws ProcessingException {
    final String queryAttribute = parameters.getRequiredParameter(SEARCH_ANNOTATION_QUERY_ATTRIBUTE);
    final int fieldNo = getFieldNo(indexName, queryAttribute);
    final DField field =
      _dataDictionary.getIndex(indexName).getConfiguration().getDefaultConfig().getField(fieldNo);
    final DFieldConfig fieldConfig = field.getFieldConfig();

    final org.eclipse.smila.search.utils.search.DTextField textField =
      new org.eclipse.smila.search.utils.search.DTextField();
    textField.setFieldNo(field.getFieldNo());
    textField.setType(fieldConfig.getType());
    textField.setText(parameters.getQuery());

    final DQuery dQuery = createDQuery(parameters, indexName);
    dQuery.addField(textField);
    return dQuery;
  }

  /**
   * Creates a fielded query.
   * 
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name of the index
   * @return a DQuery object
   * @throws ProcessingException
   *           if any error occurs
   */
  private DQuery createFieldedQuery(final QueryParameterAccessor parameters, final String indexName)
    throws ProcessingException {
    final DQuery dQuery = createDQuery(parameters, indexName);
    final DIndex dIndex = _dataDictionary.getIndex(indexName);
    final Iterator<DField> fieldIt = dIndex.getConfiguration().getDefaultConfig().getFields();
    final Any rankingConfig = parameters.getRankingConfig();
    AnyMap rankingConfigMap = null;
    if (rankingConfig != null && rankingConfig.isMap() && !rankingConfig.isEmpty()) {
      rankingConfigMap = rankingConfigMap;
    }
    while (fieldIt.hasNext()) {
      final DField field = fieldIt.next();
      final String attributeName = getAttributeName(indexName, field.getFieldNo());
      if (parameters.hasQueryAttribute(attributeName)) {
        final List<Value> values = parameters.getQueryAttributeValues(attributeName);
        if (values != null && !values.isEmpty()) {
          final org.eclipse.smila.search.utils.search.DField searchField =
            createSearchField(field, values, parameters);
          setRankingParameters(searchField, rankingConfigMap, attributeName);
          dQuery.addField(searchField);
        }
      }
    }
    return dQuery;
  }

  /**
   * Appends a filter to the given dQuery. If no dQuery exists but a filter is provided a dQuery will be created.
   * 
   * @param dQuery
   *          the dQuery to append the filter to
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name for the index
   * @return a dQuery or null
   * @throws ProcessingException
   *           if any error occurs
   */
  private DQuery appendFilter(DQuery dQuery, final QueryParameterAccessor parameters, final String indexName)
    throws ProcessingException {
    if (parameters.hasFilters()) {
      final DIndex dIndex = _dataDictionary.getIndex(indexName);
      final Iterator<DField> fieldIt = dIndex.getConfiguration().getDefaultConfig().getFields();
      while (fieldIt.hasNext()) {
        final DField field = fieldIt.next();
        final String attributeName = getAttributeName(indexName, field.getFieldNo());
        final AnyMap filter = parameters.getFilter(attributeName);
        if (filter != null) {
          // ensure a dquery exists
          if (dQuery == null) {
            dQuery = createDQuery(parameters, indexName);
          }
          final org.eclipse.smila.search.utils.search.DField searchField = createSearchFilter(field, filter);
          dQuery.addField(searchField);
        } // if
      } // while
    }
    return dQuery;
  }

  /**
   * Appends the resultFields (if any) to the given dQuery and returns it.
   * 
   * @param dQuery
   *          the DQuery to append the highlighting fields to
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name of the index
   * @return the modified DQuery
   */
  private DQuery appendResultFields(final DQuery dQuery, final QueryParameterAccessor parameters,
    final String indexName) {
    final List<String> resultAttributes = parameters.getResultAttributes();
    if (resultAttributes != null) {
      final ArrayList<Integer> resultFields = new ArrayList<Integer>(resultAttributes.size());
      for (final String attributeName : resultAttributes) {
        try {
          resultFields.add(getFieldNo(indexName, attributeName));
        } catch (final Exception e) {
          if (_log.isWarnEnabled()) {
            _log.warn("error appending result fieldNo for attribute " + attributeName, e);
          }
        }
      } // for

      if (!resultFields.isEmpty()) {
        dQuery.setResultFields(resultFields);
      }

    } // if
    return dQuery;
  }

  /**
   * Appends the highlightingFields (if any) to the given dQuery and returns it.
   * 
   * @param dQuery
   *          the DQuery to append the highlighting fields to
   * @param parameters
   *          query parameters
   * @param indexName
   *          the name of the index
   * @return the modified DQuery
   * @throws BlackboardAccessException
   *           if any error occurs
   */
  private DQuery appendHiglightingFields(final DQuery dQuery, final QueryParameterAccessor parameters,
    final String indexName) throws BlackboardAccessException {
    final ArrayList<Integer> highlightFields = new ArrayList<Integer>();
    final List<String> attributeNames = parameters.getHighlightAttributeNames();
    if (attributeNames != null) {
      for (final String attributeName : attributeNames) {
        try {
          highlightFields.add(getFieldNo(indexName, attributeName));
        } catch (final Exception e) {
          if (_log.isWarnEnabled()) {
            _log.warn("error appending highlight fieldNo for attribute " + attributeName, e);
          }
        }
      }
    }
    if (!highlightFields.isEmpty()) {
      dQuery.setHighlightFields(highlightFields);
    }
    return dQuery;
  }

  /**
   * Creates a basic DQuery object setting global parameters.
   * 
   * @param parameters
   *          the ParameterAccessor
   * @param indexName
   *          the name of the Index
   * @return a DQuery object
   */
  private DQuery createDQuery(final QueryParameterAccessor parameters, final String indexName) {
    final DQuery dQuery = new DQuery();
    dQuery.setIndexName(indexName);
    dQuery.setMaxHits(parameters.getMaxCount());
    dQuery.setStartHits(parameters.getOffset());
    dQuery.setMinSimilarity((int) (parameters.getThreshold() * 100));
    dQuery.setShowHitDistribution(true);

    // these parameters are set by special annotations
    dQuery.setTemplateSelectorName(parameters.getParameter(SEARCH_ANNOTATION_TEMPLATE_SELECTOR_NAME, ""));

    return dQuery;
  }

  /**
   * Creates a search.DField from the given ddconfig.DField and the associated Attribute.
   * 
   * @param field
   *          the DField
   * @param values
   *          the record Attribute
   * @param parameters
   *          query parameters
   * @return a org.eclipse.smila.search.utils.search.DField object
   * @throws ProcessingException
   *           if any error occurs
   */
  private org.eclipse.smila.search.utils.search.DField createSearchField(final DField field,
    final List<Value> values, final QueryParameterAccessor parameters) throws ProcessingException {
    final DFieldConfig fieldConfig = field.getFieldConfig();
    final String type = fieldConfig.getType();
    org.eclipse.smila.search.utils.search.DField searchField;
    // create Field depending on type
    if ("FTText".equals(type)) {
      searchField = createTextField(values);
    } else if ("FTDate".equals(type)) {
      searchField = createDateField(values);
    } else if ("FTNumber".equals(type)) {
      searchField = createNumberField(values);
    } else {
      throw new ProcessingException("unknown FieldConfig type " + type);
    }
    // set fieldNo and type
    searchField.setFieldNo(field.getFieldNo());
    searchField.setType(fieldConfig.getType());
    return searchField;
  }

  /**
   * Creates a DTextField from the given attribute.
   * 
   * @param values
   *          the Attribute
   * @return a org.eclipse.smila.search.utils.search.DTextField object
   */
  private org.eclipse.smila.search.utils.search.DTextField createTextField(final List<Value> values) {
    final org.eclipse.smila.search.utils.search.DTextField textField =
      new org.eclipse.smila.search.utils.search.DTextField();
    textField.setText(values.get(0).asString());
    return textField;
  }

  /**
   * set ranking parameters, if search field is a text field. Ranking configuration is not supported for other field
   * types currently.
   * 
   * @param searchField
   *          search field
   * @param ranking
   *          ranking config from query parameters, may be null or empty.
   * @param attributeName
   *          attribute name.
   */
  private void setRankingParameters(final org.eclipse.smila.search.utils.search.DField searchField,
    final AnyMap ranking, final String attributeName) {
    if (ranking != null && !ranking.isEmpty() && searchField instanceof DTextField) {
      AnyMap attributeRanking;
      if (ranking.containsKey(attributeName)) {
        attributeRanking = ranking.getMap(attributeName);
      } else {
        attributeRanking = ranking;
      }
      if (attributeRanking.containsKey(RANKING_OPERATOR) || attributeRanking.containsKey(RANKING_TOLERANCE)) {
        final org.eclipse.smila.search.utils.search.DTextField textField = (DTextField) searchField;
        final DTextFieldParameter parameter = new DTextFieldParameter();
        final String operator = attributeRanking.getStringValue(RANKING_OPERATOR);
        if (operator != null) {
          parameter.setOperator(DOperator.getInstance(operator));
        }
        final String tolerance = attributeRanking.getStringValue(RANKING_TOLERANCE);
        if (tolerance != null) {
          parameter.setTolerance(DTolerance.getInstance(tolerance));
        }
        textField.setParameter(parameter);
      }
    }
  }

  /**
   * Creates a DDateField from the given attribute.
   * 
   * @param values
   *          the Attribute
   * @return a org.eclipse.smila.search.utils.search.DDateField object
   * @throws ProcessingException
   *           if any error occurs
   */
  private org.eclipse.smila.search.utils.search.DDateField createDateField(final List<Value> values)
    throws ProcessingException {
    final org.eclipse.smila.search.utils.search.DDateField dateField =
      new org.eclipse.smila.search.utils.search.DDateField();
    try {
      if (values.size() == 1) {
        final Value value = values.get(0);
        final Date date = getDate(value, new ValueFormatHelper());
        final Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        dateField.setDateMin(calendar);
        dateField.setDateMax(calendar);
      }
    } catch (final ParseException e) {
      throw new ProcessingException("error parsing date object " + values.get(0), e);
    }
    // no parameters to set
    // dateField.setParameter(parameter);
    return dateField;
  }

  /**
   * Creates a DNumberField from the given attribute.
   * 
   * @param values
   *          the Attribute
   * @return a org.eclipse.smila.search.utils.search.DNumberField object
   */
  private org.eclipse.smila.search.utils.search.DNumberField createNumberField(final List<Value> values) {
    final org.eclipse.smila.search.utils.search.DNumberField numberField =
      new org.eclipse.smila.search.utils.search.DNumberField();
    final Long value = getLong(values.get(0));
    numberField.setMin(value);
    numberField.setMax(value);
    // no parameters to set
    // numberField.setParameter(parameter);
    return numberField;
  }

  /**
   * Creates a search.DField from the given ddconfig.DField and the associated filter annotation.
   * 
   * @param field
   *          the field
   * @param filter
   *          the filter description
   * @return a org.eclipse.smila.search.utils.search.DField object
   * @throws ProcessingException
   *           if any error occurs
   */
  private org.eclipse.smila.search.utils.search.DField createSearchFilter(final DField field, final AnyMap filter)
    throws ProcessingException {
    final DFieldConfig fieldConfig = field.getFieldConfig();
    final String type = fieldConfig.getType();
    org.eclipse.smila.search.utils.search.DField searchField;
    // create Field depending on type
    if ("FTText".equals(type)) {
      throw new ProcessingException("FTText does not support filter annotations");
    } else if ("FTDate".equals(type)) {
      searchField = createDateFilter(filter);
    } else if ("FTNumber".equals(type)) {
      searchField = createNumberFilter(filter);
    } else {
      throw new ProcessingException("unknown FieldConfig type " + type);
    }
    // set fieldNo and type
    searchField.setFieldNo(field.getFieldNo());
    searchField.setType(fieldConfig.getType());
    return searchField;
  }

  /**
   * Creates a DDateField for the given filter annotation.
   * 
   * @param filter
   *          the filter description
   * @return a DDateField
   * @throws ProcessingException
   *           if any error occurs
   */
  private org.eclipse.smila.search.utils.search.DDateField createDateFilter(final AnyMap filter)
    throws ProcessingException {
    final org.eclipse.smila.search.utils.search.DDateField dateField =
      new org.eclipse.smila.search.utils.search.DDateField();
    Value minValue = filter.getValue(QueryConstants.FILTER_ATLEAST);
    if (minValue == null) {
      minValue = filter.getValue(QueryConstants.FILTER_GREATERTHAN);
    }
    Value maxValue = filter.getValue(QueryConstants.FILTER_ATMOST);
    if (maxValue == null) {
      maxValue = filter.getValue(QueryConstants.FILTER_LESSTHAN);
    }
    if (minValue != null || maxValue != null) {
      final ValueFormatHelper helper = new ValueFormatHelper();
      try {
        final Calendar minCalendar = Calendar.getInstance();
        if (minValue != null) {
          final Date minDate = getDate(minValue, helper);
          minCalendar.setTime(minDate);
        } else {
          minCalendar.setTimeInMillis(0);
        }
        final Calendar maxCalendar = Calendar.getInstance();
        if (maxValue != null) {
          final Date maxDate = getDate(maxValue, helper);
          maxCalendar.setTime(maxDate);
        } else {
          maxCalendar.setTimeInMillis(Long.MAX_VALUE);

        }
        dateField.setDateMin(minCalendar);
        dateField.setDateMax(maxCalendar);
      } catch (final ParseException e) {
        throw new ProcessingException("error parsing date object of filter " + filter, e);
      }
    } else {
      throw new ProcessingException("");
    }
    return dateField;
  }

  /**
   * Creates a DNumberField for the given filter annotation.
   * 
   * @param filter
   *          the filter description
   * @return a DNumberField
   * @throws ProcessingException
   *           if any error occurs
   */
  private org.eclipse.smila.search.utils.search.DNumberField createNumberFilter(final AnyMap filter)
    throws ProcessingException {
    final org.eclipse.smila.search.utils.search.DNumberField numberField =
      new org.eclipse.smila.search.utils.search.DNumberField();
    Value minValue = filter.getValue(QueryConstants.FILTER_ATLEAST);
    if (minValue == null) {
      minValue = filter.getValue(QueryConstants.FILTER_GREATERTHAN);
    }
    Value maxValue = filter.getValue(QueryConstants.FILTER_ATMOST);
    if (maxValue == null) {
      maxValue = filter.getValue(QueryConstants.FILTER_LESSTHAN);
    }
    if (minValue != null || maxValue != null) {
      long min = Long.MIN_VALUE;
      if (minValue != null) {
        min = getLong(minValue);
      }
      long max = Long.MAX_VALUE;
      if (maxValue != null) {
        max = getLong(maxValue);
      }
      numberField.setMin(min);
      numberField.setMax(max);
    } else {
      throw new ProcessingException("");
    }
    return numberField;
  }

  /**
   * Processes the lucene result and create result records.
   * 
   * @param request
   *          request metadata
   * @param luceneResult
   *          the Result
   */
  private void processResult(final AnyMap request, final LuceneSearchResult luceneResult) {
    int totalHits = 0;
    int indexSize = 0;
    final AnySeq records = request.getFactory().createAnySeq();
    if (luceneResult != null && luceneResult.getResultList() != null) {
      // global infos
      final int[] hitStatistic = getHitStatistics(luceneResult);
      totalHits = hitStatistic[0];
      indexSize = hitStatistic[1];
      for (final Record record : luceneResult.getResultList()) {
        records.add(record.getMetadata());
      }
    }
    request.put(SearchResultConstants.COUNT, request.getFactory().createLongValue(totalHits));
    request.put(SearchResultConstants.INDEX_SIZE, request.getFactory().createLongValue(indexSize));
    request.put(SearchResultConstants.RECORDS, records);
  }

  /**
   * Returns the total number of hits and the size of the index.
   * 
   * @param luceneResult
   *          the lucene result
   * @return an array containing the total number of hits (pos 0) and the indes size (pos 1)
   */
  private int[] getHitStatistics(final LuceneSearchResult luceneResult) {
    int resultCount = 0;
    int docsIndexed = 0;
    final Enumeration<DHit> hitEnum = luceneResult.getHitDistribution().getHits();
    while (hitEnum.hasMoreElements()) {
      final DHit hit = hitEnum.nextElement();
      if (hit.getScore() > 0) {
        resultCount += hit.getHits();
      }
      docsIndexed += hit.getHits();
    }
    return new int[] { resultCount, docsIndexed };
  }

  /**
   * Returns the record attribute name for a lucene field number.
   * 
   * @param indexName
   *          the name of the index
   * @param fieldNo
   *          the field number
   * @return the name of the record attribute
   */
  private String getAttributeName(final String indexName, final int fieldNo) {
    String attributeName = null;
    final HashMap<String, HashMap<Integer, String>> indexMap = _reverseMappings.get(indexName);
    if (indexMap != null) {
      final HashMap<Integer, String> attMap = indexMap.get(MAPPINGS_ATTRIBUTES);
      if (attMap != null) {
        attributeName = attMap.get(Integer.valueOf(fieldNo));
        if (attributeName == null) {
          final HashMap<Integer, String> attachMap = indexMap.get(MAPPINGS_ATTACHMENTS);
          if (attachMap != null) {
            attributeName = attachMap.get(Integer.valueOf(fieldNo));
          }
        }
      }
    }
    return attributeName;
  }

  /**
   * Gets the fieldNo for a given attribute/attachment name in an index.
   * 
   * @param indexName
   *          name of the index
   * @param name
   *          name of the attribute/attachment
   * @return the fieldNo
   * @throws ProcessingException
   *           if no fieldNo can be found
   */
  private int getFieldNo(final String indexName, final String name) throws ProcessingException {
    if (getMappings().get(indexName).get(MappingsLoader.ATTRIBUTES).containsKey(name)) {
      return getMappings().get(indexName).get(MappingsLoader.ATTRIBUTES).get(name);
    } else if (getMappings().get(indexName).get(MappingsLoader.ATTACHMENTS).containsKey(name)) {
      return getMappings().get(indexName).get(MappingsLoader.ATTACHMENTS).get(name);
    } else {
      throw new ProcessingException("Could not find fieldNo for attribute/attachment named " + name);
    }
  }

  /**
   * Loads the reverse mappings of fieldNo to attribute/attachment names.
   */
  private void loadReverseMappings() {
    if (getMappings() != null) {
      final Iterator<String> indexNames = getMappings().keySet().iterator();
      while (indexNames.hasNext()) {
        final HashMap<String, HashMap<Integer, String>> reverseMap =
          new HashMap<String, HashMap<Integer, String>>();
        final String indexName = indexNames.next();
        final HashMap<String, HashMap<String, Integer>> indexMap = getMappings().get(indexName);
        final Iterator<String> mapNames = indexMap.keySet().iterator();
        while (mapNames.hasNext()) {
          final HashMap<Integer, String> reverseAttMap = new HashMap<Integer, String>();
          final String mapName = mapNames.next();
          final HashMap<String, Integer> attMap = indexMap.get(mapName);
          final Iterator<String> attNames = attMap.keySet().iterator();
          while (attNames.hasNext()) {
            final String attName = attNames.next();
            final Integer fieldNo = attMap.get(attName);
            reverseAttMap.put(fieldNo, attName);
          }
          reverseMap.put(mapName, reverseAttMap);
        }
        _reverseMappings.put(indexName, reverseMap);
      }
    }
  }

  /**
   * Unloads the reverse mappings.
   */
  private void unloadReverseMappings() {
    if (_reverseMappings != null) {
      final Collection<HashMap<String, HashMap<Integer, String>>> collection = _reverseMappings.values();
      for (final HashMap<String, HashMap<Integer, String>> map : collection) {
        if (map != null) {
          final Collection<HashMap<Integer, String>> values = map.values();
          for (final HashMap<Integer, String> submap : values) {
            if (submap != null) {
              submap.clear();
            }
          }
          map.clear();
        }
      }
      _reverseMappings.clear();
      _reverseMappings = null;
    }
  }

  /**
   * Parse a date String using ValueFormatHelper. If not successful, use own formats.
   * 
   * @param dateString
   *          the date as a string
   * @param helper
   *          ValueFormatHelper
   * @return a Date object
   * @throws ParseException
   *           if the date string cannot be parsed
   */
  private Date parseDate(final String dateString, final ValueFormatHelper helper) throws ParseException {
    try {
      return helper.parseDateTime(dateString);
    } catch (final ParseException ex) {
      try {
        return helper.parseDate(dateString);
      } catch (final ParseException e2) {
        try {
          return new SimpleDateFormat(DEFAULT_DATE_TIME_FORMAT).parse(dateString);
        } catch (final ParseException e) {
          return new SimpleDateFormat(DEFAULT_DATE_FORMAT).parse(dateString);
        }
      }
    }
  }

  /**
   * Parse a date String using ValueFormatHelper. If not successful, use own formats.
   * 
   * @param value
   *          any value, possibly a date.
   * @param helper
   *          ValueFormatHelper
   * @return a Date object
   * @throws ParseException
   *           if the date string cannot be parsed
   */
  private Date getDate(final Value value, final ValueFormatHelper helper) throws ParseException {
    if (value.isDate()) {
      return value.asDate();
    } else if (value.isDateTime()) {
      return value.asDateTime();
    } else {
      return parseDate(value.asString(), helper);
    }
  }

  /**
   * Parse a date String using ValueFormatHelper. If not successful, use own formats.
   * 
   * @param value
   *          any value, possibly a date.
   * @return a Date object
   */
  private Long getLong(final Value value) {
    if (value.isLong()) {
      return value.asLong();
    } else if (value.isDouble()) {
      return value.asDouble().longValue();
    } else {
      return Long.parseLong(value.asString());
    }
  }
}
