/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.records;

import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.XMLGregorianCalendar;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.openrdf.model.Namespace;
import org.openrdf.model.Resource;
import org.openrdf.model.Statement;
import org.openrdf.model.URI;
import org.openrdf.model.Value;
import org.openrdf.model.datatypes.XMLDatatypeUtil;
import org.openrdf.model.vocabulary.XMLSchema;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.RepositoryResult;

/**
 * reads a record from a sesame ontology.
 * 
 * @author jschumacher
 * 
 */
public class SesameRecordReader {
  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * my repository connection.
   */
  private final RepositoryConnection _repoConn;

  /**
   * include inferred statements?
   */
  private final boolean _includeInferred;

  /**
   * map of namespaces to prefixes for abbreviation of attribute names.
   */
  private Map<String, String> _namespaces;

  /**
   * create instance for connection.
   * 
   * @param repoConn
   *          a Sesame repository connection.
   * @param includeInferred
   *          include inferred statements in reading
   */
  public SesameRecordReader(final RepositoryConnection repoConn, final boolean includeInferred) {
    super();
    _repoConn = repoConn;
    _includeInferred = includeInferred;
    initNamespaces();
  }

  /**
   * read namespaces and prefixes to use in abbreviation of attribute names.
   */
  private void initNamespaces() {
    _namespaces = new HashMap<String, String>();
    try {
      final RepositoryResult<Namespace> repoNamespaces = _repoConn.getNamespaces();
      while (repoNamespaces.hasNext()) {
        final Namespace repoNamespace = repoNamespaces.next();
        final String repoPrefix = repoNamespace.getPrefix();
        final String currentPrefix = _namespaces.get(repoNamespace.getName());
        if (currentPrefix == null || repoPrefix.length() < currentPrefix.length()) {
          _namespaces.put(repoNamespace.getName(), repoPrefix);
        }
      }
    } catch (RepositoryException ex) {
      ex = null; // ignore. we will not use namespaces.
    }
  }

  /**
   * read statements of given URI in repository into a new record on blackboard. Its ID will have
   * {@link SesameRecordHelper#SESAME_SOURCE} as source and the URI as key.
   * 
   * @param uri
   *          resource URI
   * @param blackboard
   *          target blackboard
   * @return record ID
   * @throws BlackboardAccessException
   *           error writing to blackboard.
   * @throws RepositoryException
   *           error reading repository.
   */
  public String readBlackboardRecord(final URI uri, final Blackboard blackboard) throws BlackboardAccessException,
    RepositoryException {
    final String id = createId(uri);
    blackboard.create(id);
    readBlackboardRecord(uri, blackboard, id);
    return id;
  }

  /**
   * read statements of given URI in repository into an existing record on blackboard. The URI will be set as attribute
   * {@link SesameRecordHelper#ATTRIBUTE_URI}
   * 
   * @param uri
   *          resource URI
   * @param blackboard
   *          target blackboard
   * @param id
   *          target record ID
   * @throws BlackboardAccessException
   *           error writing to blackboard.
   * @throws RepositoryException
   *           error reading repository.
   */
  public void readBlackboardRecord(final URI uri, final Blackboard blackboard, final String id)
    throws BlackboardAccessException, RepositoryException {
    final Record record = blackboard.getRecord(id);
    readRecord(uri, record);
    blackboard.setRecord(record);
  }

  /**
   * read statements of given URI in repository into a new record. Its ID will have
   * {@link SesameRecordHelper#SESAME_SOURCE} as source and the URI as key.
   * 
   * @param uri
   *          resource URI
   * @return record ID
   * @throws RepositoryException
   *           error reading repository.
   */
  public Record readRecord(final URI uri) throws RepositoryException {
    final String id = createId(uri);
    final Record record = DataFactoryCreator.createDefaultFactory().createRecord();
    record.setId(id);
    readRecord(uri, record);
    return record;
  }

