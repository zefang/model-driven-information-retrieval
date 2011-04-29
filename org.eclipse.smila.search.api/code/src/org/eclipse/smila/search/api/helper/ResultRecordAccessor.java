/*******************************************************************************
 * Copyright (c) 2009, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.search.api.helper;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.search.api.SearchResultConstants;

/**
 * wrappper for result records.
 * 
 * @author scum36
 * @deprecated use ResultItemAccessor
 */
public class ResultRecordAccessor {
  /** position in result record list. */
  private final int _position;

  /** record metadata of result. */
  private final AnyMap _metadata;

  /**
   * create instance.
   * 
   * @param position
   *          position in result record list
   * @param metadata
   *          record metadata of result
   */
  public ResultRecordAccessor(final int position, final AnyMap metadata) {
    super();
    _position = position;
    _metadata = metadata;
  }

  /**
   * @return position in result record list
   */
  public int getPosition() {
    return _position;
  }

  /**
   * @return record metadata of result
   */
  public AnyMap getMetadata() {
    return _metadata;
  }

  /**
   * @return value of "_recordid" attribute, if set. Else null.
   */
  public String getRecordId() {
    return _metadata.getStringValue(Record.RECORD_ID);
  }

  /**
   * @return value of "_source" attribute, if set. Else null.
   */
  public String getSource() {
    return _metadata.getStringValue(Record.SOURCE);
  }

  /**
   * @return value of "_weight" attribute, if set. Else 0.0.
   */
  public double getWeight() {
    if (_metadata.containsKey(SearchResultConstants.WEIGHT)) {
      return _metadata.getDoubleValue(SearchResultConstants.WEIGHT);
    }
    return 0;

  }

  /**
   * @return value of "_highlight" annotation, ifs set. Else null.
   */
  public AnyMap getHighlight() {
    if (_metadata.containsKey(SearchResultConstants.HIGHLIGHT)) {
      return _metadata.getMap(SearchResultConstants.HIGHLIGHT);
    }
    return null;
  }
}
