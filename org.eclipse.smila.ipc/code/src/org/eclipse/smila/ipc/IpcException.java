/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc;

import java.io.IOException;

/**
 * A wrapper class to for exceptions to be transformed to/from JSON error objects.
 */
public class IpcException extends Exception {

  /** exceptions are serializable. */
  private static final long serialVersionUID = 1L;

  /**
   * constructur with message.
   * 
   * @param message
   *          detailed error message.
   */
  public IpcException(final String message) {
    super(message);
  }

  /**
   * constructur with causing exception.
   * 
   * @param cause
   *          exception that caused the error.
   */
  public IpcException(final Throwable cause) {
    super(cause);
  }

  /**
   * constructur with mesage and causing exception.
   * 
   * @param message
   *          detailed error message.
   * @param cause
   *          exception that caused the error.
   */
  public IpcException(final String message, final Throwable cause) {
    super(message, cause);
  }

  /**
   * Writes the JsonException as a JSON object to the given OutputStream.
   * 
   * @param writer
   *          the IpcStreamWriter contains an OutputStream to write to
   * @throws IOException
   *           if any error occusr
   */
  public void write(final IpcStreamWriter writer) throws IOException {
    IpcException.write(writer, this);
  }

  /**
   * Writes an Exception as a JSON object to the given OutputStream.
   * 
   * @param writer
   *          the IpcStreamWriter contains an OutputStream
   * @param ex
   *          the exception to write
   * @throws IOException
   *           if any error occusr
   */
  public static void write(final IpcStreamWriter writer, final Throwable ex) throws IOException {
    writer.writeObjectStart();
    writer.writeMappingStart();
    writer.writeMappingKey("message");
    writer.writeScalarString(getIpcMessage(ex));
    writer.writeMappingEnd();
    writer.writeObjectEnd();
    // do not close the stream to allow persistent connections
    writer.closeWithoutStream();
  }

  /**
   * Get the error message string for the IPC object.
   * 
   * @param e
   *          the exception
   * @return the error message string
   */
  private static String getIpcMessage(Throwable e) {
    final StringBuilder msg = new StringBuilder(getText(e));
    while (e.getCause() != null && e.getCause() != e) {
      e = e.getCause();
      msg.append("\ncaused by: ").append(getText(e));
    }
    return msg.toString();
  }

  /**
   * get exception message, if one exists, or exception name else.
   * 
   * @param ex
   *          exception to convert.
   * @return description of exception.
   */
  private static String getText(final Throwable ex) {
    if (ex.getMessage() != null) {
      return ex.getMessage();
    } else {
      return ex.toString();
    }

  }
}
