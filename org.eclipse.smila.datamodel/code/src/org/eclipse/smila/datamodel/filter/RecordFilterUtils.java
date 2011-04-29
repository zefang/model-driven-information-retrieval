/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.filter;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map.Entry;

import javax.xml.validation.Schema;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.messages.Element;
import org.eclipse.smila.datamodel.filter.messages.Filter;
import org.eclipse.smila.datamodel.filter.messages.RecordFilters;
import org.eclipse.smila.utils.jaxb.JaxbUtils;
import org.eclipse.smila.utils.xml.SchemaUtils;
import org.xml.sax.SAXException;

/**
 * The Class RecordFilterHelper.
 */
public final class RecordFilterUtils {

  /** The Constant MASK_ANY. */
  private static final String MASK_ANY = "*";

  /** The Constant BUNDLE_ID. */
  private static final String BUNDLE_ID = "org.eclipse.smila.datamodel";

  /** The Constant JAXB_PACKAGE. */
  private static final String JAXB_PACKAGE = "org.eclipse.smila.datamodel.filter.messages";

  /** The Constant SCHEMA_LOCATION. */
  private static final String SCHEMA_LOCATION = "schemas/RecordFilters.xsd";

  /** The Constant SCHEMA. */
  private static final Schema SCHEMA;

  static {
    try {
      SCHEMA = SchemaUtils.loadSchema(BUNDLE_ID, SCHEMA_LOCATION);
    } catch (final SAXException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Does not instantiates a new record filter helper.
   */
  private RecordFilterUtils() {
  }

  /**
   * Unmarshall.
   * 
   * @param inputStream
   *          the input stream
   * 
   * @return the record filters
   * 
   * @throws RecordFilterLoadSaveException
   *           the record filter load exception
   */
  public static RecordFilters unmarshall(final InputStream inputStream) throws RecordFilterLoadSaveException {
    try {
      return (RecordFilters) JaxbUtils.unmarshall(JAXB_PACKAGE, RecordFilters.class.getClassLoader(), SCHEMA,
        inputStream);
    } catch (final Exception e) {
      throw new RecordFilterLoadSaveException(e);
    }

  }

  /**
   * Marshall.
   * 
   * @param recordFilters
   *          the record filters
   * @param outputStream
   *          the output stream
   * 
   * @throws RecordFilterLoadSaveException
   *           the record filter load save exception
   */
  public static void marshall(final RecordFilters recordFilters, final OutputStream outputStream)
    throws RecordFilterLoadSaveException {
    try {
      JaxbUtils.marshall(recordFilters, JAXB_PACKAGE, RecordFilters.class.getClassLoader(), SCHEMA, outputStream);
    } catch (final Throwable e) {
      throw new RecordFilterLoadSaveException(e);
    }
  }

  /**
   * Find filter.
   * 
   * @param filters
   *          the filters
   * @param name
   *          the name
   * 
   * @return the filter
   * 
   * @throws RecordFilterNotFoundException
   *           the record filter not found exception
   */
  public static Filter findFilter(final RecordFilters filters, final String name)
    throws RecordFilterNotFoundException {
    if (name == null || "".equals(name)) {
      // get the first filter
      return filters.getFilter().get(0);
    }
    for (final Filter filter : filters.getFilter()) {
      if (filter.getName().equals(name)) {
        return filter;
      }
    }
    throw new RecordFilterNotFoundException(name);
  }

  /**
   * Filter.
   * 
   * Note: record id and source attributes of the record cannot be filtered, these two attributes will always be
   * retained.
   * 
   * @param filter
   *          the record filter
   * @param record
   *          the record
   * 
   * @return the record
   */
  public static Record filter(final Filter filter, final Record record) {
    final DataFactory dataFactory = record.getFactory();
    final Record newRecord = dataFactory.createRecord();
    newRecord.getMetadata().putAll(filter(filter, record.getMetadata(), dataFactory));
    return newRecord;
  }

  /**
   * Filter.
   * 
   * Note: record id and source attributes of the record cannot be filtered, these two attributes will always be
   * retained.
   * 
   * @param filter
   *          the record filter
   * @param source
   *          the Any object to be filtered
   * @param anyFactory
   *          the Any factory
   * 
   * @return the filtered Any object
   */
  public static AnyMap filter(final Filter filter, final AnyMap source, final DataFactory anyFactory) {
    if (source == null) {
      throw new IllegalArgumentException("source Any cannot be null!");
    }
    if (anyFactory == null) {
      throw new IllegalArgumentException("anyFactory cannot be null!");
    }
    final AnyMap destination = anyFactory.createAnyMap();
    for (final Entry<String, Any> entry : source.entrySet()) {
      final String name = entry.getKey();
      if (isAttributePassedThroughFilter(filter, name)) {
        final Any attributeAny = anyFactory.cloneAny(source.get(name));
        destination.put(name, attributeAny);
      }
    }
    return destination;
  }

  /**
   * Checks if is attribute passed through filter.
   * 
   * Note: record id and source attributes of the record cannot be filtered, these two attributes will always be
   * retained.
   * 
   * @param recordFilter
   *          the record filter
   * @param name
   *          the name
   * 
   * @return true, if is attribute passed through filter
   */
  private static boolean isAttributePassedThroughFilter(final Filter recordFilter, final String name) {
    if (Record.RECORD_ID.equals(name) || Record.SOURCE.equals(name)) {
      return true;
    }
    for (final Element filterElement : recordFilter.getElement()) {
      if (MASK_ANY.equals(filterElement.getName()) || filterElement.getName().equals(name)) {
        return true;
      }
    }
    return false;
  }
}
