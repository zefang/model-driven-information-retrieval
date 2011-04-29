/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Schank (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Value;

/**
 * Sequence of Any objects.
 */
public final class AnySeqImpl extends AbstractAny implements AnySeq {

  /** version. */
  private static final long serialVersionUID = 1L;

  /** holds the Any objects of this AnySeq. */
  private final List<Any> _anyList;

  /**
   * constructs a new instance of AnySeqImpl.
   */
  public AnySeqImpl() {
    super(ValueType.SEQ);
    _anyList = new ArrayList<Any>();
  }

  /** {@inheritDoc} */
  @Override
  public boolean add(final Any e) {
    return _anyList.add(e);
  }

  /** {@inheritDoc} */
  @Override
  public boolean add(final String e) {
    return add(new ValueImpl(ValueType.STRING, e));
  }

  /** {@inheritDoc} */
  @Override
  public boolean add(final Number n) {
    if (n instanceof Double) {
      return add(new ValueImpl(ValueType.DOUBLE, n));
    } else if (n instanceof Long) {
      return add(new ValueImpl(ValueType.LONG, n));
    } else if ((n instanceof Integer) || (n instanceof Short) || (n instanceof Byte)) {
      return add(new ValueImpl(ValueType.LONG, new Long(n.longValue())));
    } else { // default: DOUBLE
      return add(new ValueImpl(ValueType.DOUBLE, new Double(n.doubleValue())));
    }
  }

  /** {@inheritDoc} */
  @Override
  public void add(final int index, final Any element) {
    _anyList.add(index, element);
  }

  /** {@inheritDoc} */
  @Override
  public boolean addAll(Collection<? extends Any> c) {
    return _anyList.addAll(c);
  }

  /** {@inheritDoc} */
  @Override
  public boolean addAll(int index, Collection<? extends Any> c) {
    return _anyList.addAll(index, c);
  }

  /** {@inheritDoc} */
  @Override
  public void clear() {
    _anyList.clear();
  }

  /** {@inheritDoc} */
  @Override
  public boolean contains(Object o) {
    return _anyList.contains(o);
  }

  /** {@inheritDoc} */
  @Override
  public boolean containsAll(Collection<?> c) {
    return _anyList.containsAll(c);
  }

  /** {@inheritDoc} */
  @Override
  public Any get(final int index) {
    return _anyList.get(index);
  }

  /** {@inheritDoc} */
  @Override
  public Any set(final int index, final Any element) {
    return _anyList.set(index, element);
  }

  /** {@inheritDoc} */
  @Override
  public int indexOf(Object o) {
    return _anyList.indexOf(o);
  }

  /** {@inheritDoc} */
  @Override
  public boolean isEmpty() {
    return _anyList.isEmpty();
  }

  /** {@inheritDoc} */
  @Override
  public Iterator<Any> iterator() {
    return _anyList.iterator();
  }

  /** {@inheritDoc} */
  @Override
  public int lastIndexOf(Object o) {
    return _anyList.lastIndexOf(o);
  }

  /** {@inheritDoc} */
  @Override
  public ListIterator<Any> listIterator() {
    return _anyList.listIterator();
  }

  /** {@inheritDoc} */
  @Override
  public ListIterator<Any> listIterator(int index) {
    return _anyList.listIterator(index);
  }

  /** {@inheritDoc} */
  @Override
  public Any remove(final int index) {
    return _anyList.remove(index);
  }

  /** {@inheritDoc} */
  @Override
  public boolean remove(Object o) {
    return _anyList.remove(o);
  }

  /** {@inheritDoc} */
  @Override
  public boolean removeAll(Collection<?> c) {
    return _anyList.removeAll(c);
  }

  /** {@inheritDoc} */
  @Override
  public boolean retainAll(Collection<?> c) {
    return _anyList.retainAll(c);
  }

  /** {@inheritDoc} */
  @Override
  public int size() {
    return _anyList.size();
  }

  /** {@inheritDoc} */
  @Override
  public List<Any> subList(int fromIndex, int toIndex) {
    return _anyList.subList(fromIndex, toIndex);
  }

  /** {@inheritDoc} */
  @Override
  public Object[] toArray() {
    return _anyList.toArray();
  }

  /** {@inheritDoc} */
  @Override
  public <T> T[] toArray(T[] a) {
    return _anyList.toArray(a);
  }

  /** {@inheritDoc} */
  @Override
  public AnyMap getMap(final int index) {
    final Any anyValue = get(index);
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
  public AnySeq getSeq(final int index) {
    final Any anyValue = get(index);
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
  public Value getValue(final int index) {
    final Any anyValue = get(index);
    if (anyValue != null) {
      if (anyValue instanceof Value) {
        return ((Value) anyValue);
      } else {
        throw new InvalidValueTypeException("Cannot convert value of type '" + anyValue.getValueType()
          + "' to Value.");
      }
    }
    return null;
  }

  /** {@inheritDoc} */
  @Override
  public String getStringValue(final int index) {
    final Any anyValue = get(index);
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
  public Double getDoubleValue(final int index) {
    final Any anyValue = get(index);
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
  public Long getLongValue(final int index) {
    final Any anyValue = get(index);
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
  public Boolean getBooleanValue(final int index) {
    final Any anyValue = get(index);
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
  public Date getDateValue(final int index) {
    final Any anyValue = get(index);
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
  public Date getDateTimeValue(final int index) {
    final Any anyValue = get(index);
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
    result = prime * result + (_anyList == null ? 0 : _anyList.hashCode());
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
    if (!(obj instanceof AnySeqImpl)) {
      return false;
    }
    final AnySeqImpl other = (AnySeqImpl) obj;
    if (_anyList == null) {
      if (other._anyList != null) {
        return false;
      }
    } else if (!_anyList.equals(other._anyList)) {
      return false;
    }
    return true;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String toString() {
    return _anyList.toString();
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.Any#asSeq()
   */
  @Override
  public AnySeq asSeq() {
    return this;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.AnySeq#asStrings()
   */
  @Override
  public List<String> asStrings() {
    List<String> values = new ArrayList<String>(_anyList.size());
    for (Any any : _anyList) {
      values.add(any.asValue().asString());
    }
    return values;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.datamodel.AnySeq#asLongs()
   */
  @Override
  public List<Long> asLongs() {
    List<Long> values = new ArrayList<Long>(_anyList.size());
    for (Any any : _anyList) {
      values.add(any.asValue().asLong());
    }
    return values;
  }

}
