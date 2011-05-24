/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.json;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;
import org.eclipse.smila.ipc.IpcFactory;
import org.eclipse.smila.ipc.IpcStreamReader;
import org.eclipse.smila.ipc.IpcStreamWriter;
import org.eclipse.smila.ipc.IpcToken;
import org.eclipse.smila.ipc.json.JsonFactory;

/**
 * Utility class for converting datamodel objects to JSON objects and vice versa.
 * 
 * @author aweber
 */
public class JsonSerializationUtils {

  /** Encoding to use for String (de)serialization. */
  public static final String ENCODING = "UTF-8";

  /** Data factory to use. */
  protected final DataFactory _dataFactory = DataFactoryCreator.createDefaultFactory();

  /** JSON IPC factory. */
  protected final IpcFactory _jsonFactory;

  /** helper for parsing date/datetimes. */
  protected final ValueFormatHelper _formatHelper = new ValueFormatHelper();

  /** create instance with pretty-printing enabled. */
  public JsonSerializationUtils() {
    this(true);
  }

  /** create instance with specified. */
  public JsonSerializationUtils(final boolean printPretty) {
    _jsonFactory = new JsonFactory(printPretty);
  }

  /** @returns JSON reader/writer factory. */
  public IpcFactory getJsonFactory() {
    return _jsonFactory;
  }

  /**
   * Converts JSON string to record object.
   * 
   * @param jsonString
   *          input object
   * @return record object
   * @throws IOException
   *           in case of conversion error
   */
  public Record jsonObject2record(final String jsonString) throws IOException {
    ByteArrayInputStream bais = null;
    try {
      bais = new ByteArrayInputStream(jsonString.getBytes(ENCODING));
      final Record record = jsonStream2record(bais);
      return record;
    } finally {
      IOUtils.closeQuietly(bais);
    }
  }

  /**
   * Converts JSON stream to record object.
   * 
   * @param stream
   *          an input stream
   * @return a record with no Id set
   * @throws IOException
   *           in case of conversion error
   */
  public Record jsonStream2record(final InputStream stream) throws IOException {
    final IpcStreamReader reader = _jsonFactory.newStreamReader(stream);
    try {
      return stream2record(reader);
    } finally {
      reader.closeWithoutStream(); // do not close underlying stream
    }
  }

  /**
   * Converts JSON stream to Any object.
   * 
   * @param stream
   *          an input stream
   * @return a record with no Id set
   * @throws IOException
   *           in case of conversion error
   */
  public Any jsonStream2any(final InputStream stream) throws IOException {
    final IpcStreamReader reader = _jsonFactory.newStreamReader(stream);
    try {
      return stream2any(reader);
    } finally {
      reader.closeWithoutStream(); // do not close underlying stream
    }
  }

  /**
   * Converts stream to record object.
   * 
   * @param reader
   *          an ipc reader (binary/json)
   * @return record parsed from stream, or null if end-of-stream reached.
   * @throws IOException
   *           IO errors from underlying stream.
   * @throws IllegalStateException
   *           parse errors.
   */
  public Record stream2record(final IpcStreamReader reader) throws IOException {
    IpcToken token = reader.nextToken();
    if (token == null) {
      return null;
    }
    if (token != IpcToken.OBJECT_START) {
      throw new IllegalStateException("Expected OBJECT_START Token; Token = " + token);
    }
    token = reader.nextToken();
    if (token != IpcToken.MAPPING_START) {
      throw new IllegalStateException("Expected MAPPING_START Token; Token = " + token);
    }
    final AnyMap metadata = readMap(reader);
    final Record record = _dataFactory.createRecord();
    record.getMetadata().putAll(metadata);
    token = reader.nextToken();
    if (token != IpcToken.OBJECT_END) {
      throw new IllegalStateException("Expected OBJECT_END Token; Token = " + token);
    }
    return record;
  }

  /**
   * Converts stream to record object.
   * 
   * @param reader
   *          an ipc reader (binary/json)
   * @return an Any, or null if end-of-stream reached.
   * @throws IOException
   *           in case of conversion error
   */
  public Any stream2any(final IpcStreamReader reader) throws IOException {
    IpcToken token = reader.nextToken();
    if (token == null) {
      return null;
    }
    if (token != IpcToken.OBJECT_START) {
      throw new IllegalStateException("Expected OBJECT_START Token; Token = " + token);
    }
    final Any any = readAny(reader, reader.nextToken());
    token = reader.nextToken();
    if (token != IpcToken.OBJECT_END) {
      throw new IllegalStateException("Expected OBJECT_END Token; Token = " + token);
    }
    return any;
  }

