/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification 
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.xml;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Utility class for creating SMILA records from DOM elements.
 * 
 * @author jschumacher
 * 
 */
public class DOMRecordReader {

  /** Factory for creating the Record and Any objects. */
  private final DataFactory _dataFactory;

  /**
   * Create parser using default factories for records and IDs.
   */
  public DOMRecordReader() {
    _dataFactory = DataFactoryCreator.createDefaultFactory();
  }

  /**
   * Create parser with custom data factoriy.
   * 
   * @param dataFactory
   *          custom data factory.
   */
  public DOMRecordReader(final DataFactory dataFactory) {
    _dataFactory = dataFactory;
  }

  /**
   * find the first child Record element the specified parent element and create a record from it.
   * 
   * @param parentElement
   *          parent element of rec:Record
   * @return the record described by the first rec:Record element under the parent.
   */
  public Record parseRecordIn(final Element parentElement) {
    final NodeList children = parentElement.getChildNodes();
    if (children != null && children.getLength() > 0) {
      for (int i = 0; i < children.getLength(); i++) {
        final Node childNode = children.item(i);
        if (childNode instanceof Element) {
          final Element recordElement = (Element) childNode;
          if (XmlConstants.TAG_RECORD.equals(recordElement.getLocalName())) {
            return parseRecordFrom(recordElement);
          }
        }
      }
    }
    return null;
  }

  /**
   * Find all child Record elements that are child of this specified element and parse the record it describes. If
   * no record element is found, null is returned.
   * 
   * @param parentElement
   *          the element under which to search for recordss
   * @return all records found under the parentElement.
   */
  public List<Record> parseRecordsIn(final Element parentElement) {
    final NodeList children = parentElement.getChildNodes();
    final List<Record> records = new ArrayList<Record>();
    if (children != null && children.getLength() > 0) {
      for (int i = 0; i < children.getLength(); i++) {
        final Node childNode = children.item(i);
        if (childNode instanceof Element) {
          final Element recordElement = (Element) childNode;
          if (XmlConstants.TAG_RECORD.equals(recordElement.getLocalName())) {
            records.add(parseRecordFrom(recordElement));
          }
        }
      }
    }
    return records;
  }

  /**
   * create a record from a Record element.
   * 
   * @param recordElement
   *          a Record element.
   * @return the record described by this element.
   */
  public Record parseRecordFrom(final Element recordElement) {
    final Record record = _dataFactory.createRecord();
    record.getMetadata().putAll(parseMap(recordElement));
    parseAttachments(record, recordElement);
    return record;
  }

  /**
   * parse AnyMap from given Map element and return it.
   * 
   * @param mapElement
   *          Map element to parse.
   * @return parsed AnyMap
   */
  public AnyMap parseMap(final Element mapElement) {
    final AnyMap map = _dataFactory.createAnyMap();
    final NodeList children = mapElement.getChildNodes();
    if (children != null && children.getLength() > 0) {
      for (int i = 0; i < children.getLength(); i++) {
        final Node childNode = children.item(i);
        if (childNode instanceof Element) {
          final Element childElement = (Element) childNode;
          final String childKey = childElement.getAttribute(XmlConstants.ATTRIBUTE_KEY);
          if (XmlConstants.TAG_MAP.equals(childElement.getLocalName())) {
            map.put(childKey, parseMap(childElement));
          } else if (XmlConstants.TAG_SEQ.equals(childElement.getLocalName())) {
            map.put(childKey, parseSeq(childElement));
          } else if (XmlConstants.TAG_VAL.equals(childElement.getLocalName())) {
            map.put(childKey, parseValue(childElement));
          }
        }
      }
    }
    return map;
  }

  /**
   * parse AnySeq from given Seq element and attach to given metadata any.
   * 
   * @param seqElement
   *          Seq element to parse.
   * @return parsed AnySeq
   */
  public AnySeq parseSeq(final Element seqElement) {
    final AnySeq seq = _dataFactory.createAnySeq();
    final NodeList children = seqElement.getChildNodes();
    if (children != null && children.getLength() > 0) {
      for (int i = 0; i < children.getLength(); i++) {
        final Node childNode = children.item(i);
        if (childNode instanceof Element) {
          final Element childElement = (Element) childNode;
          if (XmlConstants.TAG_MAP.equals(childElement.getLocalName())) {
            seq.add(parseMap(childElement));
          } else if (XmlConstants.TAG_SEQ.equals(childElement.getLocalName())) {
            seq.add(parseSeq(childElement));
          } else if (XmlConstants.TAG_VAL.equals(childElement.getLocalName())) {
            seq.add(parseValue(childElement));
          }
        }
      }
    }
    return seq;
  }

  /**
   * parse a value from the given Val element.
   * 
   * @param valueElement
   *          Val element
   * @return the value parsed from this element
   */
  public Value parseValue(final Element valueElement) {
    Value value;
    final String dataType = valueElement.getAttribute(XmlConstants.ATTRIBUTE_TYPE);
    final String stringValue = valueElement.getTextContent();
    if (dataType != null && !dataType.isEmpty()) {
      try {
        value = _dataFactory.parseFromString(stringValue, dataType);
      } catch (final InvalidValueTypeException ex) {
        // wrong format -> forget about the datatype, use just string.      
        value = _dataFactory.createStringValue(stringValue);
      }
    } else {
      // default: create string value
      value = _dataFactory.createStringValue(stringValue);
    }
    return value;
  }

  /**
   * parse attachment elements.
   * 
   * @param record
   *          record to attach to
   * @param recordElement
   *          element ro parse from.
   */
  private void parseAttachments(final Record record, final Element recordElement) {
    final NodeList attachmentElements =
      recordElement.getElementsByTagNameNS(XmlConstants.NAMESPACE_RECORD, XmlConstants.TAG_ATTACHMENT);
    if (attachmentElements != null && attachmentElements.getLength() > 0) {
      for (int i = 0; i < attachmentElements.getLength(); i++) {
        final Element attachmentElement = (Element) attachmentElements.item(i);
        final String attachmentName = attachmentElement.getTextContent();
        record.setAttachment(attachmentName, null);
      }
    }
  }

}
