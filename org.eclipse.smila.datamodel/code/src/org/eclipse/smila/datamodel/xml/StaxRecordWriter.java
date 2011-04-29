/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation. Drazen Cindric (Attensity
 * Europe GmbH) - data model improvements
 *******************************************************************************/

package org.eclipse.smila.datamodel.xml;

import java.util.Iterator;
import java.util.Map.Entry;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamWriter;

import org.apache.commons.lang.StringUtils;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;

/**
 * StAX based Id writer. Should give better performance than the DOM based IdBuilder.
 * 
 * @author jschumacher
 * 
 */
public class StaxRecordWriter {

  /**
   * if true "print pretty", i.e. add newlines after each tag.
   */
  private final boolean _printPretty;

  /**
   * create default instance.
   */
  public StaxRecordWriter() {
    this(false);
  }

  /**
   * @param printPretty
   *          set to true to add newlines after each element tag.
   */
  public StaxRecordWriter(final boolean printPretty) {
    _printPretty = printPretty;

  }

  /**
   * Append a rec:Record element describing the given record to the given XML stream. The element contains a namespace
   * declaration for xmlns:rec.
   * 
   * @param staxWriter
   *          target XML stream
   * @param record
   *          the record to write
   * @throws XMLStreamException
   *           StAX error
   */
  public void writeRecord(final XMLStreamWriter staxWriter, final Record record) throws XMLStreamException {
    writeRecord(staxWriter, record, true);
  }

  /**
   * Append a rec:RecordList element describing the given record list to the given XML stream. The element contains a
   * namespace declaration for xmlns:rec.
   * 
   * @param staxWriter
   *          target XML stream
   * @param records
   *          the record list to transform.
   * @throws XMLStreamException
   *           StAX error
   * 
   */
  public void writeRecordList(final XMLStreamWriter staxWriter, final Iterable<Record> records)
    throws XMLStreamException {
    staxWriter.setDefaultNamespace(XmlConstants.NAMESPACE_RECORD);
    writeStartElement(staxWriter, XmlConstants.TAG_RECORDLIST);
    staxWriter.writeDefaultNamespace(XmlConstants.NAMESPACE_RECORD);
    newline(staxWriter);
    for (final Record record : records) {
      writeRecord(staxWriter, record, false);
    }
    writeEndElement(staxWriter);
  }

