/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH.  
 * All rights reserved. This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution, 
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc.test;

import java.io.IOException;
import java.io.InputStream;

import junit.framework.TestCase;

import org.eclipse.smila.ipc.IpcStreamReader;
import org.eclipse.smila.ipc.IpcToken;
import org.eclipse.smila.ipc.json.JsonFactory;
import org.eclipse.smila.utils.config.ConfigUtils;

/**
 * Test class for JsonStreamReader class.
 * 
 * @author aweber
 */
public class TestJsonStreamReader extends TestCase {

  /** the factory to create JSON reader/writer objects. */
  private final JsonFactory _jsonFactory = new JsonFactory();

  /**
   * @throws Exception
   *           error
   */
  public void testReadJSONFromFile() throws Exception {
    final InputStream is = ConfigUtils.getConfigStream(AllTests.BUNDLE_ID, "test.json");
    final IpcStreamReader reader = _jsonFactory.newStreamReader(is);
    readInputJson(reader);
  }

  /**
   * @param reader
   *          Json parser
   * @throws IOException
   *           error
   */
  public void readInputJson(final IpcStreamReader reader) throws IOException {
    final IpcToken[] expectedTokens =
      new IpcToken[] { IpcToken.OBJECT_START, IpcToken.MAPPING_START, IpcToken.SCALAR_STRING,
        IpcToken.MAPPING_START, IpcToken.SCALAR_STRING, IpcToken.MAPPING_START, IpcToken.SCALAR_STRING,
        IpcToken.SCALAR_INT, IpcToken.MAPPING_END, IpcToken.SCALAR_STRING, IpcToken.SEQUENCE_START,
        IpcToken.SCALAR_STRING, IpcToken.SCALAR_STRING, IpcToken.SCALAR_INT, IpcToken.SCALAR_INT,
        IpcToken.SCALAR_STRING, IpcToken.SCALAR_STRING, IpcToken.SCALAR_INT, IpcToken.SCALAR_INT,
        IpcToken.SCALAR_STRING, IpcToken.SCALAR_STRING, IpcToken.SCALAR_INT, IpcToken.SCALAR_INT,
        IpcToken.SEQUENCE_END, IpcToken.MAPPING_END, IpcToken.MAPPING_END, IpcToken.OBJECT_END };
    final String[] expectedValues =
      new String[] { null, "{", "result", "{", "state", "{", "code", "0", "}", "annotations", "[", "Property",
        "language: startgerman", "0", "13", "Sentence", "", "0", "13", "Token", "Heute", "0", "5", "]", "}", "}",
        null };
    IpcToken token = null;
    int i = 0;
    do {
      token = reader.nextToken();
      //System.out.println(token + " - " + reader.currentStringValue());
      assertEquals(expectedTokens[i], token);
      assertEquals(expectedValues[i], reader.currentStringValue());
      i++;
    } while (token != IpcToken.OBJECT_END);
  }
}
