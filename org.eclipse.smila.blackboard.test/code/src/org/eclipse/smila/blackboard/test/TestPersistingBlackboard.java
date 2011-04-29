/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 * Dmitry Hazin (brox IT Solutions GmbH) - initial creator
 * Sebastian Voigt (Brox IT Solutions GmbH) - initial creator
 * Alexander Eliseyev (brox IT Solutions GmbH)
 **********************************************************************************************************************/
package org.eclipse.smila.blackboard.test;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.blackboard.BlackboardFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.test.DeclarativeServiceTestCase;
import org.eclipse.smila.utils.workspace.WorkspaceHelper;

/**
 * The Class BlackboardServiceTest.
 */
public class TestPersistingBlackboard extends DeclarativeServiceTestCase {

  /** This bundle id. */
  private static final String BUNDLE_ID = "org.eclipse.smila.blackboard.test";

  /** The _blackboard. */
  private Blackboard _blackboard;

  /** factory for data objects. */
  private DataFactory _factory;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    final BlackboardFactory factory = getService(BlackboardFactory.class);
    assertNotNull(factory);
    _blackboard = factory.createPersistingBlackboard();
    assertNotNull(_blackboard);
    _factory = _blackboard.getDataFactory();
    assertNotNull(_factory);

  }

  /**
   * Test blackboard service.
   */
  public void testBlackboardService() {
    assertNotNull(_blackboard);
  }

  /**
   * Test get global note.
   * 
   * @throws Exception
   *           the exception
   */
  public void testGetAndHasGlobalNote() throws Exception {
    _blackboard.setGlobalNote("name1", "note1");
    _blackboard.setGlobalNote("name2", "note2");

    assertEquals(_blackboard.getGlobalNote("name1"), "note1");
    assertEquals(_blackboard.getGlobalNote("name2"), "note2");

    assertTrue(_blackboard.hasGlobalNote("name1"));
    assertTrue(_blackboard.hasGlobalNote("name2"));
    assertFalse(_blackboard.hasGlobalNote("name3"));
  }

  /**
   * Test get record note.
   * 
   * @throws Exception
   *           the exception
   */
  public void testGetRecordNote() throws Exception {
    final String id = setTestRecord();
    assertEquals(_blackboard.hasRecordNote(id, "name1"), false);
    try {
      _blackboard.getRecordNote(id, "name1");
      fail("Must throw BlackboardAccessException on unexisting note");
    } catch (final BlackboardAccessException e) {
      ; // ok
    }

    _blackboard.setRecordNote(id, "name1", "note1");
    _blackboard.setRecordNote(id, "name2", "note2");
    assertEquals("note1", _blackboard.getRecordNote(id, "name1"));
    assertEquals("note2", _blackboard.getRecordNote(id, "name2"));
  }

  /**
   * Test has record note.
   * 
   * @throws Exception
   *           the exception
   */
  public void testHasRecordNote() throws Exception {
    final String id = setTestRecord();
    _blackboard.setRecordNote(id, "name1", "note1");
    assertEquals(_blackboard.hasRecordNote(id, "name1"), true);
    assertEquals(_blackboard.hasRecordNote(id, "name5"), false);
  }

  /**
   * Test set and get attachment.
   * 
   * @throws Exception
   *           the exception
   */
  public void testSetAndGetAttachment() throws Exception {
    final String attachment1 = "testattachment1";
    final String attachment2 = "testattachment2";
    final String id = setTestRecord();
    _blackboard.setAttachment(id, "test1", attachment1.getBytes());
    _blackboard.setAttachment(id, "test2", attachment2.getBytes());
    final byte[] storageAttachment1 = _blackboard.getAttachment(id, "test1");
    assertEquals(attachment1, new String(storageAttachment1));
    final byte[] storageAttachment2 = _blackboard.getAttachment(id, "test2");
    assertEquals(attachment2, new String(storageAttachment2));
  }

  /**
   * Test invalidate.
   * 
   * @throws Exception
   *           the exception
   */
  public void testInvalidate() throws Exception {
    final String id = setTestRecord();

    // Attach an attachment to check removing cached attachments
    final String attachment = "testattachment";
    _blackboard.setAttachment(id, "test", attachment.getBytes());
    _blackboard.commit(id);

    _blackboard.load(id);
    _blackboard.invalidate(id);

    try {
      _blackboard.commit(id);
      fail("BlackboardAccessException must be trown on commit on invalidated record");
    } catch (final BlackboardAccessException e) {
      ; // must throw this as record is not cached anymore
    }
  }

  /**
   * Test set and get attachment from stream.
   * 
   * @throws Exception
   *           the exception
   */
  public void testSetAndGetAttachmentFromStream() throws Exception {
    final String attachment = "testattachment1";
    final InputStream attachmentStream = new ByteArrayInputStream(attachment.getBytes());
    final String id = setTestRecord();
    _blackboard.setAttachmentFromStream(id, "test1", attachmentStream);

    final InputStream storageAttachmentStream = _blackboard.getAttachmentAsStream(id, "test1");
    assertEquals(attachment, new String(IOUtils.toByteArray(storageAttachmentStream)));

    try {
      _blackboard.getAttachmentAsStream(id, "test2");
      fail("Must throw BlackboardAccessException for unexisting attachment");
    } catch (final BlackboardAccessException e) {
      ; // ok
    }

    final byte[] storageAttachment = _blackboard.getAttachment(id, "test1");
    assertEquals(attachment, new String(storageAttachment));
  }

  /**
   * Test set, get and remove attachment.
   * 
   * @throws Exception
   *           the exception
   */
  public void testSetGetAndRemoveAttachment() throws Exception {
    // set attachments
    final String attachment1 = "testattachment1";
    final String attachment2 = "testattachment2";
    final String id = setTestRecord();
    _blackboard.setAttachment(id, "test1", attachment1.getBytes());
    _blackboard.setAttachment(id, "test2", attachment2.getBytes());

    // get the attachments
    final byte[] storageAttachment1 = _blackboard.getAttachment(id, "test1");
    assertEquals(attachment1, new String(storageAttachment1));
    final byte[] storageAttachment2 = _blackboard.getAttachment(id, "test2");
    assertEquals(attachment2, new String(storageAttachment2));

    // remove the attachments
    _blackboard.removeAttachment(id, "test1");
    _blackboard.removeAttachment(id, "test2");

    // check that the attachments do no longer exist
    try {
      _blackboard.getAttachment(id, "test1");
    } catch (final BlackboardAccessException e) {
      final String expectedMsg = "Record with id = " + id + " doesn't have the attachment [test1]";
      assertEquals(expectedMsg, e.getMessage());
    }
    try {
      _blackboard.getAttachment(id, "test2");
    } catch (final BlackboardAccessException e) {
      final String expectedMsg = "Record with id = " + id + " doesn't have the attachment [test2]";
      assertEquals(expectedMsg, e.getMessage());
    }

  }

  /**
   * Test set record.
   * 
   * @throws Exception
   *           the exception
   */
  public void testSetRecord() throws Exception {
    final String id = setTestRecord();
    Record record = _blackboard.getRecord(id);
    final String attachment = "testSetRecord1";
    record.setAttachment(attachment, attachment.getBytes());
    // replace old record entry with new one
    _blackboard.setRecord(record);
    record = _blackboard.getRecord(id);
    // check if the attachment was saved to binstorage and replaced with flag object
    assertEquals(null, record.getAttachment(attachment));
    // check that attachment was saved correctly
    assertEquals(attachment, new String(_blackboard.getAttachment(id, attachment)));
  }

  /**
   * Test storage methods.
   * 
   * @throws Exception
   *           the exception
   */
  public void testCommitAndLoad() throws Exception {
    final String id = setTestRecord();
    // Record record = _blackboard.getRecord(id);
    // commit the record
    _blackboard.commit(id);
    // load commited record to the blackboard.
    _blackboard.load(id);
    // Record loadedRecord = _blackboard.getRecord(id);

    try {
      _blackboard.load(null);
      fail("Must throw IllegalArgumentException on null Id");
    } catch (final IllegalArgumentException e) {
      ; // ok
    }
  }

  /**
   * Test getting attachment as file.
   * 
   * @throws Exception
   *           the exception
   */
  public void testGetAttachmentAsFile() throws Exception {
    final String attachment1 = "testGetAttachmentAsFile1";
    final String attachment2 = "testGetAttachmentAsFile2";
    final String id = setTestRecord();
    _blackboard.setAttachment(id, attachment1, attachment1.getBytes());
    final File attachmentFile = _blackboard.getAttachmentAsFile(id, attachment1);
    assertEquals(attachmentFile.length(), attachment1.getBytes().length);

    // check that cached attachment file is removed when another attachment with the same name is set
    try {
      _blackboard.setAttachment(id, attachment1, attachment2.getBytes());
    } catch (final BlackboardAccessException exception) {
      final String expected =
        "Attachment [" + attachment1 + "] of record with id=" + id
          + " was previously loaded by getAttachmentAsFile method";
      assertEquals(expected, exception.getMessage());
    }

    _blackboard.commit(id);
  }

  /**
   * Test setting attachment from file.
   * 
   * @throws Exception
   *           the exception
   */
  public void testSetAttachmentFromFile() throws Exception {
    final String attachment1 = "testSetAttachmentFromFile1";
    final File tempDir = WorkspaceHelper.createWorkingDir(BUNDLE_ID);
    final File attachmentFile = new File(tempDir, attachment1);
    final OutputStream output = FileUtils.openOutputStream(attachmentFile);
    IOUtils.write(attachment1.getBytes(), output);
    IOUtils.closeQuietly(output);

    final String id = setTestRecord();
    _blackboard.setAttachmentFromFile(id, attachment1, attachmentFile);

    final byte[] storageAttachment1 = _blackboard.getAttachment(id, attachment1);
    assertEquals(storageAttachment1.length, attachment1.getBytes().length);

    try {
      _blackboard.setAttachmentFromFile(id, attachment1, new File("unexistingFile"));
      fail("Must throw BlackboardAccessException");
    } catch (final BlackboardAccessException e) {
      ; // ok
    }
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSynchronize() throws Exception {
    final String id = setTestRecord();
    _blackboard.commit(id);
    _blackboard.invalidate(id);
    final Record newRecord = _factory.createRecord();
    newRecord.setId(id);
    final Value newValue = _factory.createStringValue("SMILA");
    newRecord.getMetadata().put("topic", newValue);
    _blackboard.synchronizeRecord(newRecord);
    final AnyMap metadata = _blackboard.getRecord(id).getMetadata();
    final AnySeq attribute = metadata.getSeq("author");
    assertEquals("l1", attribute.getStringValue(0));
    assertEquals("l2", attribute.getStringValue(1));
    assertEquals("Novakovic", attribute.getMap(2).getStringValue("lastName"));
    assertEquals("Georg", attribute.getMap(3).getStringValue("firstName1"));
    assertNull(metadata.get("unexistingPath"));
    assertEquals("SMILA", metadata.getStringValue("topic"));
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testRemoveRecord() throws Exception {
    final String id = setTestRecord();
    _blackboard.setAttachment(id, "attachment", "attachment".getBytes());
    _blackboard.commit(id);
    _blackboard.invalidate(id);

    final Record record = _blackboard.getRecord(id);
    assertTrue(record.getMetadata().containsKey("author"));
    assertTrue(record.getMetadata().get("author").isSeq());
    assertTrue(_blackboard.hasAttachment(id, "attachment"));
    assertEquals("attachment", new String(_blackboard.getAttachment(id, "attachment")));
    _blackboard.removeRecord(id);
    _blackboard.invalidate(id);

    assertNull(_blackboard.getRecord(id));
  }

  /**
   * 
   * @throws Exception
   *           test fails
   */
  public void testSynchronizeWithoutOldRecord() throws Exception {
    final String id = "another-source+another-key";
    _blackboard.invalidate(id);
    final Record newRecord = _factory.createRecord();
    newRecord.setId(id);
    final Value newValue = _factory.createStringValue("SMILA");
    newRecord.getMetadata().put("topic", newValue);
    _blackboard.synchronizeRecord(newRecord);
    final AnyMap metadata = _blackboard.getRecord(id).getMetadata();
    assertNull(metadata.get("author"));
    assertNull(metadata.get("unexistingPath"));
    assertEquals("SMILA", metadata.getStringValue("topic"));
  }

  /**
   * Sets the test record.
   * 
   * @return the id
   * 
   * @throws Exception
   *           the exception
   */
  /**
   * Sets the test record.
   * 
   * @return the id
   * 
   * @throws Exception
   *           the exception
   */
  private String setTestRecord() throws Exception {
    // CHECKSTYLE:OFF
    /*
     * Test record structure: <Record> <A n="author"> <L>l1</L> <L>l2</L> <O> <A n="firstName"> <L> <V>Igor</V> </L>
     * </A> <A n="lastName"> <L> <V>Novakovic</V> </L> </A> </O> <O st="appl:Author"> <A n="firstName1"> <L>
     * <V>Georg</V> </L> </A> <A n="lastName1"> <L> <V>Schmidt</V> </L> </A> </O> </A> <Record>
     */
    // CHECKSTYLE:ON
    // Create root attribute
    final AnySeq attribute = _factory.createAnySeq();

    // Create root attribute literals
    final Value l1 = _factory.createStringValue("l1");
    final Value l2 = _factory.createStringValue("l2");
    attribute.add(l1);
    attribute.add(l2);

    // Create first metadata object
    final AnyMap metadata1 = _factory.createAnyMap();
    final Value attribute11 = _factory.createStringValue("Igor");
    final Value attribute12 = _factory.createStringValue("Novakovic");
    // Set attributes to metadata1
    metadata1.put("firstName", attribute11);
    metadata1.put("lastName", attribute12);

    // Create second metadata object
    final AnyMap metadata2 = _factory.createAnyMap();
    // Create attribute21
    final Value attribute21 = _factory.createStringValue("Georg");
    final Value attribute22 = _factory.createStringValue("Schmidt");
    // Set attributes to metadata22
    metadata2.put("firstName1", attribute21);
    metadata2.put("lastName1", attribute22);

    // Add metadata1 and metadata2 to root attribute
    attribute.add(metadata1);
    attribute.add(metadata2);

    // Create record
    final Record record = _factory.createRecord();
    record.setId("source+key");

    // Create root metadata object
    final AnyMap metadata = record.getMetadata();
    metadata.put("author", attribute);

    // Set record to the blackboard
    _blackboard.setRecord(record);

    return record.getId();
  }
}
