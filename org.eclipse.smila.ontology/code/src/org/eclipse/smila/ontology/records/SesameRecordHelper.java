/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.ontology.records;

import java.util.Iterator;
import java.util.Map.Entry;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;

/**
 * Helper class defining constants and utility methods for the mapping of SMILA records to Sesame ontology objects.
 * 
 * @author jschumacher
 * 
 */
public abstract class SesameRecordHelper {
  /**
   * dummy source value for IDs of newly created records.
   */
  public static final String SESAME_SOURCE = "SESAME";

  /**
   * name of attribute that contains the URI of the resource represented by a record.
   */
  public static final String ATTRIBUTE_URI = "rdf:about";

  /**
   * name of attribute that contains the RDF type of the resource represented by a record.
   */
  public static final String ATTRIBUTE_TYPE = "rdf:type";

  /**
   * semantic type of string literals that correspond to resource property values in MDS.
   */
  public static final String SEMTYPE_RESOURCE = "rdfs:Resource";

  /**
   * name of attribute containing the locale of a statement.
   */
  public static final String ANNOTATION_LANG = "xml:lang";

  /**
   * name of attribute value describing that an object should be cleared before adding new values.
   */
  public static final String ATTRIBUTE_DELETE_ALL = "_deleteAll";

  /**
   * name of attribute value describing that properties should be cleared before adding new values.
   */
  public static final String ATTRIBUTE_DELETE_PROPERTIES = "_deleteProperties";

  /**
   * value of attribute describing that a property should be written reverse.
   */
  public static final String ATTRIBUTE_REVERSE_PROPERTIES = "_reverseProperties";

  /**
   * value of attribute describing that a property contains object references. reverse properties also must only contain
   * object references.
   */
  public static final String ATTRIBUTE_OBJECT_PROPERTIES = "_objectProperties";

  /**
   * The prefix of system attributes which will be ignored when writing records to Sesame.
   */
  public static final String PREFIX_SYSTEM_ATTRIBUTE_NAMES = "_";

  /**
   * locale value for "all locales".
   */
  public static final String LOCALE_ALL = "ALL";

  /**
   * prevent instance creation.
   */
  private SesameRecordHelper() {
    // no instances should be created.
  }

  /**
   * get language annotation from literal, if present. The first value is going to be retrieved.
   * 
   * <pre>
   *   &lt;rec:Map key="rdfs:label"&gt;
   *     &lt;rec:Val key="de&gt;SMILA&lt;/rec:Val&gt;
   *     &lt;rec:Val key="en"&gt;SMILA&lt;/rec:Val&gt;
   *   &lt;/rec:Map>
   * </pre>
   * 
   * @param literal
   *          literal
   * @return language of literal, or null, if not set.
   */
  public static String getLanguage(final Any literal) {
    String languageString = null;
    if (literal.isMap()) {
      final AnyMap map = (AnyMap) literal;
      final Iterator<Entry<String, Any>> entryIter = map.entrySet().iterator();
      while (entryIter.hasNext() && languageString == null) {
        final Entry<String, Any> entry = entryIter.next();
        if (entry.getKey().indexOf(':') < 0 && entry.getValue().isString()) {
          languageString = ((Value) entry.getValue()).asString();
        }
      }
    }
    return languageString;
  }
}
