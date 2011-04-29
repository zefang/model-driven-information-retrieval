/*******************************************************************************
 * Copyright (c) 2009, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the 
 * Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.processing.parameters;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;

/**
 * read service runtime parameters from current processing record, query record and pipelet configurations.
 * 
 * @author jschumacher
 * 
 */
public class ParameterAccessor {
  /**
   * blackboard service in processing.
   */
  protected final Blackboard _blackboard;

  /**
   * ID of currently processed record. (optional).
   */
  protected String _recordId;

  /**
   * pipelet configuration (optional).
   */
  protected AnyMap _config;

  /**
   * create accessor for given configuration. Accessing records is not possible with this instance.
   * 
   * @param configuration
   *          pipelet configuration
   */
  public ParameterAccessor(final AnyMap configuration) {
    _blackboard = null;
    _config = configuration;
  }


  /**
   * create accessor for given blackboard.
   * 
   * @param blackboard
   *          blackboard instance.
   */
  public ParameterAccessor(final Blackboard blackboard) {
    _blackboard = blackboard;
  }

  /**
   * create accessor for given blackboard.
   * 
   * @param blackboard
   *          blackboard instance.
   * @param configuration
   *          pipelet configuration
   */
  public ParameterAccessor(final Blackboard blackboard, final AnyMap configuration) {
    this(blackboard);
    _config = configuration;
  }

  /**
   * for search pipelets/services: create accessor for given blackboard and request record.
   * 
   * @param blackboard
   *          blackboard instance.
   * @param configuration
   *          pipelet configuration
   * @param recordId
   *          current query record.
   */
  public ParameterAccessor(final Blackboard blackboard, final AnyMap configuration, final String recordId) {
    this(blackboard, configuration);
    _recordId = recordId;
  }

  /**
   * for search pipelets/services: create accessor for given blackboard and request record.
   * 
   * @param blackboard
   *          blackboard instance.
   * @param recordId
   *          current query record.
   */
  public ParameterAccessor(final Blackboard blackboard, final String recordId) {
    this(blackboard);
    _recordId = recordId;
  }

  /**
   * set the ID of the record to read parameters from.
   * 
   * @param recordId
   *          current record to process.
   * @return "this", make it easier to use this method immediately after constructor.
   */
  public ParameterAccessor setCurrentRecord(final String recordId) {
    _recordId = recordId;
    return this;
  }

  /**
   * set the configuration of the current pipelet, to read fallback values for missing parameters.
   * 
   * @param config
   *          pipelet configuration.
   * @return "this", make it easier to use this method immediately after constructor
   */
  public ParameterAccessor setPipeletConfiguration(final AnyMap config) {
    _config = config;
    return this;
  }

  /**
   * get named value of parameter annotation, according to precedence rules.
   * 
   * @param name
   *          parameter name
   * @param defaultValue
   *          default value.
   * @return return default value if no matching parameter value can be found
   */
  public String getParameter(final String name, final String defaultValue) {
    String value = null;
    if (_recordId != null) {
      value = getRecordParameter(name, _recordId);
    }
    if (value == null && _config != null) {
      value = getParameterFromMap(name, _config);
    }
    if (value == null) {
      return defaultValue;
    }
    return value;
  }

  /**
   * get named value of parameter annotation, according to precedence rules.
   * 
   * @param name
   *          parameter name.
   * @return parameter value.
   * @throws MissingParameterException
   *           if no matching parameter value can be found.
   */
  public String getRequiredParameter(final String name) throws MissingParameterException {
    final String value = getParameter(name, null);
    if (value == null) {
      throw new MissingParameterException("no single value for required parameter " + name);
    }
    return value;
  }

  /**
   * get anonymous values of first (according to precendence rules) subannotation.
   * 
   * @param name
   *          parameter name
   * @return anonymous values of named subannotation, or empty list if no matching parameter value can be found
   */
  @SuppressWarnings("unchecked")
  public List<String> getParameters(final String name) {
    List<String> values = null;
    if (_recordId != null) {
      values = getRecordParameters(name, _recordId);
    }
    if (values == null && _config != null) {
      values = getParametersFromMap(name, _config);
    }
    if (values == null) {
      values = Collections.EMPTY_LIST;
    }
    return values;
  }

