/*******************************************************************************
 * Copyright (c) 2009, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the 
 * Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.search.api;

/**
 * Constants for names and values of service/pipelet parameters commonly used in search pipelines.
 * 
 * @author jschumacher
 * 
 */
public final class QueryConstants {

  /**
   * name of the "query" part of the request record.
   */
  public static final String QUERY = "query";

  /**
   * name of the "maxcount" parameter.
   */
  public static final String MAXCOUNT = "maxcount";

  /**
   * name of the "offset" parameter.
   */
  public static final String OFFSET = "offset";

  /**
   * name ofthe "threshold" parameter.
   */
  public static final String THRESHOLD = "threshold";

  /**
   * name of the "language" parameter.
   */
  public static final String LANGUAGE = "language";

  /**
   * name of the "index" parameter.
   */
  public static final String INDEXNAME = "indexname";

  /**
   * name of the "highlight" parameter. The value is either just a seq of names of attributes to highlight, or a seq of
   * maps with more detailed highlighting configs for different attributes.
   */
  public static final String HIGHLIGHT = "highlight";

  /**
   * name of the "groupby" parameter. The parameter value is seq of maps containing "attribute", "maxcount", and
   * optionally a "sorty" spec with "criterion" and "order"
   */
  public static final String GROUPBY = "groupby";

  /**
   * name of the "groupby" section "attribute" parameter.
   */
  public static final String GROUPBY_SORTCRITERION = "criterion";

  /**
   * name of "ranking" parameter for specifying ranking criteria. The content depends on the used search engine.
   */
  public static final String RANKING = "ranking";

  /**
   * name of the "resultAttributes" parameter.
   */
  public static final String RESULTATTRIBUTES = "resultAttributes";

  /**
   * name of the "sortby" parameter subparameters.
   */
  public static final String SORTBY = "sortby";

  /**
   * name of the "attribute" parameter of an "sortby" or "groupby" parameter.
   */
  public static final String ATTRIBUTE = "attribute";

  /**
   * name of the "order" parameter of an "sortby" or "groupby" parameter.
   */
  public static final String ORDER = "order";

  /**
   * name of "filter" parameter.
   */
  public static final String FILTER = "filter";

  public static final String FILTER_ALLOF = "allOf";

  public static final String FILTER_ONEOF = "oneOf";

  public static final String FILTER_NONEOF = "noneOf";

  public static final String FILTER_ATLEAST = "atLeast";

  public static final String FILTER_ATMOST = "atMost";

  public static final String FILTER_GREATERTHAN = "greaterThan";

  public static final String FILTER_LESSTHAN = "lessThan";

  /**
   * default "resultSize" value: 10.
   */
  public static final int DEFAULT_MAXCOUNT = 10;

  /**
   * default "resultOffset" value: 0.
   */
  public static final int DEFAULT_OFFSET = 0;

  /**
   * default "threshold "value: 0.0.
   */
  public static final double DEFAULT_THRESHOLD = 0.0;

  /**
   * Values for the "orderBy"/"mode" parameter: Sort ascending or descending.
   */
  public enum SortOrder {
    /**
     * sort ascending.
     */
    ASCENDING,
    /**
     * sort descending.
     */
    DESCENDING
  }

  /**
   * prevent instance creation.
   */
  private QueryConstants() {
    // prevent instance creation
  }

}
