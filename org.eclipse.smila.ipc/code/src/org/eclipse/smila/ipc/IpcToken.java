/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc;

/**
 * IPC Tokens. Tokens of underlying implementations must be mapped to these tokens.
 * 
 * @author aweber
 */
public enum IpcToken {
  /** start of an object (= document) in stream. */
  OBJECT_START,
  /** end of an object (= document) in stream. */
  OBJECT_END,
  /** start of a mapping. */
  MAPPING_START,
  /** end of a mapping. */
  MAPPING_END,
  /** start of a sequence. */
  SEQUENCE_START,
  /** end of a sequence. */
  SEQUENCE_END,
  /** current value is a integer. */
  SCALAR_INT,
  /** current value is a string. */
  SCALAR_STRING,
  /** current value is a double. */
  SCALAR_DOUBLE,
  /** current value is a boolean. */
  SCALAR_BOOL,
  /** hm. what's this. */
  UNDEFINED;
}
