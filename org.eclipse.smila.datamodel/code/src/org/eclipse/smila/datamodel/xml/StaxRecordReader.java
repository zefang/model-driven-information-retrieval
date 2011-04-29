/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation.
 * Drazen Cindric (Attensity Europe GmbH) - data model improvements
 *******************************************************************************/

package org.eclipse.smila.datamodel.xml;

import java.util.ArrayList;
import java.util.List;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;

/**
 * StAX based Id reader. Should give better performance than the DOM based IdParser.
 * 
 * @author jschumacher
 * 
 */
public class StaxRecordReader {

  /**
   * my object factory.
   */
  private DataFactory _dataFactory;

  /**
   * create default instance.
   */
  public StaxRecordReader() {
    this(DataFactoryCreator.createDefaultFactory());
  }

  /**
   * @param dataFactory
   *          data factory to use.
   */
  public StaxRecordReader(final DataFactory dataFactory) {
    _dataFactory = dataFactory;
  }

  /**
   * read Record list from the XML stream. The stream must be currently at the RecordList start tag.
   * 
   * @param staxReader
   *          source XML stream
   * @return Record list read from stream or an empty list, if stream is not currently at a RecordList start tag.
   * @throws XMLStreamException
   *           StAX error.
   */
  public List<Record> readRecords(final XMLStreamReader staxReader) throws XMLStreamException {
    final List<Record> records = new ArrayList<Record>();
    if (isStartTag(staxReader, XmlConstants.TAG_RECORDLIST)) {
      staxReader.nextTag();
      while (isStartTag(staxReader, XmlConstants.TAG_RECORD)) {
        records.add(readRecord(staxReader));
        staxReader.nextTag();
      }
    }
    return records;
  }

  /**
   * read Record from the XML stream. The stream must be currently at the Record start tag.
   * 
   * @param staxReader
   *          source XML stream
   * @return Record read from stream or null, if stream is not currently at a Record start tag.
   * @throws XMLStreamException
   *           StAX error.
   */
  public Record readRecord(final XMLStreamReader staxReader) throws XMLStreamException {
    Record record = null;
    if (isStartTag(staxReader, XmlConstants.TAG_RECORD)) {
      record = _dataFactory.createRecord();
      staxReader.nextTag(); // go to next element (eventually Id)
      record.getMetadata().putAll(readMetadata(staxReader));
      readAttachments(staxReader, record);
    }
    return record;
  }

  /**
   * read MObject from the XML stream. The stream must be currently at the first attribute or annotation tag of the
   * MObject.
   * 
   * @param staxReader
   *          source XML stream
   * @return Record read from stream or null, if stream is not currently at a Record start tag.
   * @throws XMLStreamException
   *           StAX error.
   */
  private AnyMap readMetadata(final XMLStreamReader staxReader) throws XMLStreamException {
    final AnyMap metaData = _dataFactory.createAnyMap();
    while (isStartTag(staxReader, XmlConstants.TAG_VAL) || isStartTag(staxReader, XmlConstants.TAG_SEQ)
      || isStartTag(staxReader, XmlConstants.TAG_MAP)) {
      if (isStartTag(staxReader, XmlConstants.TAG_VAL)) {
        readValue(staxReader, metaData);
      } else if (isStartTag(staxReader, XmlConstants.TAG_SEQ)) {
        readSeq(staxReader, metaData);
      } else if (isStartTag(staxReader, XmlConstants.TAG_MAP)) {
        readMap(staxReader, metaData);
      }
      staxReader.nextTag();
    }
    return metaData;
  }

  /**
   * @param value
   *          The value
   * @param type
   *          The value type
   * @return Instance of {@link Value}
   * @throws XMLStreamException
   *           An exception if something went wrong
   */
  private Value readValue(final String value, final String type) throws XMLStreamException {
    return _dataFactory.parseFromString(value, type);
  }

