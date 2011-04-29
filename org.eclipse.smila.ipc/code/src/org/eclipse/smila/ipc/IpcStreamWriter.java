/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc;

import java.io.IOException;

/**
 * Streaming API based writer for the IPC protocol.
 * 
 * @author aweber
 */
public interface IpcStreamWriter {

  /**
   * Closes the writer and the underlying stream.
   * 
   * @throws IOException
   *           any error
   */
  void close() throws IOException;

  /**
   * Closes the writer but NOT the underlying stream.
   * 
   * @throws IOException
   *           any error
   */
  void closeWithoutStream() throws IOException;

  /**
   * Writes marker signaling start of an object (resp. a document).
   * 
   * Will be ignored if underlying implementation doesn't support this kind of marker.
   * 
   * @throws IOException
   *           any error
   */
  void writeObjectStart() throws IOException;

  /**
   * Writes marker signaling end of an object (resp. a document).
   * 
   * Will be ignored if underlying implementation doesn't support this kind of marker.
   * 
   * @throws IOException
   *           any error
   */
  void writeObjectEnd() throws IOException;

  /**
   * Writes marker signaling start of a mapping.
   * 
   * @throws IOException
   *           any error
   */
  void writeMappingStart() throws IOException;

  /**
   * Writes marker signaling end of a mapping.
   * 
   * @throws IOException
   *           any error
   */
  void writeMappingEnd() throws IOException;

  /**
   * Writes marker signaling start of a sequence.
   * 
   * @throws IOException
   *           any error
   */
  void writeSequenceStart() throws IOException;

  /**
   * Writes marker signaling end of a sequence.
   * 
   * @throws IOException
   *           any error
   */
  void writeSequenceEnd() throws IOException;

  /**
   * Writes string value.
   * 
   * @param s
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeScalarString(String s) throws IOException;

  /**
   * Writes integer value.
   * 
   * @param i
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeScalarInt(int i) throws IOException;

  /**
   * Writes long value.
   * 
   * @param i
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeScalarLong(long i) throws IOException;

  /**
   * Writes double value.
   * 
   * @param d
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeScalarDouble(double d) throws IOException;

  /**
   * Writes boolean value. any error
   * 
   * @param b
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeScalarBoolean(boolean b) throws IOException;

  /**
   * Writes a mapping key.
   * 
   * Depending on the underlying implementation there may be no difference to just writing a scalar string. But e.g. in
   * JSON keys are completed by an additional ":".
   * 
   * @param s
   *          value to write
   * @throws IOException
   *           any error
   */
  void writeMappingKey(String s) throws IOException;
}
