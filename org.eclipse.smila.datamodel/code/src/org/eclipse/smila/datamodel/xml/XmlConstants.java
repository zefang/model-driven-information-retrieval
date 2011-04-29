/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Drazen Cindric (Attensity Europe GmbH) - initial implementation
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.xml;

import javax.xml.XMLConstants;

/**
 * Helper for tag names and attribute names, used during dom and stax parsing.
 * 
 * @author cind01
 * 
 */
public abstract class XmlConstants {

  /** SMILA Record XML namespace URI, "http://www.eclipse.org/smila/record". */
  public static final String NAMESPACE_RECORD = "http://www.eclipse.org/smila/record";

  /** attribute "xmlns:rec" for specification if SMILA Id XML namespace URI. */
  public static final String ATTRIBUTE_XMLNSREC = XMLConstants.XMLNS_ATTRIBUTE;

  /** version of Record XMLs created by this builder: "2.0". */
  public static final String SCHEMA_VERSION_RECORD = "2.0";

  /** local name of Record element. */
  public static final String TAG_RECORD = "Record";

  /** local name of Record List element. */
  public static final String TAG_RECORDLIST = "RecordList";

  /** local name of Map element. */
  public static final String TAG_MAP = "Map";

  /** local name of Sequence element. */
  public static final String TAG_SEQ = "Seq";

  /** local name of Value element. */
  public static final String TAG_VAL = "Val";

  /** local name of Attachment element. */
  public static final String TAG_ATTACHMENT = "Attachment";

  /** attribute name of version attribute. */
  public static final String ATTRIBUTE_VERSION = "version";

  /** attribute name of key attribute. */
  public static final String ATTRIBUTE_KEY = "key";

  /** attribute name of key attribute. */
  public static final String ATTRIBUTE_TYPE = "type";

  /**
   * Private constructor.
   */
  private XmlConstants() {

  }
}
