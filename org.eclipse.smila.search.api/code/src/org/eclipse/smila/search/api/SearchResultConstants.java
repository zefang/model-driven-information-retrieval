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
 * Constants for names and values of record and attribute annotations commonly used in search pipelines.
 * 
 * @author jschumacher
 * 
 */
public final class SearchResultConstants {

  /**
   * name of "records" sequence in result.
   */
  public static final String RECORDS = "records";

  /**
   * name of "count" property of result.
   */
  public static final String COUNT = "count";

  /**
   * name of annotation for number of objects in index.
   */
  public static final String INDEX_SIZE = "indexSize";

  /**
   * name of annotation for execution runtime of workflow.
   */
  public static final String RUNTIME = "runtime";

  /**
   * name of "_weight" annotation in result records.
   */
  public static final String WEIGHT = "_weight";

  /**
   * name of "_highlight" annotations.
   */
  public static final String HIGHLIGHT = "_highlight";

  /**
   * name of "text" property of highlight annotations.
   */
  public static final String HIGHLIGHT_TEXT = "text";

  /**
   * name of "positions" subannotations of highlight annotations.
   */
  public static final String HIGHLIGHT_POSITIONS = "positions";

  /**
   * name of "start" property of (e.g. highlight) position annotations.
   */
  public static final String POS_START = "start";

  /**
   * name of "end" property of (e.g. highlight) position annotations.
   */
  public static final String POS_END = "end";

  /**
   * name of "quality" property of (e.g. highlight) position annotations.
   */
  public static final String POS_QUALITY = "quality";

  /**
   * name of "groups" annotations: map of attribute name to sequence of maps with "value" and "count".
   */
  public static final String GROUPS = "groups";

  /**
   * name of "value" properties, e.g. in "groups" annotation
   */
  public static final String VALUE = "value";

  /**
   * prevent instance creation.
   */
  private SearchResultConstants() {
    // prevent instance creation
  }

}
