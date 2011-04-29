/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel;

import java.util.Date;
import java.util.List;

/**
 * Interface for a sequence of Any objects.
 * 
 * @author cind01
 * 
 */
public interface AnySeq extends List<Any>, Any {

  /**
   * @param element
   *          The string object to add
   * @return true if successfully added, false else
   */
  boolean add(String element);

  /**
   * Long, Integer, Short and Byte values will be converted to Value object of type LONG, all others to Value object of
   * type DOUBLE.
   * 
   * @param number
   *          The number object to add
   * @return true if successfully added, false else
   */
  boolean add(Number number);

  /**
   * @param index
   *          The index where to add the any object
   * @param element
   *          The any object to add
   */
  void add(int index, Any element);

  /**
   * @param index
   *          The index of the object to return
   * @return The AnyMap matching to the index, an InvalidValueTypeException is thrown if the value is not of type AnyMap
   */
  AnyMap getMap(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The AnySeq matching to this index, an InvalidValueTypeException is thrown if the value is not of type
   */
  AnySeq getSeq(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The value matching to this index, an InvalidValueTypeException is thrown if the value is no value type.
   */
  Value getValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The string value matching to this index, an InvalidValueTypeException is thrown if the value is not of type
   *         string
   */
  String getStringValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The double value matching to this index, an InvalidValueTypeException is thrown if the value is not of type
   *         double
   */
  Double getDoubleValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The long value matching to this index, an InvalidValueTypeException is thrown if the value is not of type
   *         long
   */
  Long getLongValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The boolean value matching to this index, an InvalidValueTypeException is thrown if the value is not of
   *         type boolean
   */
  Boolean getBooleanValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The date value matching to this index, an InvalidValueTypeException is thrown if the value is not of type
   *         date
   */
  Date getDateValue(int index);

  /**
   * @param index
   *          The index of the object to return
   * @return The date time value matching to this index, an InvalidValueTypeException is thrown if the value is not of
   *         type date time
   */
  Date getDateTimeValue(int index);

  /**
   * returns all values as a List of Strings.
   * 
   * @throws InvalidValueTypeException
   *           if not all contained values are strings.
   */
  List<String> asStrings();

  /**
   * returns all values as a List of Long.
   * 
   * @throws InvalidValueTypeException
   *           if not all contained values are Longs.
   */
  List<Long> asLongs();

}
