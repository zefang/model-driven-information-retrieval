/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.impl;

import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;

import org.apache.commons.collections.iterators.SingletonIterator;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;

/**
 * Any holding a value.
 */
public final class ValueImpl extends AbstractAny implements Value {

  /** version. */
  private static final long serialVersionUID = 1L;

  /**
   * the value object.
   */
  private final Object _value;

  /**
   * create new empty ValueImpl instance.
   * 
   * @param valueType
   *          the type of the Value
   * @param value
   *          the value of the Value
   */
  public ValueImpl(final ValueType valueType, final Object value) {
    super(valueType);
    if (value == null) {
      throw new IllegalArgumentException("The value of any Any must not be null.");
    }
    _value = value;
  }

  /**
   * create new empty ValueImpl instance as a copy of a given Value.
   * 
   * @param object
   *          the vlaue to be copied
   */
  public ValueImpl(final Value object) {
    super(object.getValueType());
    if (object instanceof ValueImpl) {
      _value = ((ValueImpl) object)._value;
    } else {
      switch (object.getValueType()) {
        case BOOLEAN:
          _value = object.asBoolean();
          break;
        case DATE:
          _value = object.asDate();
          break;
        case DATETIME:
          _value = object.asDateTime();
          break;
        case DOUBLE:
          _value = object.asDouble();
          break;
        case LONG:
          _value = object.asLong();
          break;
        case STRING:
          _value = object.asString();
          break;
        default:
          throw new InvalidValueTypeException("Value of type '" + object.getValueType() + "' cannot be copied.");
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Double asDouble() {
    if (_valueType == ValueType.DOUBLE) {
      return (Double) _value;
    } else if (_valueType == ValueType.LONG) {
      return new Double(((Number) _value).doubleValue());
    } else if (_valueType == ValueType.STRING) {
      try {
        return Double.valueOf((String) _value);
      } catch (final NumberFormatException e) {
        throw new InvalidValueTypeException("Value '" + _value + "' of type '" + _valueType
          + "' cannot be converted to double.");
      }
    } else {
      throw new InvalidValueTypeException("Value of type '" + _valueType + "' cannot be converted to double.");
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Long asLong() {
    if (_valueType == ValueType.LONG) {
      return (Long) _value;
    } else if (_valueType == ValueType.DOUBLE) {
      return new Long(((Number) _value).longValue());
    } else if (_valueType == ValueType.STRING) {
      try {
        return Long.valueOf((String) _value);
      } catch (final NumberFormatException e) {
        throw new InvalidValueTypeException("Value '" + _value + "' of type '" + _valueType
          + "' cannot be converted to long.");
      }
    } else {
      throw new InvalidValueTypeException("Value of type '" + _valueType + "' cannot be converted to long.");
    }
  }

  /** {@inheritDoc} */
  @Override
  public Boolean asBoolean() {
    if (_valueType == ValueType.BOOLEAN) {
      return (Boolean) _value;
    } else if (_valueType == ValueType.STRING) {
      try {
        return Boolean.valueOf((String) _value);
      } catch (final NumberFormatException e) {
        throw new InvalidValueTypeException("Value '" + _value + "' of type '" + _valueType
          + "' cannot be converted to boolean.");
      }
    } else {
      throw new InvalidValueTypeException("Value of type '" + _valueType + "' cannot be converted to boolean.");
    }
  }

  /** {@inheritDoc} */
  @Override
  public Date asDate() {
    if ((_valueType == ValueType.DATE) || (_valueType == ValueType.DATETIME)) {
      return new Date(((Date) _value).getTime());
    } else if (_valueType == ValueType.STRING) {
      try {
        return ValueFormatHelper.INSTANCE.parseDate((String) _value);
      } catch (final ParseException e) {
        throw new InvalidValueTypeException("Value '" + _value + "' of type '" + _valueType
          + "' cannot be converted to date.");
      }
    } else {
      throw new InvalidValueTypeException("Value of type '" + _valueType + "' cannot be converted to Date.");
    }
  }

  /** {@inheritDoc} */
  @Override
  public Date asDateTime() {
    if ((_valueType == ValueType.DATE) || (_valueType == ValueType.DATETIME)) {
      return new Date(((Date) _value).getTime());
    } else if (_valueType == ValueType.STRING) {
      try {
        return ValueFormatHelper.INSTANCE.parseDateTime((String) _value);
      } catch (final ParseException e) {
        throw new InvalidValueTypeException("Value '" + _value + "' of type '" + _valueType
          + "' cannot be converted to datetime.");
      }
    } else {
      throw new InvalidValueTypeException("Value of type '" + _valueType + "' cannot be converted to DateTime.");
    }
  }

  /** {@inheritDoc} */
  @Override
  public String asString() {
    if (_value == null) {
      return null;
    } else {
      switch (_valueType) {
        case STRING:
          return (String) _value;
        case DATE:
          return ValueFormatHelper.INSTANCE.formatDate((Date) _value);
        case DATETIME:
          return ValueFormatHelper.INSTANCE.formatDateTime((Date) _value);
        default:
          return _value.toString();
      }
    }
  }

  /** {@inheritDoc} */
  @Override
  public Object getObject() {
    return _value;
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Object#toString()
   */
  @Override
  public String toString() {
    if (_value == null) {
      return "(void)";
    }
    return asString();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (_value == null ? 0 : _value.hashCode());
    result = prime * result + (_valueType == null ? 0 : _valueType.hashCode());
    return result;
  }

  /** {@inheritDoc} */
  @Override
  public boolean equals(final Object obj) {
    if (this == obj) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    final ValueImpl other = (ValueImpl) obj;
    if (_value == null) {
      if (other._value != null) {
        return false;
      }
    } else if (!_value.equals(other._value)) {
      return false;
    }
    if (_valueType == null) {
      if (other._valueType != null) {
        return false;
      }
    } else if (!_valueType.equals(other._valueType)) {
      return false;
    }
    return true;
  }

  /** {@inheritDoc} */
  @Override
  @SuppressWarnings("unchecked")
  public Iterator<Any> iterator() {
    return new SingletonIterator(this);
  }

  /** {@inheritDoc} */
  @Override
  public boolean isEmpty() {
    return false;
  }

  /** {@inheritDoc} */
  @Override
  public int size() {
    return 1;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.Any#asValue()
   */
  @Override
  public Value asValue() {
    return this;
  }

}