  /**
   * read statements of given URI in repository into an existing record. The URI will be set as attribute
   * {@link SesameRecordHelper#ATTRIBUTE_URI}
   * 
   * @param uri
   *          resource URI
   * @param record
   *          target record
   * @throws RepositoryException
   *           error reading repository.
   */
  public void readRecord(final URI uri, final Record record) throws RepositoryException {
    record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_URI,
      record.getFactory().createStringValue(uri.stringValue()));
    final RepositoryResult<Statement> statements = _repoConn.getStatements(uri, null, null, _includeInferred);
    if (statements != null) {
      while (statements.hasNext()) {
        final Statement statement = statements.next();
        final String attributeName = uriToString(statement.getPredicate());
        final Any value = setLiteralValueFromObject(statement, record.getFactory());
        if (!record.getMetadata().containsKey(attributeName)) {
          record.getMetadata().put(attributeName, value);
        } else {
          // already contains at least one entry
          // already a sequence? add the new values to it.
          final Any oldValue = record.getMetadata().get(attributeName);
          if (oldValue.isSeq()) {
            if (value.isSeq()) {
              for (Any any : (AnySeq) value) {
                ((AnySeq) oldValue).add(any);
              }
            } else {
              ((AnySeq) oldValue).add(value);
            }
            record.getMetadata().put(attributeName, oldValue);
          }
          if (oldValue.isValue() || (oldValue.isMap() && !value.isMap())) {
            // is it a value? create a sequence and add the old and the new value to it
            final AnySeq seq = record.getFactory().createAnySeq();
            seq.add(oldValue);
            seq.add(value);
            record.getMetadata().put(attributeName, seq);
          } else if (oldValue.isMap() && value.isMap()) {
            // both are maps? merge them
            ((AnyMap) oldValue).putAll((AnyMap) value);
            record.getMetadata().put(attributeName, oldValue);
          } else {
            _log.error("Cannot add SESAME statement '" + statement + "' to value '" + oldValue
              + "'. New value was '" + value + "'.");
          }
        }
      }
      if (_log.isDebugEnabled()) {
        _log.debug("Read metadata: \n" + record.getMetadata().toString());
      }
    }
  }

  /**
   * @param statement
   *          statement
   * @param dataFactory
   *          the factory to create Any objects
   * @return the Any object created from the given statement. Can be a single Value object or an AnyMap with the
   *         language as key and the object as value
   */
  private Any setLiteralValueFromObject(final Statement statement, final DataFactory dataFactory) {
    final Value value = statement.getObject();
    final Any returnValue;
    if (value instanceof Resource) {
      returnValue = dataFactory.createStringValue(((Resource) value).stringValue());
    } else {
      Any valueAny = null;
      if (value instanceof org.openrdf.model.Literal) {
        final org.openrdf.model.Literal ontoLiteral = (org.openrdf.model.Literal) value;
        final URI datatype = ontoLiteral.getDatatype();
        if (datatype != null) {
          if (XMLDatatypeUtil.isIntegerDatatype(datatype)) {
            valueAny = dataFactory.createLongValue(ontoLiteral.longValue());
          } else if (XMLDatatypeUtil.isFloatingPointDatatype(datatype)) {
            valueAny = dataFactory.createDoubleValue(ontoLiteral.doubleValue());
          } else if (XMLSchema.BOOLEAN.equals(datatype)) {
            valueAny = dataFactory.createBooleanValue(ontoLiteral.booleanValue());
          } else if (XMLDatatypeUtil.isCalendarDatatype(datatype)) {
            final XMLGregorianCalendar ontoCal = ontoLiteral.calendarValue();
            if (XMLSchema.DATETIME.equals(datatype)) {
              final Calendar cal = ontoCal.toGregorianCalendar();
              valueAny = dataFactory.createDateTimeValue(cal.getTime());
            } else if (XMLSchema.TIME.equals(datatype)) {
              final Calendar cal = ontoCal.toGregorianCalendar();
              if (_log.isWarnEnabled()) {
                _log.warn("Creating DATETIME value from TIME literal.");
              }
              valueAny = dataFactory.createDateTimeValue(cal.getTime());
            } else {
              // TODO: Support timezone here? I think one should use date/times if this should be handled
              // timezone specific. A date is the same on the whole planet, so always write it as a UTC literal.
              // So remove timezone offset here.
              final Calendar cal = getDateOnly(ontoCal);
              valueAny = dataFactory.createDateValue(cal.getTime());
            }
          }
        }
        if (ontoLiteral.getLanguage() != null && valueAny != null) {
          final AnyMap tmp = dataFactory.createAnyMap();
          tmp.put(ontoLiteral.getLanguage(), valueAny);
          valueAny = tmp;
        }
      }
      if (valueAny != null) {
        returnValue = valueAny;
      } else {
        returnValue = dataFactory.createStringValue(value.stringValue());
      }
    }
    return returnValue;
  }

  /**
   * get only the date (year, month, day) part of the calendar literal, don't calculate with timezones.
   * 
   * @param ontoCal
   *          a ontology calendar literal value.
   * @return a Calendar with only the date part.
   */
  private Calendar getDateOnly(final XMLGregorianCalendar ontoCal) {
    final Calendar cal = Calendar.getInstance();
    cal.setTimeInMillis(0);
    if (ontoCal.getYear() != DatatypeConstants.FIELD_UNDEFINED) {
      cal.set(Calendar.YEAR, ontoCal.getYear());
    }
    if (ontoCal.getMonth() != DatatypeConstants.FIELD_UNDEFINED) {
      cal.set(Calendar.MONTH, ontoCal.getMonth() - 1);
    }
    if (ontoCal.getDay() != DatatypeConstants.FIELD_UNDEFINED) {
      cal.set(Calendar.DAY_OF_MONTH, ontoCal.getDay());
    }
    return cal;
  }

  /**
   * create SMILA ID from URI.
   * 
   * @param uri
   *          uri
   * @return SMILA ID
   */
  private String createId(final URI uri) {
    return uri.stringValue();
  }

  /**
   * create string value from URI and replace known namespaces by their prefix.
   * 
   * @param uri
   *          Sesame URI
   * @return string value.
   */
  private String uriToString(final URI uri) {
    final String prefix = _namespaces.get(uri.getNamespace());
    if (prefix != null) {
      return prefix + ":" + uri.getLocalName();
    }
    return uri.stringValue();
  }
}
