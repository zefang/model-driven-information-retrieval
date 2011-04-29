/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation 
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * @author aweber
 */
public class AddValuesPipelet implements Pipelet {

  /** config property name for attribute name to add values to. */
  private static final String PARAM_ATTRIBUTE = "outputAttribute";

  /** config property name for the values to add. */
  private static final String PARAM_VALUES = "valuesToAdd";

  /** the attribute to which to add the values. */
  private String _outputAttribute;

  /** the values to add. */
  private Any _values;

  /**
   * add Any values to an attribute as described in pipelet config or parameters.
   * 
   * {@inheritDoc}
   */
  public String[] process(Blackboard blackboard, String[] recordIds) throws ProcessingException {
    if (_outputAttribute != null && _values != null) {
      try {
        for (final String id : recordIds) {
          for (final Any value : _values) {
            blackboard.getMetadata(id).add(_outputAttribute, value);
          }
        }
      } catch (final Exception ex) {
        throw new ProcessingException(ex);
      }
    }
    return recordIds;
  }

  /**
   * {@inheritDoc}
   */
  public void configure(final AnyMap configuration) throws ProcessingException {
    _outputAttribute = configuration.getStringValue(PARAM_ATTRIBUTE);
    _values = configuration.get(PARAM_VALUES);
  }

}
