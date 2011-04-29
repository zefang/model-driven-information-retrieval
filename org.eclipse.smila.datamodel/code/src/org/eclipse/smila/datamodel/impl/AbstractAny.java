/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.impl;

import static java.lang.String.format;

import java.io.Serializable;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;

/**
 * Basic abstract implementation class for Any.
 */
public abstract class AbstractAny implements Any, Serializable {

  /** because it is serializable. */
  private static final long serialVersionUID = 1L;

  /**
   * type of this value object.
   */
  protected final ValueType _valueType;

  /**
   * Constructs a new AbstractAny.
   * 
   * @param valueType
   *          the type of the AnbstractAny.
   */
  protected AbstractAny(final ValueType valueType) {
    _valueType = valueType;
  }

  /** {@inheritDoc} */
  @Override
  public ValueType getValueType() {
    return _valueType;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isMap() {
    return _valueType == ValueType.MAP;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isSeq() {
    return _valueType == ValueType.SEQ;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isValue() {
    // return _valueType == ValueType.STRING || _valueType == ValueType.DOUBLE || _valueType == ValueType.BOOLEAN
    // || _valueType == ValueType.LONG || _valueType == ValueType.DATE || _valueType == ValueType.DATETIME;
    return _valueType != ValueType.MAP && _valueType != ValueType.SEQ;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isString() {
    return _valueType == ValueType.STRING;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isDouble() {
    return _valueType == ValueType.DOUBLE;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isBoolean() {
    return _valueType == ValueType.BOOLEAN;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isLong() {
    return _valueType == ValueType.LONG;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isDate() {
    return _valueType == ValueType.DATE;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isDateTime() {
    return _valueType == ValueType.DATETIME;
  }

  /** {@inheritDoc} */
  @Override
  public boolean isNumber() {
    return _valueType == ValueType.LONG || _valueType == ValueType.DOUBLE;
  }

  /** {@inheritDoc} */
  @Override
  public DataFactory getFactory() {
    return DefaultDataFactoryImpl.INSTANCE;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.Any#asValue()
   */
  @Override
  public Value asValue() {
    throw new InvalidValueTypeException(format("cannot return a %s as a Value", _valueType));
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.Any#asMap()
   */
  @Override
  public AnyMap asMap() {
    throw new InvalidValueTypeException(format("cannot return a %s as a %s", _valueType, ValueType.MAP));
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.Any#asSeq()
   */
  @Override
  public AnySeq asSeq() {
    throw new InvalidValueTypeException(format("cannot return a %s as a %s", _valueType, ValueType.SEQ));
  }

}