  /**
   * write a record to an XML stream.
   * 
   * @param staxWriter
   *          target XML stream
   * @param record
   *          the record to write
   * @param addNamespace
   *          add xmlns attribute
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeRecord(final XMLStreamWriter staxWriter, final Record record, final boolean addNamespace)
    throws XMLStreamException {
    staxWriter.setDefaultNamespace(XmlConstants.NAMESPACE_RECORD);
    newline(staxWriter);
    writeStartElement(staxWriter, XmlConstants.TAG_RECORD);
    if (addNamespace) {
      staxWriter.writeDefaultNamespace(XmlConstants.NAMESPACE_RECORD);
    }
    staxWriter.writeAttribute(XmlConstants.ATTRIBUTE_VERSION, XmlConstants.SCHEMA_VERSION_RECORD);
    newline(staxWriter);
    if (record.getId() != null) {
      staxWriter.setDefaultNamespace(XmlConstants.NAMESPACE_RECORD);
    }

    if (record.getMetadata() != null) {
      writeMetadata(staxWriter, record.getMetadata());
    }
    if (record.hasAttachments()) {
      final Iterator<String> attachmentNames = record.getAttachmentNames();
      while (attachmentNames.hasNext()) {
        final String attachmentName = attachmentNames.next();
        writeTextElement(staxWriter, XmlConstants.TAG_ATTACHMENT, attachmentName);
      }
    }
    writeEndElement(staxWriter);
  }

  /**
   * append elements to stream to describe the specified metadata object.
   * 
   * @param staxWriter
   *          target XML stream
   * @param metaData
   *          the metadata object to describe.
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeMetadata(final XMLStreamWriter staxWriter, final AnyMap metaData) throws XMLStreamException {
    if (!metaData.isEmpty()) {
      for (final Entry<String, Any> entry : metaData.entrySet()) {
        final String key = entry.getKey();
        final Any any = entry.getValue();
        if (any.isValue()) {
          writeValue(staxWriter, key, (Value) any);
        } else if (any.isSeq()) {
          writeSeq(staxWriter, key, (AnySeq) any);
        } else if (any.isMap()) {
          writeMap(staxWriter, key, (AnyMap) any);
        }
      }
    }
  }

  /**
   * append {@link Value} to stream.
   * 
   * @param staxWriter
   *          target XML stream
   * @param key
   *          the key
   * @param value
   *          the {@link Value} object.
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeValue(final XMLStreamWriter staxWriter, final String key, final Value value)
    throws XMLStreamException {
    writeStartElement(staxWriter, XmlConstants.TAG_VAL);
    if (key != null) {
      staxWriter.writeAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    final ValueType valueType = value.getValueType();
    if (valueType != ValueType.STRING) {
      staxWriter.writeAttribute(XmlConstants.ATTRIBUTE_TYPE, valueType.name().toLowerCase());
    }
    writeText(staxWriter, value.asString());
    writeEndElement(staxWriter);
  }

  /**
   * append {@link AnySeq} to stream.
   * 
   * @param staxWriter
   *          target XML stream
   * @param key
   *          the key
   * @param anySeq
   *          the {@link AnySeq} object.
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeSeq(final XMLStreamWriter staxWriter, final String key, final AnySeq anySeq)
    throws XMLStreamException {
    writeStartElement(staxWriter, XmlConstants.TAG_SEQ);
    if (key != null) {
      staxWriter.writeAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    if (!anySeq.isEmpty()) {
      newline(staxWriter);
      final Iterator<Any> anyIterator = anySeq.iterator();
      while (anyIterator.hasNext()) {
        final Any any = anyIterator.next();
        if (any.isValue()) {
          writeValue(staxWriter, null, (Value) any);
        } else if (any.isSeq()) {
          writeSeq(staxWriter, null, (AnySeq) any);
        } else if (any.isMap()) {
          writeMap(staxWriter, null, (AnyMap) any);
        }
      }
    }
    writeEndElement(staxWriter);
  }

  /**
   * append {@link AnyMap} to stream.
   * 
   * @param staxWriter
   *          target XML stream
   * @param key
   *          the key
   * @param anyMap
   *          the {@link AnyMap} object.
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeMap(final XMLStreamWriter staxWriter, final String key, final AnyMap anyMap)
    throws XMLStreamException {
    writeStartElement(staxWriter, XmlConstants.TAG_MAP);
    if (key != null) {
      staxWriter.writeAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    if (!anyMap.isEmpty()) {
      newline(staxWriter);
      for (final Entry<String, Any> entry : anyMap.entrySet()) {
        final String entryKey = entry.getKey();
        final Any any = entry.getValue();
        if (any.isValue()) {
          writeValue(staxWriter, entryKey, (Value) any);
        } else if (any.isSeq()) {
          writeSeq(staxWriter, entryKey, (AnySeq) any);
        } else if (any.isMap()) {
          writeMap(staxWriter, entryKey, (AnyMap) any);
        }
      }
    }
    writeEndElement(staxWriter);
  }

  /**
   * write a text element with given name and value.
   * 
   * @param staxWriter
   *          target XML stream
   * @param tagName
   *          tag name
   * @param value
   *          content characters
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeTextElement(final XMLStreamWriter staxWriter, final String tagName, final String value)
    throws XMLStreamException {
    writeStartElement(staxWriter, tagName);
    writeText(staxWriter, value);
    writeEndElement(staxWriter);
  }

  /**
   * write a text content.
   * 
   * @param staxWriter
   *          target XML stream
   * @param value
   *          content characters
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeText(final XMLStreamWriter staxWriter, final String value) throws XMLStreamException {
    staxWriter.writeCharacters(cleanText(value));
  }

  /**
   * start an element with the tag name and the default namespace.
   * 
   * @param staxWriter
   *          target XML stream
   * @param tagName
   *          tag name
   * @throws XMLStreamException
   *           StAX error
   */
  private void writeStartElement(final XMLStreamWriter staxWriter, final String tagName) throws XMLStreamException {
    staxWriter.writeStartElement(XmlConstants.NAMESPACE_RECORD, tagName);
  }

  /**
   * end the current element, optionally append a newline.
   * 
   * @param staxWriter
   *          target XML stream
   * @throws XMLStreamException
   *           StAX error.
   */
  private void writeEndElement(final XMLStreamWriter staxWriter) throws XMLStreamException {
    staxWriter.writeEndElement();
    newline(staxWriter);
  }

  /**
   * append a newline text if printPretty is activated.
   * 
   * @param staxWriter
   *          target XML stream
   * @throws XMLStreamException
   *           StAX error
   */
  private void newline(final XMLStreamWriter staxWriter) throws XMLStreamException {
    if (_printPretty) {
      staxWriter.writeCharacters("\n");
    }
  }

  /**
   * @param text
   *          input text (XML)
   * @return XML text cleaned from characters forbidden in XML 1.1 specification
   */
  protected static String cleanText(final String text) {
    // (Andreas Weber) from XML 1.1 spec:
    // Due to potential problems with APIs, #x0 is still forbidden both directly and as a character reference.
    // (jschumacher) this uses StringUtils.replace and not String.replace(char, char) because the latter always
    // creates a new string instance, while the first return the input string instance as result, if the string
    // to be replaced is not contained (at least in commons.lang 2.4). It's better to safe unnecessary instance
    // creations in the most cases (no replacement at all) than to have a bit faster replacement method in very
    // rare cases.
    return StringUtils.replace(text, "\u0000", " ");
  }

}
