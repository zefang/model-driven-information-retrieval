/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.datamodel.test;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.xml.XmlSerializationUtils;

/**
 * The Class TestRecordFilters.
 */
public class TestXmlSerializationUtils extends TestCase {

  /**
   * Test record serialization to/from byte[] keeping attachments.
   * 
   * @throws Exception
   *           if any error occurs
   */
  public void testAttachmentSerialization() throws Exception {
    // record contains the attachment "attachment1"
    final Record record = RecordCreator.createTestRecord1();

    final byte[] serializedRecord = XmlSerializationUtils.serialize2byteArray(record);
    assertNotNull(serializedRecord);

    final Record deserializedRecord = XmlSerializationUtils.deserialize(serializedRecord);
    assertNotNull(deserializedRecord);
    assertTrue(deserializedRecord.hasAttachments());
    final byte[] attachment1 = deserializedRecord.getAttachment("attachment1");
    assertNotNull(attachment1);
    assertEquals("my very first attachment", new String(attachment1));
  }
}
