/*******************************************************************************
 * Copyright (c) 2010 Empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Igor Novakovic (Empolis GmbH) - initial implementation
 *******************************************************************************/

package org.eclipse.smila.integration.helloworld;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * HelloWorldPipelet is a very simple example of an processing pipelet. Pipelet's configuration (the name of the source
 * and the target attribute) is read from the pipeline directly. This pipelet implements a trivial business logic: Get
 * the value of record's source attribute, append the string " --- Hello world!!!" to it and set the result as a value
 * of the target attribute.
 * */
public class HelloWorldPipelet implements Pipelet {

  private final String SOURCE_ATT = "source_attribute_name";

  private final String TARGET_ATT = "target_attribute_name";

  private String _sourceAttr = "";

  private String _targetAttr = "";

  private final Log _log = LogFactory.getLog(HelloWorldPipelet.class);

  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    for (final String id : recordIds) {
      try {
        String inValue = "";
        String outValue = "";

        if (blackboard.getMetadata(id).containsKey(_sourceAttr)) {
          inValue = blackboard.getMetadata(id).getStringValue(_sourceAttr);
        }

        outValue = inValue + " --- Hello world!!!";

        final Value outLiteral = blackboard.getDataFactory().createStringValue(outValue);
        blackboard.getMetadata(id).put(_targetAttr, outLiteral);

      } catch (final Exception e) {
        _log.error("Error while calling HelloWorldPipelet for record: '" + id + "':" + e.getMessage(), e);
        throw new ProcessingException(e);
      }
    }
    return recordIds;
  }

  @Override
  public void configure(final AnyMap config) throws ProcessingException {
    _sourceAttr = config.getStringValue(SOURCE_ATT);
    _targetAttr = config.getStringValue(TARGET_ATT);
  }
}