  /**
   * Reads a {@link Value} and adds or puts it into the given {@link Any} object.
   * 
   * @param staxReader
   *          The reader
   * @param any
   *          The {@link Any} object
   * @throws XMLStreamException
   *           An exception if something went wrong
   */
  private void readValue(final XMLStreamReader staxReader, final Any any) throws XMLStreamException {
    final String key = staxReader.getAttributeValue(null, XmlConstants.ATTRIBUTE_KEY);
    final String valueType = staxReader.getAttributeValue(null, XmlConstants.ATTRIBUTE_TYPE);
    final String value = staxReader.getElementText();
    if (any.isMap() && key != null) {
      ((AnyMap) any).put(key, readValue(value, valueType));
    } else if (any.isSeq()) {
      ((AnySeq) any).add(readValue(value, valueType));
    }
  }

  /**
   * Reads an {@link AnySeq} and adds or puts it into the given {@link Any} object.
   * 
   * @param staxReader
   *          The reader
   * @param any
   *          The {@link Any} object
   * @throws XMLStreamException
   *           An exception if something went wrong
   */
  private void readSeq(final XMLStreamReader staxReader, final Any any) throws XMLStreamException {
    final String key = staxReader.getAttributeValue(null, XmlConstants.ATTRIBUTE_KEY);
    final AnySeq seq = _dataFactory.createAnySeq();
    staxReader.nextTag();
    while (isStartTag(staxReader, XmlConstants.TAG_VAL)) {
      readValue(staxReader, seq);
      staxReader.nextTag();
    }
    while (isStartTag(staxReader, XmlConstants.TAG_SEQ)) {
      readSeq(staxReader, seq);
      staxReader.nextTag();
    }
    while (isStartTag(staxReader, XmlConstants.TAG_MAP)) {
      readMap(staxReader, seq);
      staxReader.nextTag();
    }
    if (any.isMap() && key != null) {
      ((AnyMap) any).put(key, seq);
    } else if (any.isSeq()) {
      ((AnySeq) any).add(seq);
    }
  }

  /**
   * Reads an {@link AnyMap} and adds or puts it into the given {@link Any} object.
   * 
   * @param staxReader
   *          The reader
   * @param any
   *          The {@link Any} object
   * @throws XMLStreamException
   *           An exception if something went wrong
   */
  private void readMap(final XMLStreamReader staxReader, final Any any) throws XMLStreamException {
    final String key = staxReader.getAttributeValue(null, XmlConstants.ATTRIBUTE_KEY);
    final AnyMap map = _dataFactory.createAnyMap();
    staxReader.nextTag();
    while (isStartTag(staxReader, XmlConstants.TAG_VAL)) {
      readValue(staxReader, map);
      staxReader.nextTag();
    }
    while (isStartTag(staxReader, XmlConstants.TAG_SEQ)) {
      readSeq(staxReader, map);
      staxReader.nextTag();
    }
    while (isStartTag(staxReader, XmlConstants.TAG_MAP)) {
      readMap(staxReader, map);
      staxReader.nextTag();
    }
    if (any.isMap() && key != null) {
      ((AnyMap) any).put(key, map);
    } else if (any.isSeq()) {
      ((AnySeq) any).add(map);
    }
  }

  /**
   * read attachment names from the XML stream.
   * 
   * @param staxReader
   *          source XML stream param record Record to add the attachments to.
   * @param record
   *          record to add attachments too.
   * @throws XMLStreamException
   *           StAX error.
   */
  private void readAttachments(final XMLStreamReader staxReader, final Record record) throws XMLStreamException {
    while (isStartTag(staxReader, XmlConstants.TAG_ATTACHMENT)) {
      final String attachmentName = staxReader.getElementText();
      if (attachmentName != null && attachmentName.length() > 0) {
        record.setAttachment(attachmentName, null);
      }
      staxReader.nextTag();
    }
  }

  /**
   * 
   * @param staxReader
   *          source XML stream
   * @param tagName
   *          tag name
   * @return true if we are currently at a start tag with the specificied name
   */
  private boolean isStartTag(final XMLStreamReader staxReader, final String tagName) {
    return staxReader.isStartElement() && tagName.equals(staxReader.getLocalName());
  }

}