  /**
   * Converts record object to JSON object.
   * 
   * @param record
   *          input record
   * @return JSON string representing the record.
   * @throws IOException
   *           in case of conversion error
   */
  public String record2JsonObject(final Record record) throws IOException {
    ByteArrayOutputStream baos = null;
    try {
      baos = new ByteArrayOutputStream();
      record2JsonStream(baos, record);
      return baos.toString(ENCODING);
    } finally {
      IOUtils.closeQuietly(baos);
    }
  }

  /**
   * Converts record object to JSON stream.
   * 
   * @param stream
   *          output stream
   * @param record
   *          input record
   * @throws IOException
   *           in case of conversion error
   */
  public void record2JsonStream(final OutputStream stream, final Record record) throws IOException {
    final IpcStreamWriter writer = _jsonFactory.newStreamWriter(stream);
    try {
      record2Stream(writer, record);
    } finally {
      writer.closeWithoutStream(); // do not close underlying stream
    }
  }

  /**
   * Converts AnyMap object to JSON stream.
   * 
   * @param stream
   *          output stream
   * @param object
   *          input record
   * @throws IOException
   *           in case of conversion error
   */
  public void map2JsonStream(final OutputStream stream, final AnyMap object) throws IOException {
    any2JsonStream(stream, object);
  }

  /**
   * Converts AnyMap object to JSON object.
   * 
   * @param object
   *          an AnyMap object
   * @return JSON string representing the input object.
   * @throws IOException
   *           in case of conversion error
   */
  public String map2JsonObject(final AnyMap object) throws IOException {
    ByteArrayOutputStream baos = null;
    try {
      baos = new ByteArrayOutputStream();
      map2JsonStream(baos, object);
      return baos.toString(ENCODING);
    } finally {
      IOUtils.closeQuietly(baos);
    }
  }

  /**
   * Converts Any object to JSON stream.
   * 
   * @param stream
   *          output stream
   * @param object
   *          input object
   * @throws IOException
   *           in case of conversion error
   */
  public void any2JsonStream(final OutputStream stream, final Any object) throws IOException {
    final IpcStreamWriter writer = _jsonFactory.newStreamWriter(stream);
    try {
      any2Stream(writer, object);
    } finally {
      writer.closeWithoutStream(); // do not close underlying stream
    }
  }

  /**
   * Converts Any object to IPC stream.
   * 
   * @param writer
   *          an IPC writer
   * @param object
   *          input object
   * @throws IOException
   *           in case of conversion error
   */
  public void any2Stream(final IpcStreamWriter writer, final Any object) throws IOException {
    writer.writeObjectStart();
    writeAny(writer, object);
    writer.writeObjectEnd();
  }

  /**
   * Converts record object to stream.
   * 
   * @param writer
   *          an ipc stream writer (bon/json)
   * @param record
   *          input record
   * @throws IOException
   *           in case of conversion error
   */
  public void record2Stream(final IpcStreamWriter writer, final Record record) throws IOException {
    any2Stream(writer, record.getMetadata());
  }

  /**
   * read Map object from stream.
   * 
   * @param reader
   *          IPC stream
   * @return Map object
   * @throws IOException
   *           read error
   */
  private AnyMap readMap(final IpcStreamReader reader) throws IOException {
    final AnyMap map = _dataFactory.createAnyMap();
    IpcToken token;
    while ((token = reader.nextToken()) != IpcToken.MAPPING_END) {
      if (token != IpcToken.SCALAR_STRING) { // expect mapping key
        throw new IllegalStateException("Expected SCALAR_STRING Token; Token = " + token);
      }
      final String key = reader.currentStringValue();
      map.put(key, readAny(reader, reader.nextToken()));
    }
    return map;
  }

  /**
   * read a sequence object from the IPC stream. The reader must be positioned at the SEQUENCE_START token that starts
   * this sequence.
   * 
   * @param reader
   *          IPC reader
   * @return AnySeq object representing a sequence.
   * @throws IOException
   *           read error.
   */
  private AnySeq readSeq(final IpcStreamReader reader) throws IOException {
    final AnySeq anySeq = _dataFactory.createAnySeq();
    IpcToken token = null;
    while ((token = reader.nextToken()) != IpcToken.SEQUENCE_END) {
      anySeq.add(readAny(reader, token));
    }
    return anySeq;
  }

