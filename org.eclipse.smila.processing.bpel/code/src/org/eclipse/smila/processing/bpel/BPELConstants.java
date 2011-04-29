/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.processing.bpel;

import javax.xml.namespace.QName;

import org.eclipse.smila.processing.WorkflowProcessor;

/**
 * Constants used in BPEL integration.
 * @author jschumacher
 *
 */
public final class BPELConstants {

  /**
   * name of WSDL operation of SMILA BPEL processes.
   */
  public static final String OPERATION_NAME = "process";

  /** local name of InvokePipelet extension activity. */
  public static final String TAG_INVOKE_PIPELET = "invokePipelet";

  /** local name of tag for specifying the pipelet class name. */
  public static final String TAG_PIPELET = "pipelet";

  /** local name of tag for specifying the variables to process. */
  public static final String TAG_VARIABLES = "variables";

  /** local name of tag for specifying the pipelet configuration. */
  public static final String TAG_CONFIGURATION = "configuration";

  /** attribute name for specifying the pipelet class name. */
  public static final String ATTR_CLASS = "class";

  /** attribute name for specifying the input variable name. */
  public static final String ATTR_INPUT = "input";

  /** attribute name for specifying the output variable name. */
  public static final String ATTR_OUTPUT = "output";

  // constants for BPEL messages at runtime.
  /** WSDL type of processor messages. */
  public static final QName TYPE_PROCESSORMESSAGE = new QName(WorkflowProcessor.NAMESPACE_PROCESSOR,
    "ProcessorMessage");

  /** name of root element of ODE message variables. */
  public static final String NAME_MESSAGE = "message";

  /** name of records part of SMILA ODE messages. */
  public static final String PART_RECORDS = "records";

  /** name of id part of SMILA ODE processor messages. */
  public static final String PART_ID = "id";

  /** name of root element in id part. */
  public static final String NAME_REQID = "ReqId";

  /** prevent instance creation. */
  private BPELConstants() {
    throw new IllegalStateException();
  }
}
