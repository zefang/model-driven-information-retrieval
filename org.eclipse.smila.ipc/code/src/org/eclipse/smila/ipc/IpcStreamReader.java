/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc;

import java.io.IOException;
import java.io.InputStream;

/**
 * Streaming API based reader for the IPC protocol.
 * 
 * @author aweber
 */
public interface IpcStreamReader {

  /**
   * throws UnsupportedOperationException if not implemented by this response implementation.
   * 
   * @return the internal stream.
   */
  InputStream getStream();

  /**
   * Closes the reader and the underlying stream.
   * 
   * @throws IOException
   *           any error
   */
  void close() throws IOException;

  /**
   * Closes the reader but NOT the underlying stream.
   * 
   * @throws IOException
   *           any error
   */
  void closeWithoutStream() throws IOException;

  /**
   * Returns the next token.
   * 
   * @return next token
   * @throws IOException
   *           any error
   */
  IpcToken nextToken() throws IOException;

  /**
   * Returns the current token value as string.
   * 
   * @return current token value as string
   * @throws IOException
   *           any error
   */
  String currentStringValue() throws IOException;

  /**
   * Shortcut for nextToken() + currentStringValue().
   * 
   * @return next token value as string
   * @throws IOException
   *           any error
   */
  String nextStringValue() throws IOException;

  /**
   * Returns the current token value as long value.
   * 
   * @return current token value as long value
   * @throws IOException
   *           any error
   */
  long currentLongValue() throws IOException;

  /**
   * Shortcut for nextToken() + currentLongValue().
   * 
   * @return next token value as long
   * @throws IOException
   *           any error
   */
  long nextLongValue() throws IOException;

  /**
   * Returns the current token value as double value.
   * 
   * @return current token value as double
   * @throws IOException
   *           any error
   */
  double currentDoubleValue() throws IOException;

  /**
   * Shortcut for nextToken() + currentDoubleValue().
   * 
   * @return next token value as double
   * @throws IOException
   *           any error
   */
  double nextDoubleValue() throws IOException;

  /**
   * Returns the current token value as boolean value.
   * 
   * @return current token value as boolean
   * @throws IOException
   *           any error
   */
  boolean currentBoolValue() throws IOException;

  /**
   * Shortcut for nextToken() + currentBoolValue().
   * 
   * @return next token value as boolean.
   * @throws IOException
   *           any error.
   */
  boolean nextBoolValue() throws IOException;
}
