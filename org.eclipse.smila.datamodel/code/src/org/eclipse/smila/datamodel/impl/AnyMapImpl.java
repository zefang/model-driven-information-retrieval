/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.impl;

import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;

/**
 * Class implementing AnyMap.
 */
public final class AnyMapImpl extends AbstractAny implements AnyMap {

  /** version. */
  private static final long serialVersionUID = 1L;

  /** internal representation of the AnyMap. */
  private final Map<String, Any> _anyMap;

  /** Constructs a new AnyMapImpl. */
  public AnyMapImpl() {
    super(ValueType.MAP);
    _anyMap = new LinkedHashMap<String, Any>();
  }

  /** {@inheritDoc} */
  @Override
  public void add(final String key, final Any value) {
    final Any any = _anyMap.get(key);
    AnySeq anySeq = null;
    if (any == null) {
      anySeq = getFactory().createAnySeq();
      _anyMap.put(key, anySeq);
    } else if (any.isValue() || any.isMap()) {
      anySeq = getFactory().createAnySeq();
      anySeq.add(any);
      _anyMap.put(key, anySeq);
    } else { // any.isSeq()
      anySeq = (AnySeq) any;
    }
    anySeq.add(value);
  }

  /** {@inheritDoc} */
  @Override
  public void clear() {
    _anyMap.clear();
  }

  /** {@inheritDoc} */
  @Override
  public boolean isEmpty() {
    return _anyMap.isEmpty();
  }

  /** {@inheritDoc} */
  @Override
  public Set<String> keySet() {
    return _anyMap.keySet();
  }

  /** {@inheritDoc} */
  @Override
  public Any put(final String key, final String value) {
    return put(key, new ValueImpl(ValueType.STRING, value));
  }

  /** {@inheritDoc} */
  @Override
  public Any put(final String key, final Number value) {
    if (value == null) {
      new ValueImpl(ValueType.DOUBLE, value);
    }
    if (value instanceof Double) {
      return put(key, new ValueImpl(ValueType.DOUBLE, value));
    } else if (value instanceof Long) {
      return put(key, new ValueImpl(ValueType.LONG, value));
    } else if (value instanceof Integer) {
      return put(key, new ValueImpl(ValueType.LONG, new Long(value.longValue())));
    } else if (value instanceof Short) {
      return put(key, new ValueImpl(ValueType.LONG, new Long(value.longValue())));
    } else if (value instanceof Byte) {
      return put(key, new ValueImpl(ValueType.LONG, new Long(value.longValue())));
    } else { // default: DOUBLE
      return put(key, new ValueImpl(ValueType.DOUBLE, new Double(value.doubleValue())));
    }
  }

  /** {@inheritDoc} */
  @Override
  public Any put(final String key, final Boolean value) {
    return put(key, new ValueImpl(ValueType.BOOLEAN, value));
  }

  /** {@inheritDoc} */
  @Override
  public int size() {
    return _anyMap.size();
  }

  /** {@inheritDoc} */
  @Override
  public Collection<Any> values() {
    return _anyMap.values();
  }

  /** {@inheritDoc} */
  @Override
  public Iterator<Any> iterator() {
    return _anyMap.values().iterator();
  }

  /** {@inheritDoc} */
  @Override
  public AnyMap getMap(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue.isMap()) {
        return (AnyMap) anyValue;
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to AnyMap.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public AnySeq getSeq(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue.isSeq()) {
        return (AnySeq) anyValue;
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to AnySeq.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Value getValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return (Value) anyValue;
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to Value.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public String getStringValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asString();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to String.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Double getDoubleValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asDouble();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to double.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Long getLongValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asLong();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to long.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Boolean getBooleanValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asBoolean();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to boolean.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Date getDateValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asDate();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to Date.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public Date getDateTimeValue(final String key) {
    final Any anyValue = get(key);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue).asDateTime();
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to DateTime.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + (_anyMap == null ? 0 : _anyMap.hashCode());
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
    final AnyMapImpl other = (AnyMapImpl) obj;
    if (_anyMap == null) {
      if (other._anyMap != null) {
        return false;
      }
    } else if (!_anyMap.equals(other._anyMap)) {
      return false;
    }
    return true;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String toString() {
    return _anyMap.toString();
  }

  /** {@inheritDoc} */
  @Override
  public boolean containsKey(Object key) {
    return _anyMap.containsKey(key);
  }

  /** {@inheritDoc} */
  @Override
  public boolean containsValue(Object value) {
    return _anyMap.containsValue(value);
  }

  /** {@inheritDoc} */
  @Override
  public Any get(Object key) {
    return _anyMap.get(key);
  }

  /** {@inheritDoc} */
  @Override
  public void putAll(Map<? extends String, ? extends Any> map) {
    _anyMap.putAll(map);
  }

  /** {@inheritDoc} */
  @Override
  public Any remove(Object key) {
    return _anyMap.remove(key);
  }

  /** {@inheritDoc} */
  @Override
  public Set<java.util.Map.Entry<String, Any>> entrySet() {
    return _anyMap.entrySet();
  }

  /** {@inheritDoc} */
  @Override
  public Any put(String key, Any value) {
    return _anyMap.put(key, value);
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.impl.AbstractAny#asMap()
   */
  @Override
  public AnyMap asMap() {
    return this;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.AnyMap#getMap(java.lang.String, boolean)
   */
  @Override
  public AnyMap getMap(String key, boolean create) {
    AnyMap val = getMap(key);
    if (val == null && create) {
      val = getFactory().createAnyMap();
      this.put(key, val);
    }
    return val;

  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.AnyMap#getSeq(java.lang.String, boolean)
   */
  @Override
  public AnySeq getSeq(String key, boolean create) {
    AnySeq val = getSeq(key);
    if (val == null && create) {
      val = getFactory().createAnySeq();
      this.put(key, val);
    }
    return val;

  }
}