  /**
   * Reads a single value.
   * 
   * @param reader
   *          the IpcStreamReader
   * @param token
   *          the current IpcToken
   * @return a Value object
   * @throws IOException
   *           if any error occurs
   */
  private Value readValue(final IpcStreamReader reader, final IpcToken token) throws IOException {
    Value value = null;
    switch (token) {
      case SCALAR_BOOL:
        value = _dataFactory.createBooleanValue(reader.currentBoolValue());
        break;
      case SCALAR_DOUBLE:
        value = _dataFactory.createDoubleValue(reader.currentDoubleValue());
        break;
      case SCALAR_INT:
        value = _dataFactory.createLongValue(reader.currentLongValue());
        break;
      case SCALAR_STRING:
      default:
        value = _dataFactory.createStringValue(reader.currentStringValue());
    }
    return value;
  }

  /**
   * read Any object from Ipc stream.
   * 
   * @param reader
   *          reader
   * @param token
   *          current token
   * @return parsed Any
   * @throws IOException
   *           if any error occurs.
   */
  private Any readAny(final IpcStreamReader reader, final IpcToken token) throws IOException {
    Any any = null;
    switch (token) {
      case MAPPING_START:
        any = readMap(reader);
        break;
      case SEQUENCE_START:
        any = readSeq(reader);
        break;
      default:
        any = readValue(reader, token);
        break;
    }
    return any;
  }

  /**
   * write AnySeq object to the IPC stream.
   * 
   * @param writer
   *          IPC stream, the attribute name has already been written.
   * @param seq
   *          the sequence to write
   * @throws IOException
   *           write error
   */
  private void writeSeq(final IpcStreamWriter writer, final AnySeq seq) throws IOException {
    writer.writeSequenceStart();
    final Iterator<Any> seqElements = seq.iterator();
    while (seqElements.hasNext()) {
      final Any any = seqElements.next();
      writeAny(writer, any);
    }
    writer.writeSequenceEnd();
  }

  /**
   * write AnyMap object to the IPC stream.
   * 
   * @param writer
   *          IPC stream
   * @param object
   *          AnyMap object to write.
   * @throws IOException
   *           write error
   */
  private void writeMap(final IpcStreamWriter writer, final AnyMap object) throws IOException {
    if (object != null) {
      writer.writeMappingStart();
      if (!object.isEmpty()) {
        final Iterator<String> childKeys = object.keySet().iterator();
        while (childKeys.hasNext()) {
          final String childKey = childKeys.next();
          writer.writeMappingKey(childKey);
          final Any any = object.get(childKey);
          writeAny(writer, any);
        }
      }
      writer.writeMappingEnd();
    }
  }

  /**
   * Writes a Value to the IPC stream.
   * 
   * @param writer
   *          the IpcStreamWriter
   * @param value
   *          the value to write
   * @throws IOException
   *           if any error occurs
   */
  private void writeValue(final IpcStreamWriter writer, final Value value) throws IOException {
    if (value != null) {
      if (value.isBoolean()) {
        writer.writeScalarBoolean(value.asBoolean());
      } else if (value.isDate()) {
        // DATE is not yet supported Ipc, use String in the meantime
        writer.writeScalarString(_formatHelper.formatDate(value.asDate()));
      } else if (value.isDateTime()) {
        // DATETIME is not yet supported by Ipc, use String in the meantime
        writer.writeScalarString(_formatHelper.formatDateTime(value.asDateTime()));
      } else if (value.isLong()) {
        writer.writeScalarLong(value.asLong());
      } else if (value.isDouble()) {
        writer.writeScalarDouble(value.asDouble());
      } else if (value.isString()) {
        writer.writeScalarString(value.asString());
      } else {
        writer.writeScalarString(value.asString());
      } // switch
    } // if
  }

  /**
   * Writes a object to the IPC stream.
   * 
   * @param writer
   *          the IpcStreamWriter
   * @param object
   *          the object to write
   * @throws IOException
   *           if any error occurs
   */
  private void writeAny(final IpcStreamWriter writer, final Any object) throws IOException {
    if (object != null) {
      if (object.isMap()) {
        writeMap(writer, (AnyMap) object);
      } else if (object.isSeq()) {
        writeSeq(writer, (AnySeq) object);
      } else if (object.isValue()) {
        writeValue(writer, (Value) object);
      }
    }
  }
}
