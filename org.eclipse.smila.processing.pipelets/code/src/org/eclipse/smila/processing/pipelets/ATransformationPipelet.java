/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation 
 *               Juergen Schumacher (empolis GmbH) - enhancements
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Collection;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * Abstract base class for transformation pipelets. The general properties are:
 * <ul>
 * <li>inputName: name of the Attribute/Attachment to apply the transformation to</li>
 * <li>outputName: name of the Attribute/Attachment to store the transformation in</li>
 * <li>inputType: the type (Attribute or Attachment of the inputName</li>
 * <li>outputType: the type (Attribute or Attachment of the outputtName</li>
 * </ul>
 */
public abstract class ATransformationPipelet implements Pipelet {

  /**
   * The type of the inputName: Attribute/Attachment.
   */
  public static final String PROP_INPUT_TYPE = "inputType";

  /**
   * The type of the inputName: Attribute/Attachment.
   */
  public static final String PROP_OUTPUT_TYPE = "outputType";

  /**
   * Name of the input Attribute/Attachment.
   */
  public static final String PROP_INPUT_NAME = "inputName";

  /**
   * Name of the output Attribute/Attachment.
   */
  public static final String PROP_OUTPUT_NAME = "outputName";

  /**
   * encoding to use for storing results as attachments.
   */
  public static final String ENCODING_ATTACHMENT = "utf-8";

  /**
   * local logger.
   */
  protected final Log _log = LogFactory.getLog(ATransformationPipelet.class);

  /**
   * The type of the inputName.
   */
  protected SourceType _inputType;

  /**
   * The type of the outputName.
   */
  protected SourceType _outputType;

  /**
   * The name of the input attribute/attachment.
   */
  protected String _inputName;

  /**
   * The name of the output attribute/attachment.
   */
  protected String _outputName;

  /**
   * The factory to create data objects.
   */
  protected DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /**
   * {@inheritDoc}
   */
  public void configure(final AnyMap configuration) throws ProcessingException {
    // read configuration properties
    _inputType = SourceType.valueOf(configuration.getStringValue(PROP_INPUT_TYPE));
    _outputType = SourceType.valueOf(configuration.getStringValue(PROP_OUTPUT_TYPE));
    _inputName = configuration.getStringValue(PROP_INPUT_NAME);
    _outputName = configuration.getStringValue(PROP_OUTPUT_NAME);
  }

  /**
   * @return input type
   */
  public SourceType getInputType() {
    return _inputType;
  }

  /**
   * @return input name
   */
  public String getInputName() {
    return _inputName;
  }

  /**
   * @return output type
   */
  public SourceType getOutputType() {
    return _outputType;
  }

  /**
   * @return output name
   */
  public String getOutputName() {
    return _outputName;
  }

  /**
   * Checks if to read the input from an Attribute.
   * 
   * @return true if to read the input from an Attribute, false otherwise
   */
  public boolean isReadFromAttribute() {
    return SourceType.ATTRIBUTE.equals(_inputType);
  }

  /**
   * Checks if to store the output in an Attribute.
   * 
   * @return true if to store the output in an Attribute, false otherwise
   */
  public boolean isStoreInAttribute() {
    return SourceType.ATTRIBUTE.equals(_outputType);
  }

  /**
   * store result strings on the blackboard.
   * 
   * @param blackboard
   *          blackboard
   * @param id
   *          record id
   * @param result
   *          result string
   * @throws ProcessingException
   *           error.
   */
  protected void storeResult(final Blackboard blackboard, final String id, final String result)
    throws ProcessingException {
    if (isStoreInAttribute()) {
      try {
        blackboard.getMetadata(id).put(_outputName, result);
      } catch (final Exception e) {
        throw new ProcessingException("Could not set attribute " + _outputName + " of record " + id, e);
      }
    } else {
      try {
        final InputStream stringStream = IOUtils.toInputStream(result, ENCODING_ATTACHMENT);
        blackboard.setAttachmentFromStream(id, _outputName, stringStream);
      } catch (final Exception e) {
        throw new ProcessingException("Could not set attachment " + _outputName + " of record " + id, e);
      }
    }
  }

  /**
   * store result strings on the blackboard.
   * 
   * @param blackboard
   *          blackboard
   * @param id
   *          record id
   * @param results
   *          result strings
   * @throws ProcessingException
   *           error.
   * @throws BlackboardAccessException
   *           error.
   */
  protected void storeResults(final Blackboard blackboard, final String id, final Collection<String> results)
    throws ProcessingException, BlackboardAccessException {
    if (!results.isEmpty()) {
      if (isStoreInAttribute()) {
        final AnySeq valueSeq = _dataFactory.createAnySeq();
        for (final String result : results) {
          valueSeq.add(result);
        }
        blackboard.getMetadata(id).put(_outputName, valueSeq);
      } else {
        storeResult(blackboard, id, results.iterator().next());
      }
    }
  }

  /**
   * Stores result byte[] on the blackboard.
   * 
   * @param blackboard
   *          the Blackboard
   * @param id
   *          the Id of the record
   * @param bytes
   *          the byte[] to save
   * @throws Exception
   *           if any error occurs
   */
  protected void storeResult(final Blackboard blackboard, final String id, final byte[] bytes) throws Exception {
    if (isStoreInAttribute()) {
      blackboard.getMetadata(id).put(_outputName, (new String(bytes, ENCODING_ATTACHMENT)));
    } else {
      blackboard.setAttachment(id, _outputName, bytes);
    }
  }

  /**
   * Reads input data from the Blackboard as byte[].
   * 
   * @param blackboard
   *          the Blackboard
   * @param id
   *          the Id of the record
   * @return a byte[]
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws UnsupportedEncodingException
   *           if converting string to bytes fails
   */
  protected byte[] readInput(final Blackboard blackboard, final String id) throws BlackboardAccessException,
    UnsupportedEncodingException {
    byte[] bytes = null;
    if (isReadFromAttribute()) {
      final Any inputAny = blackboard.getMetadata(id).get(_inputName);
      if ((inputAny != null) && inputAny.isValue()) {
        final String value = ((Value) inputAny).asString();
        if (value != null) {
          bytes = value.getBytes(ENCODING_ATTACHMENT);
        }
      }
    } else if (blackboard.hasAttachment(id, _inputName)) {
      bytes = blackboard.getAttachment(id, _inputName);
    }
    return bytes;
  }

  /**
   * Reads input data from the Blackboard as a String.
   * 
   * @param blackboard
   *          the Blackboard
   * @param id
   *          the Id of the record
   * @return a String
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws UnsupportedEncodingException
   *           if converting bytes to string fails
   */
  protected String readStringInput(final Blackboard blackboard, final String id) throws BlackboardAccessException,
    UnsupportedEncodingException {
    String string = null;
    if (isReadFromAttribute()) {
      final Any inputAny = blackboard.getMetadata(id).get(_inputName);
      if ((inputAny != null) && inputAny.isValue()) {
        string = ((Value) inputAny).asString();
      }
    } else if (blackboard.hasAttachment(id, _inputName)) {
      final byte[] bytes = blackboard.getAttachment(id, _inputName);
      if (bytes != null && bytes.length > 0) {
        string = new String(bytes, ENCODING_ATTACHMENT);
      }
    }
    return string;
  }
}
