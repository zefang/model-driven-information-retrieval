/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel;

import java.util.Date;

/**
 * Interface for creation of data objects.
 * 
 * @author cind01
 * 
 */
public interface DataFactory {

  /**
   * create a new Record.
   * 
   * @return new record.
   */
  Record createRecord();

  /**
   * create a new Record.
   * 
   * @param id
   *          record id
   * @return new record.
   */
  Record createRecord(String id);

  /**
   * create a new Record.
   * 
   * @param id
   *          record id
   * @param source
   *          record data source
   * 
   * @return new record.
   */
  Record createRecord(String id, String source);

  /**
   * @return The created AnyMap object
   */
  AnyMap createAnyMap();

  /**
   * @return The created AnySeq object
   */
  AnySeq createAnySeq();

  /**
   * @param value
   *          the String to create the Value from.
   * @return The created Value object.
   */
  Value createStringValue(String value);

  /**
   * @param value
   *          the Boolean to create the Value from.
   * @return The created Value object.
   */
  Value createBooleanValue(Boolean value);

  /**
   * @param value
   *          the Long to create the Value from.
   * @return The created Value object.
   */
  Value createLongValue(Long value);

  /**
   * @param value
   *          the int to create the Value from.
   * @return The created Value object.
   */
  Value createLongValue(int value);

  /**
   * @param value
   *          the Double to create the Value from.
   * @return The created Value object.
   */
  Value createDoubleValue(Double value);

  /**
   * @param value
   *          the float to create the Value from.
   * @return The created Value object.
   */
  Value createDoubleValue(float value);

  /**
   * @param value
   *          the Date to create the Value from.
   * @return The created Value object.
   */
  Value createDateValue(Date value);

  /**
   * @param value
   *          the DateTime to create the Value from.
   * @return The created Value object.
   */
  Value createDateTimeValue(Date value);

  /**
   * @param value
   *          The value
   * @param type
   *          The type
   * @return The Value object with correct type, InvalidvalueTypeException else.
   */
  Value parseFromString(String value, String type);

  /**
   * @param object
   *          The object
   * @return The value matching the class of given object, InvalidValueTypeException otherwise.
   * @deprecated Use {@link #autoConvertValue(Object)} instead
   */
  Value parseFromObject(final Object object);

  /**
   * auto converts the given object into the object's corresponding Value.
   * 
   * @param object
   *          The object, must be one of the simple types
   * @return The value matching the class of given object, InvalidValueTypeException otherwise.
   * 
   */
  Value autoConvertValue(final Object object);

  /**
   * Clone Any object.
   * 
   * @param source
   *          the source
   * 
   * @return the attribute
   */
  Any cloneAny(final Any source);

  /**
   * Clone AnyMap object.
   * 
   * @param source
   *          the source
   * 
   * @return the attribute
   */
  AnyMap cloneAnyMap(final AnyMap source);

  /**
   * Clone AnySeq object.
   * 
   * @param source
   *          the source
   * 
   * @return the attribute
   */
  AnySeq cloneAnySeq(final AnySeq source);

}
