/**********************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *    Andreas Weber (Attensity Europe GmbH) - renamed LiteralFormatHelper -> ValueFormatHelper
 **********************************************************************************************/

package org.eclipse.smila.datamodel;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * helper class for formatting and parsing Values. all methods synchronize on the used local formatter object, so you
 * can use the shared instance. Using multiple instances may improve performance, though, because of less
 * synchronization.
 * 
 * @author jschumacher
 * 
 */
public class ValueFormatHelper {
  /** shared global helper instance. */
  public static final ValueFormatHelper INSTANCE = new ValueFormatHelper();

  /** The max. length of strings to be parsed as date. */
  private static final int DATE_LENGTH = 10;

  /** The length of strings to be parsed as date time for (default) pattern 1. */
  private static final int DATE_TIME_LENGTH_PATTERN_DEFAULT = 28;

  /** The length of strings to be parsed as date time for pattern 2. */
  private static final int DATE_TIME_LENGTH_PATTERN_2 = 24;

  /** The length of strings to be parsed as date time for pattern 2. */
  private static final int DATE_TIME_LENGTH_PATTERN_3 = 23;

  /** The length of strings to be parsed as date time for pattern 2. */
  private static final int DATE_TIME_LENGTH_PATTERN_4 = 19;

  /** formatter to create and parse standard string representations of Date values: "yyyy-MM-dd". */
  private final DateFormat _formatDate = new SimpleDateFormat("yyyy-MM-dd");

  /** valid Datetime value pattern with milliseconds and time zone (default for printing). */
  private final DateFormat _formatDateTimePatternDefault = getDefaulDateTimeFormat();

  /** valid Datetime value pattern with time zone. */
  private final DateFormat _formatDateTimePattern2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

  /** valid Datetime value pattern with milliseconds. */
  private final DateFormat _formatDateTimePattern3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS");

  /** valid Datetime value pattern without milliseconds and time zone. */
  private final DateFormat _formatDateTimePattern4 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");

  /**
   * create local instance.
   */
  public ValueFormatHelper() {
  }

  /**
   * @return the default format for datetime values.
   */
  public static SimpleDateFormat getDefaulDateTimeFormat() {
    return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
  }

  /**
   * format value as Date string.
   * 
   * @param value
   *          a date value
   * @return formatted date.
   */
  public String formatDate(final Date value) {
    synchronized (_formatDate) {
      return _formatDate.format(value);
    }
  }

  /**
   * format value as DateTime string.
   * 
   * @param value
   *          a datetime value
   * @return formatted datetime string
   */
  public String formatDateTime(final Date value) {
    synchronized (_formatDateTimePatternDefault) {
      return _formatDateTimePatternDefault.format(value);
    }
  }

  /**
   * parse a date string.
   * 
   * @param dateString
   *          a date string
   * @return parsed Date
   * @throws ParseException
   *           string has wrong format
   */
  public Date parseDate(final String dateString) throws ParseException {
    if (dateString.length() == DATE_LENGTH) {
      synchronized (_formatDate) {
        return _formatDate.parse(dateString);
      }
    } else {
      throw new ParseException("Length of date string '" + dateString + "' exceeds maximum date length of "
        + DATE_LENGTH, DATE_LENGTH);
    }
  }

  /**
   * parse datetime string.
   * 
   * @param dateTimeString
   *          a datetime string
   * @return parsed Date
   * @throws ParseException
   *           string has wrong format
   */
  public Date parseDateTime(final String dateTimeString) throws ParseException {
    if (dateTimeString.length() == DATE_TIME_LENGTH_PATTERN_DEFAULT) {
      synchronized (_formatDateTimePatternDefault) {
        return _formatDateTimePatternDefault.parse(dateTimeString);
      }
    } else if (dateTimeString.length() == DATE_TIME_LENGTH_PATTERN_2) {
      synchronized (_formatDateTimePattern2) {
        return _formatDateTimePattern2.parse(dateTimeString);
      }
    } else if (dateTimeString.length() == DATE_TIME_LENGTH_PATTERN_3) {
      synchronized (_formatDateTimePattern3) {
        return _formatDateTimePattern3.parse(dateTimeString);
      }
    } else if (dateTimeString.length() == DATE_TIME_LENGTH_PATTERN_4) {
      synchronized (_formatDateTimePattern4) {
        return _formatDateTimePattern4.parse(dateTimeString);
      }
    } else {
      throw new ParseException("Length '" + dateTimeString.length() + "' of datetime string '" + dateTimeString
        + "' doesn't match expected pattern length", dateTimeString.length());
    }
  }
}
