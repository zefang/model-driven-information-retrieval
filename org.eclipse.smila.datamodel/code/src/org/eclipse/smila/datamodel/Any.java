/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel;

import java.util.Iterator;

/**
 * Interface for object used instead of MObject.
 * 
 * @author cind01
 * 
 */
public interface Any extends Iterable<Any> {

  /**
   * Enumeration with the possible value types.
   * 
   */
  public enum ValueType {

    /**
     * The list with the possible value types. MAP map, SEQ sequence, STRING string value, DOUBLE double value, BOOLEAN
     * Boolean value, LONG long value, DATE date (without time), DATETIME date with time
     */
    MAP, SEQ, STRING, DOUBLE, BOOLEAN, LONG, DATE, DATETIME
  };

  /**
   * @return value type
   */
  ValueType getValueType();

  /**
   * @return true if value is of type map
   */
  boolean isMap();

  /**
   * @return true if value is of type sequence
   */
  boolean isSeq();

  /**
   * @return true if value is of type value
   */
  boolean isValue();

  /**
   * @return true if value is of type string
   */
  boolean isString();

  /**
   * @return true if value is of type double
   */
  boolean isDouble();

  /**
   * @return true if value is of type boolean
   */
  boolean isBoolean();

  /**
   * @return true if value is of type long
   */
  boolean isLong();

  /**
   * @return true if value is of type date
   */
  boolean isDate();

  /**
   * @return true if value is of type date time
   */
  boolean isDateTime();

  /**
   * @return true if value is of type long or double
   */
  boolean isNumber();

  /**
   * @return data factory to create Anys of the same kind.
   */
  DataFactory getFactory();

  /**
   * @return iterator over elements. For {@link Value}, this return an iterator about the value itself. For
   *         {@link AnyMap} it returns an iterator on the values.
   */
  @Override
  Iterator<Any> iterator();

  /**
   * @return true, if the Any does not have content. For {@link Value}: returns always false.
   */
  boolean isEmpty();

  /**
   * @return size of Any. For {@link Value} this is always 1.
   */
  int size();

  /**
   * returns this Any as an {@link Value} object or throws an {@link InvalidValueTypeException}.
   */
  Value asValue();

  /**
   * returns this Any as an {@link AnyMap} object or throws an {@link InvalidValueTypeException}.
   */
  AnyMap asMap();

  /**
   * returns this Any as an {@link AnySeq} object or throws an {@link InvalidValueTypeException}.
   */
  AnySeq asSeq();

}
