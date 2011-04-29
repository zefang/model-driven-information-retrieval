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
import java.io.OutputStream;

/**
 * Interface for factories creating IPC readers and writer. Different factory implementations create readers and writers
 * for different serialization formats.
 * 
 * @author aweber
 * 
 */
public interface IpcFactory {
  /**
   * create a new IPC stream writer.
   * 
   * @param stream
   *          stream to write
   * @return stream writer
   * @throws IOException
   *           error creating or initializing the reader.
   */
  IpcStreamReader newStreamReader(InputStream stream) throws IOException;

  /**
   * create a new IPC stream reader.
   * 
   * @param stream
   *          stream to read
   * @return stream writer.
   * @throws IOException
   *           error creating or initializing the writer.
   */
  IpcStreamWriter newStreamWriter(OutputStream stream) throws IOException;
}
