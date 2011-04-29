/*******************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Thomas Menzel (brox IT Solution GmbH) - initial creator
 *******************************************************************************/

package org.eclipse.smila.search.api.helper;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.search.api.SearchResultConstants;

/**
 * wrapper helper class to build the result record. This is intentionally a subclass of the {@link ResultAccessor} as to
 * also provide readaccess to the props that are set here.
 */
public class ResultBuilder extends ResultAccessor {

  /**
   * Creates a new builder and adds an AnySeq for the {@link SearchResultConstants#RECORDS}.
   * 
   * @param workflowName
   * @param result
   */
  public ResultBuilder(String workflowName, Record result) {
    super(workflowName, result);

    _result.getMetadata().getSeq(SearchResultConstants.RECORDS, true);
  }

  /**
   * Adds a new result item to the list. the given args a mandatory and will be set at the item.
   * 
   * @return the map containing the id and score/weight under their proper names.
   */
  public AnyMap addResultItem(String id, Double score) {
    final AnyMap resultItem = getResultRecords().getFactory().createAnyMap();
    getResultRecords().add(resultItem);
    resultItem.put(Record.RECORD_ID, id);
    resultItem.put(SearchResultConstants.WEIGHT, score);
    return resultItem;
  }

  /**
   * sets value for {@link SearchResultConstants#COUNT}.
   */
  public void setCount(Long count) {
    _result.getMetadata().put(SearchResultConstants.COUNT, count);
  }

  /**
   * sets value for {@link SearchResultConstants#RUNTIME}.
   */
  public void setRuntime(Long millis) {
    _result.getMetadata().put(SearchResultConstants.RUNTIME, millis);
  }
}
