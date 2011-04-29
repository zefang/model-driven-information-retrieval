/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc;

import java.io.InputStream;

/**
 * base interface for IPC responses.
 * 
 * @author aweber
 * 
 */
public interface IpcResponse {

  /**
   * 
   * @return true if the response is streamable.
   */
  boolean isStreamable();

  /**
   * throws UnsupportedOperationException if not implemented by this response implementation.
   * 
   * @return next result object, or null if the end has been reached.
   */
  Object getNext();

  /**
   * throws UnsupportedOperationException if not implemented by this response implementation.
   * 
   * @return complete result at once.
   */
  Object getResult();

  /**
   * throws UnsupportedOperationException if not implemented by this response implementation.
   * 
   * @return the base stream.
   */
  InputStream getStream();

  /**
   * 
   * @return true if the response represents the result of a successful request.
   */
  boolean isSuccess();

  /**
   * 
   * @return a description about the result state, e.g. an error message.
   */
  String getMessage();

  /**
   * initialize the request with the response object from the server.
   * 
   * @param o
   *          original response object, e.g. an input stream.
   */
  void initialize(Object o);

  /**
   * Signals that we are finished with this response. Used to free resources.
   */
  void close();

}
