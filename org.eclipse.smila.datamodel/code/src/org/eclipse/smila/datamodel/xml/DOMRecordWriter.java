/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation Andreas Weber (Attensity Europe
 * GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.xml;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

import javax.xml.XMLConstants;

import org.apache.commons.lang.StringUtils;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * A utility class to create DOM representations of SMILA records.
 * 
 * @author jschumacher
 */
public class DOMRecordWriter {

  /** switch to true to add newlines for better readability, but poorer performance. */
  private final boolean _printPretty;

  /**
   * create new RecordBuilder.
   */
  public DOMRecordWriter() {
    this(false);
  }

  /**
   * create new RecordBuilder with custom printPretty flag.
   * 
   * @param printPretty
   *          printPretty flag
   */
  public DOMRecordWriter(final boolean printPretty) {
    _printPretty = printPretty;
  }

  /**
   * Append a Record element describing the given record to the given parent element. The record element is appended as
   * a new last child to the parent element.
   * 
   * @param parent
   *          the parent element to append to.
   * @param record
   *          the record to transform.
   * 
   * @return the appended element
   */
  public Element appendRecord(final Element parent, final Record record) {
    final Document factory = parent.getOwnerDocument();
    newline(factory, parent);
    final Element recordElement = buildRecord(factory, record);
    recordElement.setAttribute(XmlConstants.ATTRIBUTE_XMLNSREC, XmlConstants.NAMESPACE_RECORD);
    parent.appendChild(recordElement);
    newline(factory, parent);
    return recordElement;

  }

  /**
   * Append a RecordList element describing the given record list to the given parent element. The record list element
   * is appended as a new last child to the parent element.
   * 
   * @param parent
   *          the parent element to append to.
   * @param records
   *          the record list to transform.
   * 
   * @return the appended element
   */
  public Element appendRecordList(final Element parent, final Iterable<Record> records) {
    final Document factory = parent.getOwnerDocument();
    newline(factory, parent);
    final Element recordListElement = appendElement(factory, parent, XmlConstants.TAG_RECORDLIST);
    for (final Record record : records) {
      final Element recordElement = buildRecord(factory, record);
      recordListElement.appendChild(recordElement);
      newline(factory, parent);
    }
    return recordListElement;
  }

  /**
   * Append a RecordList element describing the given record list to the given parent element. The record list element
   * is appended as a new last child to the parent element.
   * 
   * @param parent
   *          the parent element to append to.
   * @param records
   *          the record list to transform.
   * 
   * @return the appended element
   */
  public Element appendRecordList(final Element parent, final Record[] records) {
    final Document factory = parent.getOwnerDocument();
    newline(factory, parent);
    final Element recordListElement = appendElement(factory, parent, XmlConstants.TAG_RECORDLIST);
    for (final Record record : records) {
      final Element recordElement = buildRecord(factory, record);
      recordListElement.appendChild(recordElement);
      newline(factory, parent);
    }
    return recordListElement;
  }

  /**
   * build Record element.
   * 
   * @param factory
   *          factory for creating DOM elements
   * @param record
   *          the record to transform
   * 
   * @return the created element.
   */
  public Element buildRecord(final Document factory, final Record record) {
    final Element recordElement = factory.createElementNS(XmlConstants.NAMESPACE_RECORD, XmlConstants.TAG_RECORD);
    recordElement.setAttribute(XmlConstants.ATTRIBUTE_VERSION, XmlConstants.SCHEMA_VERSION_RECORD);

    newline(factory, recordElement);

    if (record.getMetadata() != null) {
      final Set<Entry<String, Any>> entries = record.getMetadata().entrySet();
      for (final Entry<String, Any> entry : entries) {
        if (entry.getValue().isMap()) {
          appendMap(factory, recordElement, ((AnyMap) entry.getValue()), entry.getKey());
        } else if (entry.getValue().isSeq()) {
          appendSeq(factory, recordElement, ((AnySeq) entry.getValue()), entry.getKey());
        } else { // Value
          appendVal(factory, recordElement, ((Value) entry.getValue()), entry.getKey());
        }
      }
    }

    if (record.hasAttachments()) {
      final Iterator<String> attachmentNames = record.getAttachmentNames();
      while (attachmentNames.hasNext()) {
        final String attachmentName = attachmentNames.next();
        appendTextElement(factory, recordElement, XmlConstants.TAG_ATTACHMENT, attachmentName);
      }
    }

    return recordElement;
  }

  /**
   * Builds the record as document element.
   * 
   * @param factory
   *          the factory
   * @param record
   *          the record
   */
  public void buildRecordAsDocumentElement(final Document factory, final Record record) {
    final Element recordElement = buildRecord(factory, record);
    recordElement.setAttribute(XmlConstants.ATTRIBUTE_VERSION, XmlConstants.SCHEMA_VERSION_RECORD);
    recordElement.setAttributeNS(XMLConstants.XMLNS_ATTRIBUTE_NS_URI, XmlConstants.ATTRIBUTE_XMLNSREC,
      XmlConstants.NAMESPACE_RECORD);
    factory.appendChild(recordElement);
  }

  /**
   * append Map element.
   * 
   * @param factory
   *          factory for creating DOM elements.
   * @param parentElement
   *          the parent element to append to.
   * @param anyMap
   *          the AnyMap object to append as XML.
   * @param key
   *          a possible key, if we are within a map (maybe 'null')
   */
  private void appendMap(final Document factory, final Element parentElement, final AnyMap anyMap, final String key) {
    final Element attributeElement = appendElement(factory, parentElement, XmlConstants.TAG_MAP);
    if (key != null) {
      attributeElement.setAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    if (!anyMap.isEmpty()) {
      final Iterator<String> childKeys = anyMap.keySet().iterator();
      while (childKeys.hasNext()) {
        final String childKey = childKeys.next();
        final Any any = anyMap.get(childKey);
        if (any.isMap()) {
          appendMap(factory, attributeElement, ((AnyMap) any), childKey);
        } else if (any.isSeq()) {
          appendSeq(factory, attributeElement, ((AnySeq) any), childKey);
        } else { // Value
          appendVal(factory, attributeElement, ((Value) any), childKey);
        }
      }
    }
  }

  /**
   * append Seq element.
   * 
   * @param factory
   *          factory for creating DOM elements.
   * @param parentElement
   *          the parent element to append to.
   * @param anySeq
   *          the AnySeq object to append as XML.
   * @param key
   *          a possible key, if we are within a map (maybe 'null')
   */
  private void appendSeq(final Document factory, final Element parentElement, final AnySeq anySeq, final String key) {
    final Element attributeElement = appendElement(factory, parentElement, XmlConstants.TAG_SEQ);
    if (key != null) {
      attributeElement.setAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    if (!anySeq.isEmpty()) {
      final Iterator<Any> seqElements = anySeq.iterator();
      while (seqElements.hasNext()) {
        final Any any = seqElements.next();
        if (any.isMap()) {
          appendMap(factory, attributeElement, ((AnyMap) any), null);
        } else if (any.isSeq()) {
          appendSeq(factory, attributeElement, ((AnySeq) any), null);
        } else { // Value
          appendVal(factory, attributeElement, ((Value) any), null);
        }
      }
    }
  }

  /**
   * append Value to parent element.
   * 
   * @param factory
   *          factory for creating DOM elements.
   * @param parentElement
   *          the parent element to append to.
   * @param value
   *          the value to append
   * @param key
   *          a possible key, if we are within a map (maybe 'null')
   */
  private void appendVal(final Document factory, final Element parentElement, final Value value, final String key) {
    final Element valueElement = appendTextElement(factory, parentElement, XmlConstants.TAG_VAL, value.asString());
    if (key != null) {
      valueElement.setAttribute(XmlConstants.ATTRIBUTE_KEY, key);
    }
    // write no 'type' attribute for strings
    if (value.getValueType() != ValueType.STRING) {
      // LONG, DATE, ... -> type 'long', 'date'
      valueElement.setAttribute(XmlConstants.ATTRIBUTE_TYPE, value.getValueType().name().toLowerCase());
    }
  }

  /**
   * create an empty element and append it to the parent element.
   * 
   * @param factory
   *          factory for creating DOM elements.
   * @param parentElement
   *          element to append to
   * @param tag
   *          name of element
   * 
   * @return new element
   */
  private Element appendElement(final Document factory, final Element parentElement, final String tag) {
    final Element element = factory.createElementNS(XmlConstants.NAMESPACE_RECORD, tag);
    newline(factory, element);
    parentElement.appendChild(element);
    newline(factory, parentElement);
    return element;
  }

  /**
   * append an element containing a text node.
   * 
   * @param factory
   *          the DOM element factory to use
   * @param element
   *          the element to append to
   * @param name
   *          the qualified name of the new element
   * @param text
   *          the text content to add
   * 
   * @return the new element
   */
  private Element appendTextElement(final Document factory, final Element element, final String name,
    final String text) {
    final Element textElement = factory.createElementNS(XmlConstants.NAMESPACE_RECORD, name);
    textElement.appendChild(factory.createTextNode(cleanText(text)));
    element.appendChild(textElement);
    newline(factory, element);
    return textElement;
  }

  /**
   * append a newline text element if printPretty is activated.
   * 
   * @param factory
   *          factory to use.
   * @param element
   *          element to append to.
   */
  private void newline(final Document factory, final Element element) {
    if (_printPretty) {
      element.appendChild(factory.createTextNode("\n"));
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
