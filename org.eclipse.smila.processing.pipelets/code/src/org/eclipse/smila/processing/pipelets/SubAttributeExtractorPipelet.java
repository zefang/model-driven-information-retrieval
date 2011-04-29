/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials are made available 
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (Attensity Europe GmbH) - initial API and implementation
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 *******************************************************************************/

package org.eclipse.smila.processing.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;

/**
 * Extracts Literal values from an attribute that has a nested MObject. The attributes in the nested MObject can have
 * nested MOBjects themselves. To address a attribute in the nested structure a path needs to be specified. The pipelet
 * supports different execution modes: <li>FIRST: selects only the first Literal of the specified attribute</li> <li>
 * LAST: selects only the last Literal of the specified attribute</li> <li>ALL_AS_LIST: selects all Literal values of
 * the specified attribute and returns a list</li> <li>ALL_AS_ONE: selects all Literal values of the specified attribute
 * and concatenates them to a single string, using a seperator (default is blank)</li>
 */
public class SubAttributeExtractorPipelet implements Pipelet {

  /**
   * Name of the property: "inputPath".
   */
  public static final String PROPPERTY_INPUT_PATH = "inputPath";

  /**
   * Name of the property: "outputPath".
   */
  public static final String PROPPERTY_OUTPUT_PATH = "outputPath";

  /**
   * Name of the property: "mode".
   */
  public static final String PROPPERTY_MODE = "mode";

  /**
   * Name of the property: "separator".
   */
  public static final String PROPPERTY_SEPARATOR = "separator";

  /**
   * The default separator.
   */
  public static final String DEFAULT_SEPARATOR = " ";

  /**
   * The default path separator.
   */
  public static final String DEFAULT_PATH_SEPARATOR = "/";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(SubAttributeExtractorPipelet.class);

  /**
   * The path of the input attribute.
   */
  private String _inputPath;

  /**
   * input path splitted.
   */
  private String[] _inputPathNames;

  /**
   * The path of the output attribute.
   */
  private String _outputPath;

  /**
   * The mode.
   */
  private Mode _mode;

  /**
   * The separator used for mode ALL_AS_ONE.
   */
  private String _separator;

  /**
   * pipelet configuration.
   */
  private AnyMap _configuration;

  /**
   * Enumeration of modes of how to handle multiple values.
   */
  private enum Mode {
    /**
     * Return only the first value.
     */
    FIRST,
    /**
     * Return only the last value.
     */
    LAST,
    /**
     * Return all values as a List.
     */
    ALL_AS_LIST,
    /**
     * Return all values concatenated as one value.
     */
    ALL_AS_ONE;
  }

  /**
   * {@inheritDoc}
   * 
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
    final ParameterAccessor parameters = new ParameterAccessor(_configuration);
    _inputPath = parameters.getRequiredParameter(PROPPERTY_INPUT_PATH);
    _inputPathNames = _inputPath.split(DEFAULT_PATH_SEPARATOR);
    _outputPath = parameters.getRequiredParameter(PROPPERTY_OUTPUT_PATH);
    _mode = Mode.valueOf(parameters.getRequiredParameter(PROPPERTY_MODE));
    _separator = parameters.getParameter(PROPPERTY_SEPARATOR, DEFAULT_SEPARATOR);
  }

  /**
   * {@inheritDoc}
   * 
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    if (recordIds != null) {
      for (final String id : recordIds) {
        try {
          final AnyMap metadata = blackboard.getMetadata(id);
          final Any any = getValues(metadata);
          if (any != null) {
            setValues(metadata, id, any);
          }
        } catch (final Exception e) {
          _log.error("Error while processing record " + id, e);
        }
      }
    }
    return recordIds;
  }

  /** @return the input path */
  public String getInputPath() {
    return _inputPath;
  }

  /** @return the output path */
  public String getOutputPath() {
    return _outputPath;
  }

  /** @return the operation mode */
  public Mode getMode() {
    return _mode;
  }

  /** @return the concat separator */
  public String getSeparator() {
    return _separator;
  }

  /**
   * get value from input path.
   * 
   * @param metadata
   *          record metadata
   * @return value at input path, or null if path is not valid.
   */
  private Any getValues(final AnyMap metadata) {
    AnyMap current = metadata;
    final int lastIndex = _inputPathNames.length - 1;
    for (int i = 0; i < lastIndex; i++) {
      Any element = current.get(_inputPathNames[i]);
      if (element.isSeq() && !element.isEmpty()) {
        element = ((AnySeq) element).get(0);
      }
      if (element.isMap()) {
        current = (AnyMap) element;
      } else {
        return null;
      }
    }
    return current.get(_inputPathNames[lastIndex]);
  }

  /**
   * Sets the given values in the output attribute. What values are set depends on the execution mode.
   * 
   * @param metaData
   *          the meta data
   * @param id
   *          the id of the record
   * @param any
   *          the values
   * @throws BlackboardAccessException
   *           if any error occurs
   */
  private void setValues(final AnyMap metaData, final String id, final Any any) throws BlackboardAccessException {
    final AnySeq values = metaData.getFactory().createAnySeq();
    for (final Any a : any) {
      if (a.isValue()) {
        values.add(a);
      }
    }
    if (values != null && !values.isEmpty()) {
      switch (_mode) {
        case FIRST:
          metaData.put(_outputPath, values.get(0));
          break;
        case LAST:
          metaData.put(_outputPath, values.get(values.size() - 1));
          break;
        case ALL_AS_LIST:
          metaData.put(_outputPath, values);
          break;
        case ALL_AS_ONE:
          metaData.put(_outputPath, concat(values, metaData.getFactory()));
          break;
        default:
          _log.error("Error while processing record " + id + ". Invalid mode " + _mode);
      }
    }
  }

  /**
   * Concatenates the provided values (in the given {@link AnySeq} object are just {@link Value} instances) as a new
   * String and creates a new {@link Value} instance.
   * 
   * @param values
   *          a List of {@link Value} instances
   * @param factory
   *          the DataFactory used to create the Literal
   * @return a {@link Value}
   */
  private Value concat(final AnySeq values, final DataFactory factory) {
    final StringBuffer buffer = new StringBuffer();

    for (final Any any : values) {
      final String stringValue = ((Value) any).asString();
      if (buffer.length() > 0) {
        buffer.append(_separator);
      }
      buffer.append(stringValue);
    }
    return factory.createStringValue(buffer.toString());
  }

}
