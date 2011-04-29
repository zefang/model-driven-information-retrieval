/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel;

/**
 * A runtime exception that will be thrown if the value types of the Any objects do not match the expected types.
 * 
 */
public class InvalidValueTypeException extends RuntimeException {

  /** exceptions can be serialized. */
  private static final long serialVersionUID = 1L;

  private final Class<?> _unsupportedType;

  /**
   * Creates an InvalidValueTypeException with the given message.
   * 
   * @param message
   *          The message for the user.
   */
  public InvalidValueTypeException(String message) {
    this(message, (Class<?>) null);
  }

  /**
   * Instantiates a new invalid value type exception.
   * 
   * @param message
   *          the message
   * @param unsupportedType
   *          the unsupported type
   */
  public InvalidValueTypeException(String message, Class<?> unsupportedType) {
    super(message);
    _unsupportedType = unsupportedType;
  }

  public InvalidValueTypeException(Class<?> unsupportedType) {
    this("type not supported: " + unsupportedType, unsupportedType);
  }

  /**
   * @param format
   * @param e
   */
  public InvalidValueTypeException(String message, Exception e) {
    super(message, e);
    _unsupportedType = null;
  }

  /**
   * Gets the unsupported type. might be null.
   * 
   * @return the unsupported type
   */
  public Class<?> getUnsupportedType() {
    return _unsupportedType;
  }

}
