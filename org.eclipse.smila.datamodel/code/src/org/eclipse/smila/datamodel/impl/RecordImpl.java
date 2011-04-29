/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH.  
 * All rights reserved. This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution, 
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.impl;

import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import org.eclipse.smila.datamodel.Any.ValueType;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;

/**
 * Default implementation of SMILA Records.
 * 
 * @author jschumacher
 * 
 */
public class RecordImpl implements Record, Serializable {

  /**
   * serializable, of course.
   */
  private static final long serialVersionUID = 1L;

  /**
   * metadata of record.
   */
  private final AnyMap _metadata = new AnyMapImpl();

  /**
   * attachments of record (used linked map to preserve order).
   */
  private final Map<String, byte[]> _attachments = new LinkedHashMap<String, byte[]>();

  /**
   * {@inheritDoc}
   */
  @Override
  public String getId() {
    return _metadata.getStringValue(RECORD_ID);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String getSource() {
    return _metadata.getStringValue(SOURCE);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public AnyMap getMetadata() {
    return _metadata;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public int attachmentSize() {
    return _attachments.size();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public byte[] getAttachment(final String name) {
    return _attachments.get(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Iterator<String> getAttachmentNames() {
    return _attachments.keySet().iterator();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean hasAttachments() {
    return !_attachments.isEmpty();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public boolean hasAttachment(final String name) {
    return _attachments.containsKey(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void removeAttachment(final String name) {
    _attachments.remove(name);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void removeAttachments() {
    _attachments.clear();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setAttachment(final String name, final byte[] attachment) {
    _attachments.put(name, attachment);
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setId(final String id) {
    if (id != null) {
      _metadata.put(RECORD_ID, new ValueImpl(ValueType.STRING, id));
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void setSource(final String source) {
    if (source != null) {
      _metadata.put(SOURCE, new ValueImpl(ValueType.STRING, source));
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String toString() {
    final StringBuilder builder = new StringBuilder();
    builder.append(_metadata);
    if (hasAttachments()) {
      builder.append(" + ").append(_attachments.keySet());
    }
    return builder.toString();
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public DataFactory getFactory() {
    return DefaultDataFactoryImpl.INSTANCE;
  }
}
