/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials are made available 
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 *******************************************************************************/

package org.eclipse.smila.processing.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.ProcessingException;

/**
 * Simple pipelet that copies a String value between attributes and or attachments. It supports two modes: <li>COPY:
 * copies the value from the input to the output attribute/attachment</li> <li>MOVE: same as copy, but deletes the value
 * from the input attribute/attachment</li>
 */
public class CopyPipelet extends ATransformationPipelet {

  /**
   * property to configure the execution mode of the pipelet.
   */
  private static final String PROPERTY_MODE = "mode";

  /** The log. */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * The execution mode. Default is copy.
   */
  private Mode _mode = Mode.COPY;

  /**
   * {@inheritDoc}
   * 
   */
  @Override
  public void configure(AnyMap configuration) throws ProcessingException {
    super.configure(configuration);
    final String mode = (String) configuration.getStringValue(PROPERTY_MODE);
    if (mode != null) {
      _mode = Mode.valueOf(mode);
    }
  }

  /**
   * {@inheritDoc}
   * 
   */
  public String[] process(Blackboard blackboard, String[] recordIds) throws ProcessingException {
    if (recordIds != null) {
      for (String id : recordIds) {
        try {
          // read input
          final String srcValue = readStringInput(blackboard, id);
          if (srcValue != null) {
            // write to output
            storeResult(blackboard, id, srcValue);
            if (_log.isTraceEnabled()) {
              _log.trace("copied value from input " + _inputType + " " + _inputName + " to " + _outputType + " "
                + _outputName);
            }
          } // if

          if (Mode.MOVE.equals(_mode)) {
            // remove old value
            if (isReadFromAttribute()) {
              final AnyMap metaData = blackboard.getMetadata(id);
              metaData.remove(getInputName());
            } else {
              blackboard.removeAttachment(id, getInputName());
            }
            if (_log.isTraceEnabled()) {
              _log.trace("deleted value of input " + _inputType + " " + _inputName);
            }
          } // if
        } catch (Exception ex) {
          _log.error("Error processing ID " + id, ex);
        }
      } // for
    } // if
    return recordIds;
  }

  /**
   * Execution mode: copy or move value.
   */
  private enum Mode {
    /**
     * Copy the value.
     */
    COPY,

    /**
     * Move the value (deleting the value from the input source).
     */
    MOVE;
  }

}