  /**
   * get anonymous values of first (according to precendence rules) subannotation.
   * 
   * @param name
   *          parameter name
   * @return anonymous values of named subannotation,
   * @throws MissingParameterException
   *           if no matching parameter value can be found.
   */
  public List<String> getRequiredParameters(final String name) throws MissingParameterException {
    final List<String> values = getParameters(name);
    if (values == null || values.isEmpty()) {
      throw new MissingParameterException("no list value for required parameter " + name);
    }
    return values;
  }

  /**
   * type-aware convenience method: convert result of getParameter() to Integer. Throws NumberFormatException, if
   * parameter value is not in valid integer format.
   * 
   * @param name
   *          parameter name
   * @param defaultValue
   *          default value
   * @return integer value
   */
  public Integer getIntParameter(final String name, final Integer defaultValue) {
    final String value = getParameter(name, null);
    if (value == null) {
      return defaultValue;
    }
    return Integer.valueOf(value);
  }

  /**
   * type-aware convenience method: convert result of getParameter() to Double. Throws NumberFormatException if
   * parameter value is not in valid double format.
   * 
   * @param name
   *          parameter name
   * @param defaultValue
   *          default value
   * @return double value
   */
  public Double getFloatParameter(final String name, final Double defaultValue) {
    final String value = getParameter(name, null);
    if (value == null) {
      return defaultValue;
    }
    return Double.valueOf(value);
  }

  /**
   * type-aware convenience method: convert result of getParameter() to Boolean.
   * 
   * @param name
   *          parameter name
   * @param defaultValue
   *          default value
   * @return double value
   */
  public Boolean getBooleanParameter(final String name, final Boolean defaultValue) {
    final String value = getParameter(name, null);
    if (value == null) {
      return defaultValue;
    }
    return Boolean.valueOf(value);
  }

  /**
   * type-aware convenience method: convert result of getRequiredParameter() to Integer. Throws NumberFormatException,
   * if parameter value is not in valid integer format.
   * 
   * @param name
   *          parameter name
   * @return integer value *
   * @throws MissingParameterException
   *           if no matching parameter value can be found.
   */
  public Integer getRequiredIntParameter(final String name) throws MissingParameterException {
    final String value = getRequiredParameter(name);
    return Integer.valueOf(value);
  }

  /**
   * type-aware convenience method: convert result of getRequiredParameter() to Double. Throws NumberFormatException, if
   * parameter value is not in valid double format.
   * 
   * @param name
   *          parameter name
   * @return floating point value *
   * @throws MissingParameterException
   *           if no matching parameter value can be found.
   */
  public Double getRequiredFloatParameter(final String name) throws MissingParameterException {
    final String value = getRequiredParameter(name);
    return Double.valueOf(value);
  }

  /**
   * type-aware convenience method: convert result of getRequiredParameter() to Boolean.
   * 
   * @param name
   *          parameter name
   * @return boolean value *
   * @throws MissingParameterException
   *           if no matching parameter value can be found.
   */
  public Boolean getRequiredBooleanParameter(final String name) throws MissingParameterException {
    final String value = getRequiredParameter(name);
    return Boolean.valueOf(value);
  }

  /**
   * access to first subannotation, according to precedence rules.
   * 
   * @param name
   *          annotation name.
   * @return annotation object.
   */
  public AnyMap getSubParameter(final String name) {
    final List<AnyMap> parameters = getSubParameters(name);
    if (parameters == null || parameters.isEmpty()) {
      return null;
    } else {
      return parameters.get(0);
    }
  }

  /**
   * access to a multiple sub parameters, according to precedence rules. The parameters are not merged from multiple
   * sources
   * 
   * @param name
   *          annotation name.
   * @return list of parameters.
   */
  @SuppressWarnings("unchecked")
  public List<AnyMap> getSubParameters(final String name) {
    List<AnyMap> parameters = null;
    if (_recordId != null) {
      parameters = getRecordSubParameters(name, _recordId);
    }
    if (parameters == null && _config != null) {
      parameters = getSubParametersFromMap(name, _config);
    }
    if (parameters == null) {
      return Collections.EMPTY_LIST;
    }
    return parameters;
  }

