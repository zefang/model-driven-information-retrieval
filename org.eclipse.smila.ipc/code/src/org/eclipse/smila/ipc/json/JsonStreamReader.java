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
import java.util.HashMap;
import java.util.Map;

import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.MappingJsonFactory;
import org.codehaus.jackson.map.ObjectMapper;
import org.eclipse.smila.ipc.IpcStreamReader;
import org.eclipse.smila.ipc.IpcToken;

/**
 * IPC reader implementation for the JSON protocol.
 * 
 * @author aweber
 */
public class JsonStreamReader implements IpcStreamReader {

  /** factory of Jackson JSON parser. */
  private static final JsonFactory FACTORY;

  /** mapping of Jackson token to IPC token. */
  private static final Map<JsonToken, IpcToken> TOKEN_MAPPING;

  /** Jackson JSON parser. */
  private JsonParser _parser;

  /** We have to do a little hack to satisfy the IpcToken.OBJECT_START, which doesn't exist in JSON. */
  private boolean _firstToken = true;

  /** We have to do a little hack to satisfy the IpcToken.OBJECT_START, which doesn't exist in JSON. */
  private boolean _firstValue = true;

  /** We have to do a little hack to satisfy the IpcToken.OBJECT_END, which doesn't exist in JSON. */
  private boolean _lastToken;

  /** We have to do a little hack to satisfy the IpcToken.OBJECT_END, which doesn't exist in JSON. */
  private boolean _levelCountEnabled;

  /**
   * We have to do a little hack to satisfy the IpcToken.OBJECT_END, which doesn't exist in JSON. Therefore we count the
   * number of levels (mappings and sequences).
   */
  private int _levelCount;

  static {
    // TODO do we really need object mapping?
    final ObjectMapper mapper = new ObjectMapper();
    FACTORY = new MappingJsonFactory(mapper);
    // disable field name caching using String.intern()
    FACTORY.configure(JsonParser.Feature.INTERN_FIELD_NAMES, false);

    TOKEN_MAPPING = new HashMap<JsonToken, IpcToken>();
    TOKEN_MAPPING.put(JsonToken.END_ARRAY, IpcToken.SEQUENCE_END);
    TOKEN_MAPPING.put(JsonToken.END_OBJECT, IpcToken.MAPPING_END);
    TOKEN_MAPPING.put(JsonToken.FIELD_NAME, IpcToken.SCALAR_STRING);
    TOKEN_MAPPING.put(JsonToken.NOT_AVAILABLE, IpcToken.UNDEFINED);
    TOKEN_MAPPING.put(JsonToken.START_ARRAY, IpcToken.SEQUENCE_START);
    TOKEN_MAPPING.put(JsonToken.START_OBJECT, IpcToken.MAPPING_START);
    TOKEN_MAPPING.put(JsonToken.VALUE_FALSE, IpcToken.SCALAR_BOOL);
    TOKEN_MAPPING.put(JsonToken.VALUE_NULL, IpcToken.UNDEFINED);
    TOKEN_MAPPING.put(JsonToken.VALUE_NUMBER_FLOAT, IpcToken.SCALAR_DOUBLE);
    TOKEN_MAPPING.put(JsonToken.VALUE_NUMBER_INT, IpcToken.SCALAR_INT);
    TOKEN_MAPPING.put(JsonToken.VALUE_STRING, IpcToken.SCALAR_STRING);
    TOKEN_MAPPING.put(JsonToken.VALUE_TRUE, IpcToken.SCALAR_BOOL);
  }

  /**
   * create JSON stream reader.
   * 
   * @param stream
   *          input stream.
   * @throws IOException
   *           error creating parser.
   */
  JsonStreamReader(final InputStream stream) throws IOException {
    try {
      _parser = FACTORY.createJsonParser(stream);
      // default: do close underlying source (stream) on _parser.close():
      _parser.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
    } catch (final JsonParseException e) {
      throw new IOException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void close() throws IOException {
    if (_parser != null) {
      // see http://jackson.codehaus.org/1.1.1/javadoc/org/codehaus/jackson/JsonParser.Feature.html#AUTO_CLOSE_SOURCE
      _parser.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
      _parser.close();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void closeWithoutStream() throws IOException {
    if (_parser != null) {
      // see http://jackson.codehaus.org/1.1.1/javadoc/org/codehaus/jackson/JsonGenerator.Feature.html#AUTO_CLOSE_TARGET
      _parser.disable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
      _parser.close();
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean currentBoolValue() throws IOException {
    try {
      return Boolean.valueOf(_parser.getText());
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public double currentDoubleValue() throws IOException {
    try {
      return _parser.getDoubleValue();
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public long currentLongValue() throws IOException {
    try {
      return _parser.getLongValue();
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String currentStringValue() throws IOException {
    if (_firstValue) {
      return null;
    } else if (_lastToken) {
      return null;
    }
    try {
      return _parser.getText();
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean nextBoolValue() throws IOException {
    nextParserToken();
    return currentBoolValue();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public double nextDoubleValue() throws IOException {
    nextParserToken();
    return currentDoubleValue();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public long nextLongValue() throws IOException {
    nextParserToken();
    return currentLongValue();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String nextStringValue() throws IOException {
    nextToken();
    return currentStringValue();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public IpcToken nextToken() throws IOException {
    if (_firstToken) {
      // We have to do a little hack to satisfy the IpcToken.OBJECT_START, which doesn't extist in JSON.
      _firstToken = false;
      return IpcToken.OBJECT_START;
    } else if (_lastToken) {
      throw new IllegalStateException("JSON Object has ended. Parsing of multiple JSON objects is not supported.");
    } else if (_levelCountEnabled && _levelCount == 0) {
      _lastToken = true;
      return IpcToken.OBJECT_END;
    }

    try {
      final JsonToken jsonToken = nextParserToken();
      if (jsonToken == null) {
        _lastToken = true;
        return IpcToken.OBJECT_END;
      }

      final IpcToken ipcToken = TOKEN_MAPPING.get(jsonToken);
      if (IpcToken.MAPPING_START.equals(ipcToken) || IpcToken.SEQUENCE_START.equals(ipcToken)) {
        _levelCountEnabled = true;
        _levelCount++;
      } else if (IpcToken.MAPPING_END.equals(ipcToken) || IpcToken.SEQUENCE_END.equals(ipcToken)) {
        _levelCount--;
      }
      return ipcToken;
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * @return next JSON token
   * @throws IOException
   *           parse error.
   */
  private JsonToken nextParserToken() throws IOException {
    _firstValue = false;
    return _parser.nextToken();
  }

  /**
   * read object of desired class from JSON stream.
   * 
   * @param <T>
   *          desired class.
   * @param type
   *          desired class.
   * @return instance of desired class.
   * @throws IOException
   *           parse error.
   */
  public <T> T readObject(final Class<T> type) throws IOException {
    try {
      return _parser.readValueAs(type);
    } catch (final JsonParseException e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Not supported by this implementation, so this always throws an {@link UnsupportedOperationException}. We have no
   * access to internal stream here, stream is wrapped in Jackson implementation.
   * 
   * @return nothing. always throws an exception.
   */
  @Override
  public InputStream getStream() {
    throw new UnsupportedOperationException();
  }

}
