/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.xml;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.XMLStreamWriter;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.datamodel.Record;
import org.w3c.dom.Document;

/**
 * The Class XmlSerializationUtils.
 */
public final class XmlSerializationUtils {
  /**
   * The RecordParser.
   */
  private static DOMRecordReader s_recordParser;

  /**
   * StAX writer factory.
   */
  private static XMLOutputFactory s_staxWriterFactory;

  /**
   * StAX reader factory.
   */
  private static XMLInputFactory s_staxReaderFactory;

  /**
   * StAX record writer.
   */
  private static StaxRecordWriter s_recordWriter;

  /**
   * StAX Record reader.
   */
  private static StaxRecordReader s_recordReader;

  /**
   * prevents instantiating of new datamodel serialization utils.
   */
  private XmlSerializationUtils() {

  }

  /**
   * Serializes a Record into a String. It does NOT serialize Attachment values, only their names !
   * 
   * @param record
   *          the record
   * 
   * @return the string
   */
  public static String serialize2string(final Record record) {
    if (record == null) {
      return null;
    }
    try {
      final ByteArrayOutputStream out = serialize2stream(record);
      return out.toString("utf-8");
    } catch (final Exception e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Serializes a Record into a byte[]. The serialized record does contain Attachment values!
   * 
   * @param record
   *          the record
   * 
   * @return the byte[]
   */
  public static byte[] serialize2byteArray(final Record record) {
    if (record == null) {
      return null;
    }
    try {
      // create a record wrapper with the record bytes
      final RecordByteWrapper wrapper = new RecordByteWrapper(serialize2stream(record).toByteArray());

      // set attachment values in wrapper
      for (final Iterator<String> attachmentNames = record.getAttachmentNames(); attachmentNames.hasNext();) {
        final String attachmentName = attachmentNames.next();
        wrapper.getAttachments().put(attachmentName, record.getAttachment(attachmentName));
      }
      final ByteArrayOutputStream bos = new ByteArrayOutputStream();
      ObjectOutputStream out = null;
      try {
        out = new ObjectOutputStream(bos);
        out.writeObject(wrapper);
      } catch (final IOException e) {
        throw new RuntimeException(e);
      } finally {
        IOUtils.closeQuietly(out);
        IOUtils.closeQuietly(bos);
      }

      // return the wrapper as byte[]
      return bos.toByteArray();
    } catch (final Exception e) {
      throw new RuntimeException(e);
    }
  }

  /**
   * Serializes a Record into a ByteArrayOutputStream. It does NOT serialize Attachment values, only their names !
   * 
   * @param record
   *          the record
   * @return the ByteArrayOutputStream
   */
  public static ByteArrayOutputStream serialize2stream(final Record record) {
    if (record == null) {
      return null;
    }

    final ByteArrayOutputStream out = new ByteArrayOutputStream();
    XMLStreamWriter writer = null;
    try {
      writer = getStaxWriterFactory().createXMLStreamWriter(out, "utf-8");
      writer.writeStartDocument("utf-8", "1.1");
      getRecordWriter().writeRecord(writer, record);
      writer.writeEndDocument();
    } catch (final Exception e) {
      throw new RuntimeException(e);
    } catch (final Throwable t) {
      throw new RuntimeException(t);
    } finally {
      if (writer != null) {
        try {
          writer.close();
        } catch (final XMLStreamException e) {
          ; // nothing to do
        }
      } // if
      if (out != null) {
        IOUtils.closeQuietly(out);
      }
    } // finally
    return out;
  }

  /**
   * De-serialize a serialized record (byte[]) to a record. If the serialized Record contained Attachments, the
   * deserialized record also contains these attachments as byte[].
   * 
   * @param byteArray
   *          the byte array
   * 
   * @return the record
   * 
   * @throws DeserializationException
   *           the datamodel deserialization exception
   */
  public static Record deserialize(final byte[] byteArray) throws DeserializationException {
    final ByteArrayInputStream bis = new ByteArrayInputStream(byteArray);
    ObjectInputStream wrapperInputStream = null;
    ByteArrayInputStream recordInputStream = new ByteArrayInputStream(byteArray);
    try {
      // deserialize record wrapper
      RecordByteWrapper wrapper = null;
      try {
        wrapperInputStream = new ObjectInputStream(bis);
        wrapper = (RecordByteWrapper) wrapperInputStream.readObject();
        recordInputStream = wrapper.getRecordAsStream();
      } catch (final Exception e) {
        throw new DeserializationException(e);
      }

      // parse record from stream
      final XMLStreamReader reader = getStaxReaderFactory().createXMLStreamReader(recordInputStream);
      reader.nextTag(); // to Id tag.
      final Record record = getRecordReader().readRecord(reader);

      // append attachments to record
      if (wrapper.getAttachments() != null && !wrapper.getAttachments().isEmpty()) {
        for (final String attachmentName : wrapper.getAttachments().keySet()) {
          record.setAttachment(attachmentName, wrapper.getAttachments().get(attachmentName));
        } // for
      } // if
      return record;
    } catch (final XMLStreamException e) {
      throw new DeserializationException(e);
    } finally {
      IOUtils.closeQuietly(bis);
      IOUtils.closeQuietly(wrapperInputStream);
      IOUtils.closeQuietly(recordInputStream);
    }
  }

  /**
   * Deserialize a record from an xmlString. The record does not contain attachment values, only their names.
   * 
   * @param xmlString
   *          the xml string
   * 
   * @return the record
   * 
   * @throws DeserializationException
   *           the datamodel deserialization exception
   */
  public static Record deserialize(final String xmlString) throws DeserializationException {
    try {
      return deserialize(xmlString.getBytes("utf-8"));
    } catch (final UnsupportedEncodingException e) {
      throw new DeserializationException(e);
    }
  }

  /**
   * Deserialize a record from a Document. The record does not contain attachment values, only their names.
   * 
   * @param document
   *          the document
   * 
   * @return the record
   * 
   * @throws DeserializationException
   *           the datamodel deserialization exception
   */
  public static Record deserialize(final Document document) throws DeserializationException {
    try {
      if (document == null || document.getDocumentElement() == null) {
        throw new DeserializationException("No XML document found");
      }
      return getRecordParser().parseRecordFrom(document.getDocumentElement());
    } catch (final Exception e) {
      throw new DeserializationException(e);
    }
  }

  /**
   * Get the RecordParser.
   * 
   * @return the RecordParser
   */
  public static DOMRecordReader getRecordParser() {
    if (s_recordParser == null) {
      s_recordParser = new DOMRecordReader();
    }
    return s_recordParser;
  }

  /**
   * Get the XMLOutputFactory.
   * 
   * @return the XMLOutputFactory
   */
  public static XMLOutputFactory getStaxWriterFactory() {
    if (s_staxWriterFactory == null) {
      s_staxWriterFactory = XMLOutputFactory.newInstance();
    }
    return s_staxWriterFactory;
  }

  /**
   * Get the XMLInputFactory.
   * 
   * @return the XMLInputFactory
   */
  public static XMLInputFactory getStaxReaderFactory() {
    if (s_staxReaderFactory == null) {
      s_staxReaderFactory = XMLInputFactory.newInstance();
    }
    return s_staxReaderFactory;
  }

  /**
   * Get the RecordWriter.
   * 
   * @return the RecordWriter
   */
  public static StaxRecordWriter getRecordWriter() {
    if (s_recordWriter == null) {
      s_recordWriter = new StaxRecordWriter(true);
    }
    return s_recordWriter;
  }

  /**
   * Get the RecordReader.
   * 
   * @return the RecordReader
   */
  public static StaxRecordReader getRecordReader() {
    if (s_recordReader == null) {
      s_recordReader = new StaxRecordReader();
    }
    return s_recordReader;
  }

  /**
   * The Class RecordByteWrapper.
   */
  private static class RecordByteWrapper implements Serializable {

    /**
     * The Constant serialVersionUID.
     */
    private static final long serialVersionUID = -6375342925771895197L;

    /**
     * The _record bytes.
     */
    private final byte[] _recordBytes;

    /**
     * The _attachments.
     */
    private final Map<String, byte[]> _attachments = new HashMap<String, byte[]>();

    /**
     * Instantiates a new record byte wrapper.
     * 
     * @param recordBytes
     *          the record bytes
     */
    public RecordByteWrapper(final byte[] recordBytes) {
      _recordBytes = recordBytes;
    }

    /**
     * Gets the record input stream.
     * 
     * @return the record input stream
     */
    public ByteArrayInputStream getRecordAsStream() {
      return new ByteArrayInputStream(_recordBytes);
    }

    /**
     * Gets the attachments.
     * 
     * @return the attachments
     */
    public Map<String, byte[]> getAttachments() {
      return _attachments;
    }

  }
}
