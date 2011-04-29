/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.recordstorage.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.utils.digest.DigestHelper;

/**
 * A JPA Entity to store Records.
 */
public class RecordDao implements Serializable {

  /**
   * Constant for the named query RecordDao.findBySource.
   */
  public static final String NAMED_QUERY_FIND_BY_SOURCE = "RecordDao.findBySource";

  /**
   * Constant for the entity attribute _source.
   */
  public static final String NAMED_QUERY_PARAM_SOURCE = "source";

  /**
   * Constant for the entity attribute _attributes.
   */
  public static final String ENTITY_MEMBER_ATTRIBUTES = "_attributes";

  /**
   * serialVersionUID.
   */
  private static final long serialVersionUID = 6500268394234442139L;

  /**
   * record factory for creating records after reading.
   */
  private static final DataFactory FACTORY = DataFactoryCreator.createDefaultFactory();

  /**
   * Hash of record Id.
   */
  private String _idHash;

  /**
   * The source attribute of the Id for easy querying over sources.
   */
  private String _source;

  /**
   * The serialized components of a record.
   */
  private byte[] _serializedRecord;

  /**
   * Default Constructor, used by JPA.
   */
  protected RecordDao() {
  }

  /**
   * calculate the id hash from source and id value used to identify the record.
   * @param source source name
   * @param id record id
   * @return Id hash
   */
  public static String getIdHash(final String id) {
    return DigestHelper.calculateDigest(id);
  }
  /**
   * Conversion Constructor. Converts a Record into a RecordDao object.
   * 
   * @param record
   *          a Record
   * @throws IOException
   *           if any exception occurs
   */
  public RecordDao(final Record record) throws IOException {
    if (record == null) {
      throw new IllegalArgumentException("parameter record is null");
    }
    if (record.getId() == null) {
      throw new IllegalArgumentException("parameter record has not Id set");
    }

    final List<String> attachmentNames = new ArrayList<String>();
    final Iterator<String> names = record.getAttachmentNames();
    while (names.hasNext()) {
      attachmentNames.add(names.next());
    }

    final ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
    final ObjectOutputStream objectStream = new ObjectOutputStream(byteStream);
    objectStream.writeObject(record.getMetadata());
    objectStream.writeObject(attachmentNames);
    objectStream.close();

    _idHash = getIdHash(record.getId());
    _source = record.getSource();
    _serializedRecord = byteStream.toByteArray();
  }

  /**
   * Converts this RecordDao into a Record object.
   * 
   * @return a Record object.
   * @throws IOException
   *           if any exception occurs
   * @throws ClassNotFoundException
   *           if any exception occurs
   */
  public Record toRecord() throws IOException, ClassNotFoundException {
    final ObjectInputStream objectStream = new ObjectInputStream(new ByteArrayInputStream(_serializedRecord));
    final AnyMap metadata = (AnyMap) objectStream.readObject();
    final List<String> attachmentNames = (List<String>) objectStream.readObject();
    objectStream.close();
    final Record record = FACTORY.createRecord();
    record.getMetadata().putAll(metadata); // id and source are part of metadata.
    for (final String name : attachmentNames) {
      record.setAttachment(name, null);
    }
    return record;
  }

}
