/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.impl;

import static java.lang.String.format;

import java.util.Date;
import java.util.Iterator;
import java.util.Map.Entry;

import org.apache.commons.lang.NotImplementedException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;

/**
 * Implementation of DataFactory.
 * 
 * @author cind01
 * 
 */
public class DefaultDataFactoryImpl implements DataFactory {

  /** instance for sharing. */
  public static final DefaultDataFactoryImpl INSTANCE = new DefaultDataFactoryImpl();

  /** {@inheritDoc} */
  @Override
  public Record createRecord() {
    return createRecord(null, null);
  }

  /** {@inheritDoc} */
  @Override
  public Record createRecord(final String id) {
    return createRecord(id, null);
  }

  /** {@inheritDoc} */
  @Override
  public Record createRecord(final String id, final String source) {
    final Record record = new RecordImpl();
    record.setId(id);
    record.setSource(source);
    return record;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public AnyMap createAnyMap() {
    return new AnyMapImpl();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public AnySeq createAnySeq() {
    return new AnySeqImpl();
  }

  /** {@inheritDoc} */
  @Override
  public Value createStringValue(final String value) {
    return new ValueImpl(ValueType.STRING, value);
  }

  /** {@inheritDoc} */
  @Override
  public Value createBooleanValue(final Boolean value) {
    return new ValueImpl(ValueType.BOOLEAN, value);
  }

  /** {@inheritDoc} */
  @Override
  public Value createLongValue(final Long value) {
    return new ValueImpl(ValueType.LONG, value);
  }

  /** {@inheritDoc} */
  @Override
  public Value createLongValue(final int value) {
    return new ValueImpl(ValueType.LONG, (long) value);
  }

  /** {@inheritDoc} */
  @Override
  public Value createDoubleValue(final Double value) {
    return new ValueImpl(ValueType.DOUBLE, value);
  }

  /** {@inheritDoc} */
  @Override
  public Value createDoubleValue(final float value) {
    return new ValueImpl(ValueType.DOUBLE, Double.valueOf(value));
  }

  /** {@inheritDoc} */
  @Override
  public Value createDateValue(final Date value) {
    return new ValueImpl(ValueType.DATE, new Date(value.getTime()));
  }

  /** {@inheritDoc} */
  @Override
  public Value createDateTimeValue(final Date value) {
    return new ValueImpl(ValueType.DATETIME, new Date(value.getTime()));
  }

  /** {@inheritDoc} */
  @Override
  public Value parseFromString(final String value, final String type) {
    ValueType valueType = null;
    if (type == null) {
      valueType = ValueType.STRING;
    } else {
      try {
        valueType = ValueType.valueOf(type.toUpperCase());
      } catch (IllegalArgumentException e) {
        throw new InvalidValueTypeException("invalid type: " + type);
      }
    }
    try {
      switch (valueType) {
        case BOOLEAN:
          return createBooleanValue(Boolean.parseBoolean(value));
        case DATE:
          return createDateValue(ValueFormatHelper.INSTANCE.parseDate(value));
        case DATETIME:
          return createDateTimeValue(ValueFormatHelper.INSTANCE.parseDateTime(value));
        case DOUBLE:
          return createDoubleValue(Double.parseDouble(value));
        case LONG:
          return createLongValue(Long.parseLong(value));
        case STRING:
          return createStringValue(value);
        default:
          throw new NotImplementedException("conversion for type: " + valueType);
      }
    } catch (final Exception e) {
      throw new InvalidValueTypeException(format("cannot convert value %s into %s", value, valueType), e);
    }
  }

  /** {@inheritDoc} 
   * @deprecated Use {@link #autoConvertValue(Object)} instead*/
  @Override
  public Value parseFromObject(final Object object) {
    return autoConvertValue(object);
  }

  /** {@inheritDoc} */
  @Override
  public Value autoConvertValue(final Object object) {
    if (object instanceof String) {
      return createStringValue((String) object);
    } else if (object instanceof Double) {
      return createDoubleValue((Double) object);
    } else if (object instanceof Long) {
      return createLongValue((Long) object);
    } else if (object instanceof Integer) {
      return createLongValue(((Integer) object).longValue());
    } else if (object instanceof Short) {
      return createLongValue(((Short) object).longValue());
    } else if (object instanceof Byte) {
      return createLongValue(((Byte) object).longValue());
    } else if (object instanceof Number) {
      return createDoubleValue(((Number) object).doubleValue());
    } else if (object instanceof Boolean) {
      return createBooleanValue((Boolean) object);
    } else if (object instanceof Date) {
      return createDateTimeValue((Date) object);
    } else {
      throw new InvalidValueTypeException(object.getClass());
    }
  }

  /** {@inheritDoc} */
  @Override
  public Any cloneAny(final Any source) {
    if (source == null) {
      return null;
    }
    switch (source.getValueType()) {
      case MAP:
        return cloneAnyMap((AnyMap) source);
      case SEQ:
        return cloneAnySeq((AnySeq) source);
      default:
        return new ValueImpl((Value) source);
    }
  }

  /** {@inheritDoc} */
  @Override
  public AnyMap cloneAnyMap(final AnyMap source) {
    if (source == null) {
      return null;
    }
    final AnyMap destination = createAnyMap();
    for (final Entry<String, Any> entry : source.entrySet()) {
      destination.put(entry.getKey(), cloneAny(entry.getValue()));
    }
    return destination;
  }

  /** {@inheritDoc} */
  @Override
  public AnySeq cloneAnySeq(final AnySeq source) {
    if (source == null) {
      return null;
    }
    final AnySeq destination = createAnySeq();
    final Iterator<Any> iterator = source.iterator();
    while (iterator.hasNext()) {
      destination.add(cloneAny(iterator.next()));
    }
    return destination;
  }
}