  /**
   * get the native any in parameter "name", according to precedence rules.
   * 
   * @param name
   *          parameter name
   * @return parameter any.
   */
  public Any getParameterAny(final String name) {
    try {
      if (_recordId != null && _blackboard.getMetadata(_recordId).containsKey(name)) {
        return _blackboard.getMetadata(_recordId).get(name);
      }
    } catch (final BlackboardAccessException ex) {
      ; // ignore, fallback to config.
    }
    if (_config != null && _config.containsKey(name)) {
      return _config.get(name);
    }
    return null;
  }

  /**
   * get a parameter value from the record with the given Id.
   * 
   * @param name
   *          parameter name.
   * @param record
   *          record Id.
   * @return parameter value.
   */
  private String getRecordParameter(final String name, final String record) {
    try {
      return getParameterFromMap(name, _blackboard.getMetadata(record));
    } catch (Exception ex) {
      // ignore.
      ex = null;
    }
    return null;
  }

  /**
   * get a parameter value from the AnyMap (record metadata or pipelet configuration).
   * 
   * @param name
   *          parameter name.
   * @param map
   *          record metadata or pipelet configuration
   * @return parameter value.
   */
  private String getParameterFromMap(final String name, final AnyMap map) {
    try {
      final Any attribute = map.get(name);
      if (attribute != null) {
        if (!attribute.isMap()) {
          if (attribute.isSeq()) {
            if (!((AnySeq) attribute).isEmpty()) {
              return ((AnySeq) attribute).getStringValue(0);
            }
          } else {
            return ((Value) attribute).asString();
          }
        }
      }
    } catch (Exception ex) {
      // ignore.
      ex = null;
    }
    return null;
  }

  /**
   * get list parameter value from the record with the given Id.
   * 
   * @param name
   *          parameter name.
   * @param record
   *          record Id.
   * @return parameter values.
   */
  private List<String> getRecordParameters(final String name, final String record) {
    try {
      return getParametersFromMap(name, _blackboard.getMetadata(record));
    } catch (Exception ex) {
      ex = null;
      // ignore.
    }
    return null;
  }

  /**
   * get list parameter value from from the AnyMap (record metadata or pipelet configuration).
   * 
   * @param name
   *          parameter name.
   * @param map
   *          record metadata or pipelet configuration
   * @return parameter values.
   */
  private List<String> getParametersFromMap(final String name, final AnyMap map) {
    try {
      final Any attribute = map.get(name);
      if (attribute != null) {
        if (!attribute.isMap()) {
          final List<String> values = new ArrayList<String>();
          if (attribute.isSeq()) {
            for (final Any value : (AnySeq) attribute) {
              if (value.isValue()) {
                values.add(((Value) value).asString());
              }
            }
          } else {
            values.add(((Value) attribute).asString());
          }
          return values;
        }

      }
    } catch (Exception ex) {
      ex = null;
      // ignore.
    }
    return null;
  }

  /**
   * get a list of parameter sub parameters from the record with the given Id.
   * 
   * @param name
   *          parameter name.
   * @param record
   *          record Id.
   * @return parameter values.
   */
  private List<AnyMap> getRecordSubParameters(final String name, final String record) {
    try {
      return getSubParametersFromMap(name, _blackboard.getMetadata(record));
    } catch (Exception ex) {
      ex = null;
      // ignore.
    }
    return null;
  }

  /**
   * get a list of parameter sub parameters from the AnyMap (record metadata or pipelet configuration).
   * 
   * @param name
   *          parameter name.
   * @param map
   *          record metadata or pipelet configuration
   * @return parameter values.
   */
  private List<AnyMap> getSubParametersFromMap(final String name, final AnyMap map) {
    try {
      final Any annotation = map.get(name);
      if (annotation != null) {
        final List<AnyMap> subMaps = new ArrayList<AnyMap>();
        if (annotation.isMap()) {
          subMaps.add((AnyMap) annotation);
        } else if (annotation.isSeq()) {
          for (final Any element : (AnySeq) annotation) {
            if (element.isMap()) {
              subMaps.add((AnyMap) element);
            }
          }
        }
        return subMaps;
      }
    } catch (Exception ex) {
      ex = null;
      // ignore.
    }
    return null;
  }
}
