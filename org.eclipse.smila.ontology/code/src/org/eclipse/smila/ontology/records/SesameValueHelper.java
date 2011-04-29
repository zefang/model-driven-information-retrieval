/*******************************************************************************
 * Copyright (c) 2008, 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.records;

import java.util.Calendar;

import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.Value;
import org.openrdf.model.URI;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;

/**
 * Helper for converting SMILA literals to Sesame Literals and URIs.
 * 
 * @author jschumacher
 * 
 */
public class SesameValueHelper {
  /**
   * singleton instance.
   */
  public static final SesameValueHelper INSTANCE = new SesameValueHelper();

  /**
   * number of milliseconds per minute, used to convert java.util timezone offsets to XMLGregorianCalendar timezone
   * offsets.
   */
  public static final int MILLISECONDS_PER_MINUTE = 60 * 1000;

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * create a Sesame literal from a SMILA literal.
   * 
   * @param connection
   *          repository connection
   * @param literal
   *          SMILA literal
   * @param locale
   *          the locale as string (null if no locale is set) for String Literals
   * @return Sesame literal
   */
  public org.openrdf.model.Literal createLiteral(final RepositoryConnection connection, final Value literal,
    final String locale) {
    org.openrdf.model.Literal value;
    switch (literal.getValueType()) {
      case LONG:
        value = connection.getValueFactory().createLiteral(literal.asLong());
        break;
      case DOUBLE:
        value = connection.getValueFactory().createLiteral(literal.asDouble());
        break;
      case BOOLEAN:
        value = connection.getValueFactory().createLiteral(literal.asBoolean());
        break;
      case DATE:
        value = createDateLiteral(connection, literal);
        break;
      case DATETIME:
        value = createDateTimeLiteral(connection, literal);
        break;
      default:
        if (locale != null) {
          value = connection.getValueFactory().createLiteral(literal.asString(), locale);
        } else {
          value = connection.getValueFactory().createLiteral(literal.asString());
        }
    }
    return value;
  }

  /**
   * create a Sesame date literal value from a SMILA date value.
   * 
   * @param connection
   *          repository connection
   * @param literal
   *          a SMILA literal with a date value.
   * @return a Sesame date literal, if all goes well. Else return a string literal as fallback.
   */
  private org.openrdf.model.Literal createDateLiteral(final RepositoryConnection connection, final Value literal) {
    try {
      final DatatypeFactory factory = DatatypeFactory.newInstance();
      final Calendar cal = Calendar.getInstance();
      cal.setTime(literal.asDate());
      // TODO: Support timezone here? I think one should use date/times if this should be handled timezone specific.
      // A date is the same on the whole planet, so always write it as a UTC literal.
      // final int zoneOffsetMinutes = cal.get(Calendar.ZONE_OFFSET) / MILLISECONDS_PER_MINUTE;
      final XMLGregorianCalendar time =
        factory.newXMLGregorianCalendarDate(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH) + 1,
          cal.get(Calendar.DAY_OF_MONTH), 0); // zoneOffsetMinutes);
      return connection.getValueFactory().createLiteral(time);
    } catch (final Exception ex) {
      _log.warn("cuold not create a time literal from value '" + literal + "', just adding a string literal", ex);
      return connection.getValueFactory().createLiteral(literal.toString());
    }
  }

  /**
   * create a Sesame date/time literal value from a SMILA date/time value.
   * 
   * @param connection
   *          repository connection
   * @param literal
   *          a SMILA literal with a date/time value.
   * @return a Sesame date/time literal, if all goes well. Else return a string literal as fallback.
   */
  private org.openrdf.model.Literal createDateTimeLiteral(final RepositoryConnection connection, final Value literal) {
    try {
      final DatatypeFactory factory = DatatypeFactory.newInstance();
      final Calendar cal = Calendar.getInstance();
      cal.setTime(literal.asDateTime());
      final int zoneOffsetMinutes = cal.get(Calendar.ZONE_OFFSET) / MILLISECONDS_PER_MINUTE;
      final XMLGregorianCalendar time =
        factory.newXMLGregorianCalendar(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH) + 1,
          cal.get(Calendar.DAY_OF_MONTH), cal.get(Calendar.HOUR_OF_DAY), cal.get(Calendar.MINUTE),
          cal.get(Calendar.SECOND), cal.get(Calendar.MILLISECOND), zoneOffsetMinutes);
      return connection.getValueFactory().createLiteral(time);
    } catch (final Exception ex) {
      _log.warn("cuold not create a time literal from value '" + literal + "', just adding a string literal", ex);
      return connection.getValueFactory().createLiteral(literal.toString());
    }
  }

  /**
   * resolve namespace prefixes in URI string.
   * 
   * @param connection
   *          repository connection
   * @param uriString
   *          an uri string that possibly contains a namespace prefix.
   * @return Sesame URI
   */
  public URI createUri(final RepositoryConnection connection, final String uriString) {
    final int prefixIndex = uriString.indexOf(':');
    if (prefixIndex >= 0 && prefixIndex < uriString.length() - 1) {
      final String prefix = uriString.substring(0, prefixIndex);
      try {
        final String fullNamespace = connection.getNamespace(prefix);
        if (fullNamespace != null) {
          final String localName = uriString.substring(prefixIndex + 1);
          return connection.getValueFactory().createURI(fullNamespace, localName);
        }
      } catch (RepositoryException ex) {
        ex = null; // ignore.
      }
    }
    return connection.getValueFactory().createURI(uriString);
  }

}
