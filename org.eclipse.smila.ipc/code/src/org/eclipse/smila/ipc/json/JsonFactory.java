/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc.json;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.eclipse.smila.ipc.IpcFactory;

/**
 * Factory for stream readers/writers using JSON.
 * 
 * @author aweber
 * 
 */
public class JsonFactory implements IpcFactory {
  /** enable pretty-printing on created StreamWriters? */
  private final boolean _printPretty;

  /** create instance with pretty-printing enabled. */
  public JsonFactory() {
    this(true);
  }

  /** create instance with specified pretty-printing option. */
  public JsonFactory(final boolean printPretty) {
    _printPretty = printPretty;
  }

  /**
   * Create a new JSON stream reader.
   * 
   * {@inheritDoc}
   */
  @Override
  public JsonStreamReader newStreamReader(final InputStream stream) throws IOException {
    return new JsonStreamReader(stream);
  }

  /**
   * Create a new JSON stream writer.
   * 
   * {@inheritDoc}
   */
  @Override
  public JsonStreamWriter newStreamWriter(final OutputStream stream) throws IOException {
    return new JsonStreamWriter(stream, _printPretty);
  }

}
