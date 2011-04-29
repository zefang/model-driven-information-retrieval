/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel;

import java.util.Iterator;

/**
 * SMILA record interface. This is the main object that describes entities that are created and processed in the system.
 * 
 * @author jschumacher
 * 
 */
public interface Record {
  /**
   *key for the record id in metadata.
   */
  String RECORD_ID = "_recordid";

  /**
   * key for the data source in metadata.
   */
  String SOURCE = "_source";

  /**
   * get record factory to use for adding objects to this record.
   * 
   * @return record factory for this record.
   */
  DataFactory getFactory();

  /**
   * Get the ID of this record.
   * 
   * @return record ID
   */
  String getId();

  /**
   * Set the ID of this record.
   * 
   * @param id
   *          new record ID
   */
  void setId(String id);

  /**
   * Get the data source of this record.
   * 
   * @return data source
   */
  String getSource();

  /**
   * Set the data source of this record.
   * 
   * @param source
   *          data source
   */
  void setSource(String source);

  /**
   * Get the metadata of this record. Contains attributes and other properties of this record.
   * 
   * @return the metadata describing this record.
   */
  AnyMap getMetadata();

  /**
   * check if this record has attachments.
   * 
   * @return true if this record has attachments, else false.
   */
  boolean hasAttachments();

  /**
   * check if this record has an attachment of the specified name.
   * 
   * @param name
   *          attachment name.
   * @return true if this record has an attachment for this name, else false.
   */
  boolean hasAttachment(String name);

  /**
   * get number of attachments.
   * 
   * @return number of attachments.
   */
  int attachmentSize();

  /**
   * Get iterator on names of attachments of this record. Returns empty iterator if record has no attachments.
   * 
   * @return iterator on attachment names.
   */
  Iterator<String> getAttachmentNames();

  /**
   * get attachment value for the specified name.
   * 
   * @param name
   *          attachment name.
   * @return attachment value.
   */
  byte[] getAttachment(String name);

  /**
   * set attachment value for the specified name.
   * 
   * @param name
   *          attachment name.
   * @param attachment
   *          attachment value.
   */
  void setAttachment(String name, byte[] attachment);

  /**
   * remove attachment for specified name.
   * 
   * @param name
   *          attachment name.
   */
  void removeAttachment(String name);

  /**
   * remove attachments.
   * 
   */
  void removeAttachments();

}
