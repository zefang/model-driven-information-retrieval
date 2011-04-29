/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH.  
 * All rights reserved. This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution, 
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc.test;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import org.eclipse.smila.ipc.IpcStreamReader;
import org.eclipse.smila.ipc.IpcStreamWriter;
import org.eclipse.smila.ipc.IpcToken;
import org.eclipse.smila.ipc.json.JsonFactory;

import junit.framework.TestCase;

/**
 * Test class for JsonStreamReader class.
 * 
 * @author aweber
 */
public class TestJsonStreamWriter extends TestCase {

  /** the expected tokens in the test. */
  private final IpcToken[] _expectedTokens = new IpcToken[] { IpcToken.OBJECT_START, IpcToken.MAPPING_START,
    IpcToken.SCALAR_STRING, IpcToken.MAPPING_START, IpcToken.SCALAR_STRING, IpcToken.MAPPING_START,
    IpcToken.SCALAR_STRING, IpcToken.SCALAR_DOUBLE, IpcToken.MAPPING_END, IpcToken.SCALAR_STRING,
    IpcToken.SEQUENCE_START, IpcToken.SCALAR_STRING, IpcToken.SCALAR_STRING, IpcToken.SCALAR_INT,
    IpcToken.SCALAR_INT, IpcToken.SCALAR_STRING, IpcToken.SCALAR_STRING, IpcToken.SCALAR_INT, IpcToken.SCALAR_INT,
    IpcToken.SEQUENCE_END, IpcToken.MAPPING_END, IpcToken.MAPPING_END, IpcToken.OBJECT_END };

  /** the factory to create JSON reader/writer objects. */
  private final JsonFactory _jsonFactory = new JsonFactory();

  /**
   * test with JsonStreamReader/-Writer.
   * 
   * @throws IOException
   *           error
   */
  public void testWriteAndReadJson() throws IOException {
    final ByteArrayOutputStream outStream = new ByteArrayOutputStream();
    // write JSON output
    final IpcStreamWriter writer = _jsonFactory.newStreamWriter(outStream);
    writeOutput(writer);
    writer.close();

    //System.out.println(outStream.toString("utf-8"));

    // read JSON input
    final ByteArrayInputStream inStream = new ByteArrayInputStream(outStream.toByteArray());
    readInputJson(_jsonFactory.newStreamReader(inStream));
  }

  /**
   * @param reader
   *          a JsonStreamReader
   * @throws IOException
   *           error
   */
  private void readInputJson(final IpcStreamReader reader) throws IOException {
    final String[] expectedValues =
      new String[] { null, "{", "result", "{", "state", "{", "code", "3.14", "}", "annotations", "[", "Sentence",
        "", "0", "13", "Token", "Heute", "3", "123456", "]", "}", "}", null };
    IpcToken token = null;
    int i = 0;
    do {
      token = reader.nextToken();
      final String stringValue = reader.currentStringValue();
      // System.out.println(token + " - " + stringValue);
      assertEquals(_expectedTokens[i], token);
      assertEquals(expectedValues[i], stringValue);
      i++;
    } while (token != IpcToken.OBJECT_END);
  }

  /**
   * @param writer
   *          a JsonStreamWriter
   * @throws IOException
   *           error
   */
  private void writeOutput(final IpcStreamWriter writer) throws IOException {
    writer.writeObjectStart(); // should have no effect for JSON
    writer.writeMappingStart();
    writer.writeMappingKey("result");
    writer.writeMappingStart();
    writer.writeMappingKey("state");
    writer.writeMappingStart();
    writer.writeMappingKey("code");
    writer.writeScalarDouble(3.14);
    writer.writeMappingEnd();
    writer.writeMappingKey("annotations");
    writer.writeSequenceStart();
    writer.writeScalarString("Sentence");
    writer.writeScalarString("");
    writer.writeScalarInt(0);
    writer.writeScalarInt(13);
    writer.writeScalarString("Token");
    writer.writeScalarString("Heute");
    writer.writeScalarInt(3);
    writer.writeScalarInt(123456);
    writer.writeSequenceEnd();
    writer.writeMappingEnd();
    writer.writeMappingEnd();
    writer.writeObjectEnd(); // should have no effect for JSON
  }
}
