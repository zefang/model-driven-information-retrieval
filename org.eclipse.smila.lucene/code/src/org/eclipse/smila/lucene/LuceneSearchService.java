/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - separation of API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.lucene;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.search.datadictionary.DataDictionaryException;
import org.eclipse.smila.search.index.IndexException;
import org.eclipse.smila.search.templates.NodeTransformerException;

/**
 * Lucene Search Service interface.
 */
public interface LuceneSearchService extends LuceneService {

  /**
   * Constant for the SearchAnnotation QueryAttribut. The attribute to use for a default query.
   */
  String SEARCH_ANNOTATION_QUERY_ATTRIBUTE = "QueryAttribute";

  /**
   * Constant for the SearchAnnotation TemplateSelectorName.
   */
  String SEARCH_ANNOTATION_TEMPLATE_SELECTOR_NAME = "TemplateSelectorName";

  /**
   * Constant for the SearchAnnotation named value Operator of Annotation ranking.
   */
  String RANKING_OPERATOR = "Operator";

  /**
   * Constant for the SearchAnnotation named value Tolerance of Annotation ranking.
   */
  String RANKING_TOLERANCE = "Tolerance";

  /**
   * Name of the attributes mapping key.
   */
  String MAPPINGS_ATTRIBUTES = "attributes";

  /**
   * Name of the attachments mapping key.
   */
  String MAPPINGS_ATTACHMENTS = "attachments";

  /**
   * The default date format to use.
   */
  String DEFAULT_DATE_FORMAT = "dd.MM.yyyy";

  /**
   * The default date time format to use.
   */
  String DEFAULT_DATE_TIME_FORMAT = "dd.MM.yyyy HH:mm:ss";

  /**
   * Creates a query and executes the query on the lucene index.
   * 
   * @param blackboard
   *          the BlackBoardService
   * @param requestId
   *          the record ID of the search request.
   * @param parameters
   *          query parameters
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws IndexException
   *           if any error occurs
   * @throws DataDictionaryException
   *           if any error occurs
   * @throws NodeTransformerException
   *           if any error occurs
   * @throws ProcessingException
   *           if parameter SEARCH_ANNOTATION_QUERY_ATTRIBUTE is not set for simple query or any other error occurs
   */
  void search(final Blackboard blackboard, String requestId, QueryParameterAccessor parameters)
    throws BlackboardAccessException, IndexException, DataDictionaryException, NodeTransformerException,
    ProcessingException;
}
