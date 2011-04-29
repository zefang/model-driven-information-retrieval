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
 * Interface for a value object, used if the any object is of type string, double, boolean, long, date or date time.
 * 
 * @author cind01
 * 
 */
public interface Value extends Any {

  /**
   * @return The string representation
   */
  String asString();

  /**
   * @return The double representation, an InvalidValueTypeException is thrown if the value is not a number. If value is
   *         a string then this is tried to be converted to a Double.
   */
  Double asDouble();

  /**
   * @return The long representation, an InvalidValueTypeException is thrown if the value is not a number. If value is a
   *         string then this is tried to be converted to a Long.
   */
  Long asLong();

  /**
   * @return The boolean representation, an InvalidValueTypeException is thrown if the value is not of type boolean. If
   *         value is a string then this is tried to be converted to a boolean.
   */
  Boolean asBoolean();

  /**
   * @return The date representation, an InvalidValueTypeException is thrown if the value is not of type date or
   *         datetime. If value is a string then this is tried to be converted to a date.
   */
  Date asDate();

  /**
   * @return The date time representation, an InvalidValueTypeException is thrown if the value is not of type datetime.
   *         If value is a string then this is tried to be converted to a datetime.
   */
  Date asDateTime();

  /**
   * @return the value object
   */
  Object getObject();
}
