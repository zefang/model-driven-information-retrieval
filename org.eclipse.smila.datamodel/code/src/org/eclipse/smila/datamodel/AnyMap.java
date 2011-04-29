/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel;

import java.util.Date;
import java.util.Map;

/**
 * Interface for a map with Any objects.
 * 
 * @author cind01
 * 
 */
public interface AnyMap extends Any, Map<String, Any> {

  /**
   * Adds the given value to the mapped entry of the given key. If there's no mapping yet, the new value is added as Seq
   * with one value. If the key is currently mapped to a Value/Map, the Value/Map is converted to a Seq containing the
   * Value/Map and the Seq is added. If the key is currently mapped to a Seq, new value is added to that Seq.
   * 
   * @param key
   *          The key
   * @param value
   *          the Any to add
   */
  void add(String key, Any value);

  /**
   * @param key
   *          The key
   * @param value
   *          String value
   * @return true, if key value pair has been successfully putted to the map, false else
   */
  Any put(String key, String value);

  /**
   * Long, Integer, Short and Byte values will be converted to Value object of type LONG, all others to Value object of
   * type DOUBLE.
   * 
   * @param key
   *          The key
   * @param value
   *          Number value, will be converted
   * @return true, if key value pair has been successfully putted to the map, false else
   */
  Any put(String key, Number value);

  /**
   * @param key
   *          The key
   * @param value
   *          Boolean value
   * @return true, if key value pair has been successfully putted to the map, false else
   */
  Any put(String key, Boolean value);

  /**
   * @param key
   *          The key
   * @return The AnyMap matching the key, an InvalidValueTypeException is thrown if the value is not of type AnyMap,
   *         or null
   */
  AnyMap getMap(String key);

  /**
   * Gets the map and optionally creates one under the given key if not present.
   * 
   * @param key
   *          The key
   * @param create
   *          the create
   * @return The AnyMap matching the key, an InvalidValueTypeException is thrown if the value is not of type AnyMap
   */
  AnyMap getMap(String key, boolean create);

  /**
   * @param key
   *          The key
   * @return The AnySeq matching to this key, an InvalidValueTypeException is thrown if the value is not of type, or
   *         null
   */
  AnySeq getSeq(String key);

  /**
   * Gets the seq and optionally creates one under the given key if not present.
   * 
   * @param key
   *          The key
   * @param create
   *          the create
   * @return The AnySeq matching the key, an InvalidValueTypeException is thrown if the value is not of type AnyMap
   */
  AnySeq getSeq(String key, boolean create);

  /**
   * @param key
   *          the key
   * @return The string representation of the map
   */
  String getStringValue(String key);

  /**
   * @param key
   *          the key
   * @return The value matching to this key, an InvalidValueTypeException is thrown if the value is no value type
   */
  Value getValue(String key);

  /**
   * @param key
   *          The key
   * @return The double value matching to this key, an InvalidValueTypeException is thrown if the value is not of type
   *         double
   */
  Double getDoubleValue(String key);

  /**
   * @param key
   *          The key
   * @return The long value matching to this key, an InvalidValueTypeException is thrown if the value is not of type
   *         long
   */
  Long getLongValue(String key);

  /**
   * @param key
   *          The key
   * @return The boolean value matching to this key, an InvalidValueTypeException is thrown if the value is not of type
   *         boolean
   */
  Boolean getBooleanValue(String key);

  /**
   * @param key
   *          The key
   * @return The date value matching to this key, an InvalidValueTypeException is thrown if the value is not of type
   *         date
   */
  Date getDateValue(String key);

  /**
   * @param key
   *          The key
   * @return The date time value matching to this key, an InvalidValueTypeException is thrown if the value is not of
   *         type date time
   */
  Date getDateTimeValue(String key);
}
