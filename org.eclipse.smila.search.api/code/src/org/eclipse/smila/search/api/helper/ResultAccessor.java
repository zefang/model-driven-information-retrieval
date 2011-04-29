/*******************************************************************************
 * Copyright (c) 2009, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the 
 * Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.search.api.helper;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.SearchResultConstants;

/**
 * Wrapper for a complete search result object. Basically provides method to create access helpers for the single query
 * and result records contained in the search result. Can also create a new query builder based on the effective query
 * object in the search result.
 * 
 * @author jschumacher
 * 
 */
public class ResultAccessor {

  /**
   * name of workflow that produced the result.
   */
  private final String _workflowName;

  /**
   * the search result.
   */
  protected final Record _result;

  /**
   * create instance.
   * 
   * @param workflowName
   *          name of workflow
   * @param result
   *          the search result.
   */
  public ResultAccessor(final String workflowName, final Record result) {
    _workflowName = workflowName;
    _result = result;
  }

  /**
   * access original result.
   * 
   * @return the search result.
   */
  public Record getResult() {
    return _result;
  }

  /**
   * @return name of pipeline that produced the search result.
   */
  public String getWorkflowName() {
    return _workflowName;
  }

  /**
   * @return true if result contains a query part.
   */
  public boolean hasQuery() {
    return _result.getMetadata().containsKey(QueryConstants.QUERY);
  }

  /**
   * @return effective query part of the result
   */
  public Any getQuery() {
    if (hasQuery()) {
      return _result.getMetadata().get(QueryConstants.QUERY);
    }
    return null;
  }

  public long getCount() {
    return getLongProperty(SearchResultConstants.COUNT);
  }

  public long getIndexSize() {
    return getLongProperty(SearchResultConstants.INDEX_SIZE);
  }

  public long getRuntime() {
    return getLongProperty(SearchResultConstants.RUNTIME);
  }

  public AnyMap getGroups() {
    if (_result.getMetadata().containsKey(SearchResultConstants.GROUPS)) {
      return _result.getMetadata().getMap(SearchResultConstants.GROUPS);
    }
    return null;
  }

  private long getLongProperty(final String name) {
    if (_result.getMetadata().containsKey(name)) {
      return _result.getMetadata().getLongValue(name);
    }
    return 0;
  }

  /**
   * 
   * @return true if the result contains a (possibly empty) records list. false, if no records list is present.
   */
  public boolean hasRecords() {
    return _result.getMetadata().containsKey(SearchResultConstants.RECORDS)
      && _result.getMetadata().get(SearchResultConstants.RECORDS).isSeq();
  }

  /**
   * @return result records, if any exist. Else null.
   */
  public AnySeq getResultRecords() {
    if (hasRecords()) {
      return _result.getMetadata().getSeq(SearchResultConstants.RECORDS);
    }
    return null;
  }

  /**
   * @return number of result records.
   */
  public int getNumberOfRecords() {
    if (hasRecords()) {
      return getResultRecords().size();
    }
    return 0;
  }

  /**
   * create a wrapper for the n'th result record.
   * 
   * @param index
   *          position in result list.
   * @return wrapper for the result record, or null if index in invalid.
   */
  public ResultItemAccessor getResultRecord(final int index) {
    if (index >= 0 && index < getNumberOfRecords()) {
      return new ResultItemAccessor(index, getResultRecords().getMap(index));
    }
    return null;
  }
}
