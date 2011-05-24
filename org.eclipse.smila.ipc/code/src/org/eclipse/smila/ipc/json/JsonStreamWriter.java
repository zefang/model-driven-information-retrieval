/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.ipc.json;

import java.io.IOException;
import java.io.OutputStream;

import org.codehaus.jackson.JsonEncoding;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.util.MinimalPrettyPrinter;
import org.eclipse.smila.ipc.IpcStreamWriter;

/**
 * IPC writer implementation for the JSON protocol.
 * 
 * @author aweber
 */
public class JsonStreamWriter implements IpcStreamWriter {

  /** factory of Jackson JSON generator. */
  private static final JsonFactory FACTORY = new JsonFactory();

  /** Jackson JSON writer. */
  private JsonGenerator _generator;

  /**
   * create JSON writer with optional pretty-printing.
   */
  JsonStreamWriter(final OutputStream stream, final boolean printPretty) throws IOException {
    try {
      _generator = FACTORY.createJsonGenerator(stream, JsonEncoding.UTF8);
      // default: do close underlying source (stream) on _generator.close():
      _generator.enable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
      if (printPretty) {
        _generator.useDefaultPrettyPrinter();
      } else {
        _generator.setPrettyPrinter(new MinimalPrettyPrinter());
      }
    } catch (final JsonParseException e) {
      throw new IOException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void close() throws IOException {
    if (_generator != null) {
      // see http://jackson.codehaus.org/1.1.1/javadoc/org/codehaus/jackson/JsonGenerator.Feature.html#AUTO_CLOSE_TARGET
      _generator.enable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
      _generator.close();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void closeWithoutStream() throws IOException {
    if (_generator != null) {
      // see http://jackson.codehaus.org/1.1.1/javadoc/org/codehaus/jackson/JsonGenerator.Feature.html#AUTO_CLOSE_TARGET
      _generator.disable(JsonGenerator.Feature.AUTO_CLOSE_TARGET);
      _generator.close();
    }
  }

  /**
   * JSON serialization does not support DOCUMENT_END tokens, so this does nothing.
   * 
   * {@inheritDoc}
   */
  @Override
  public void writeObjectEnd() throws IOException {
    // ignore
  }

  /**
   * JSON serialization does not support DOCUMENT_START tokens, so this does nothing.
   * 
   * {@inheritDoc}
   */
  @Override
  public void writeObjectStart() throws IOException {
    // ignore
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeMappingEnd() throws IOException {
    _generator.writeEndObject();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeMappingStart() throws IOException {
    _generator.writeStartObject();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeScalarBoolean(final boolean b) throws IOException {
    _generator.writeBoolean(b);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeScalarDouble(final double d) throws IOException {
    _generator.writeNumber(d);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeScalarInt(final int i) throws IOException {
    _generator.writeNumber(i);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeScalarLong(final long i) throws IOException {
    _generator.writeNumber(i);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeScalarString(final String s) throws IOException {
    _generator.writeString(s);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeSequenceEnd() throws IOException {
    _generator.writeEndArray();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeSequenceStart() throws IOException {
    _generator.writeStartArray();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void writeMappingKey(final String s) throws IOException {
    _generator.writeFieldName(s);
  }

}
