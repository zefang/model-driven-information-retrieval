/***********************************************************************************************************************
 * Copyright (c) 2008,2011 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Andreas Weber (Attensity Europe GmbH) - initial API and implementation               
 **********************************************************************************************************************/

package org.eclipse.smila.datamodel.json.test;

import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;

import junit.framework.TestCase;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.ValueFormatHelper;
import org.eclipse.smila.datamodel.json.JsonSerializationUtils;
import org.eclipse.smila.datamodel.xml.XmlSerializationUtils;

/**
 * Junit test class for class JsonSerializationUtils.
 * 
 * @author aweber
 */
public class TestJsonSerializationUtils extends TestCase {

  /** Constant for attribute Title. */
  public static final String ATT_TITLE = "Title";

  /** Constant for attribute Author. */
  public static final String ATT_AUTHOR = "Author";

  /** Constant for attribute Date. */
  public static final String ATT_DATE = "Date";

  /** Constant for attribute Date. */
  public static final String ATT_SIZE = "Size";

  /** Constant for attribute Similarity. */
  public static final String ATT_SIMILARITY = "Similarity";

  /** Constant for attribute Flag. */
  public static final String ATT_FLAG = "Flag";

  /** Constant for attribute singleObject. */
  public static final String ATT_SINGLEOBJECT = "singleObject";

  /** Constant for attribute multiObject. */
  public static final String ATT_MULTIOBJECT = "multiObject";

  /** Constant for attribute sequenceObject. */
  public static final String ATT_SEQUENCEOBJECT = "sequenceObject";

  /** Constant for attachment Text. */
  public static final String ATTACHMENT_TEXT = "Content";

  /** Data factory. */
  protected static final DataFactory DATA_FACTORY = DataFactoryCreator.createDefaultFactory();

  /** for record<->JSON serialization. */
  protected final JsonSerializationUtils _jsonSerializationUtils = new JsonSerializationUtils();

  /** for record<->JSON serialization. */
  protected final JsonSerializationUtils _jsonSerializationUtilsNoPretty = new JsonSerializationUtils(false);

  /**
   * @throws Exception
   *           unexpected error
   */
  public void testJSON() throws Exception {
    System.out.println("=== testJSON ===");
    final Record record = createRecord();
    System.out.println(XmlSerializationUtils.serialize2string(record));

    // convert record to JSON
    final String s = _jsonSerializationUtils.record2JsonObject(record);
    assertNotNull(s);
    System.out.println(s);

    // re-convert JSON to record
    final Record parsedRecord = _jsonSerializationUtils.jsonObject2record(s);
    assertNotNull(parsedRecord);
    System.out.println("--- parsed ---");
    System.out.println(XmlSerializationUtils.serialize2string(parsedRecord));

    // compare original and id of parsed record, which should be not set at all
    compareRecords(record, parsedRecord);
  }

  /**
   * @throws Exception
   *           unexpected error
   */
  public void testJSONAny() throws Exception {
    System.out.println("=== testJSONAny ===");
    final ByteArrayInputStream mapInput =
      new ByteArrayInputStream("{\"key1\": \"value1\", \"key2\": \"value2\"}".getBytes());
    final Any map = _jsonSerializationUtils.jsonStream2any(mapInput);
    assertTrue(map.isMap());
    assertEquals(2, map.size());
    assertEquals("value1", ((AnyMap) map).getStringValue("key1"));
    assertEquals("value2", ((AnyMap) map).getStringValue("key2"));

    final ByteArrayInputStream seqInput = new ByteArrayInputStream("[ \"value1\", \"value2\" ]".getBytes());
    final Any seq = _jsonSerializationUtils.jsonStream2any(seqInput);
    assertTrue(seq.isSeq());
    assertEquals(2, seq.size());
    assertEquals("value1", ((AnySeq) seq).getStringValue(0));
    assertEquals("value2", ((AnySeq) seq).getStringValue(1));

    final ByteArrayInputStream strInput = new ByteArrayInputStream("\"value\"".getBytes());
    final Any strVal = _jsonSerializationUtils.jsonStream2any(strInput);
    assertTrue(strVal.isString());
    assertEquals("value", ((Value) strVal).asString());

    final ByteArrayInputStream longInput = new ByteArrayInputStream("42".getBytes());
    final Any longVal = _jsonSerializationUtils.jsonStream2any(longInput);
    assertTrue(longVal.isLong());
    assertEquals(42, ((Value) longVal).asLong().intValue());

    final ByteArrayInputStream doubleInput = new ByteArrayInputStream(Double.toString(Math.PI).getBytes());
    final Any doubleVal = _jsonSerializationUtils.jsonStream2any(doubleInput);
    assertTrue(doubleVal.isDouble());
    assertEquals(Math.PI, ((Value) doubleVal).asDouble().doubleValue());

    final ByteArrayInputStream boolInput = new ByteArrayInputStream("true".getBytes());
    final Any boolVal = _jsonSerializationUtils.jsonStream2any(boolInput);
    assertTrue(boolVal.isBoolean());
    assertTrue(((Value) boolVal).asBoolean());
  }

  /**
   * @throws Exception
   *           unexpected error
   */
  public void testJSONPrettyPrinting() throws Exception {
    System.out.println("=== testJSON ===");
    final Record record = createRecord();
    System.out.println(XmlSerializationUtils.serialize2string(record));

    final String prettyString = _jsonSerializationUtils.record2JsonObject(record);
    assertTrue(prettyString.indexOf('\n') > 0);
    assertTrue(prettyString.indexOf("  ") > 0);
    final String oneLineString = _jsonSerializationUtilsNoPretty.record2JsonObject(record);
    assertTrue(oneLineString.indexOf('\n') < 0);
    assertTrue(oneLineString.indexOf("  ") < 0);
  }

  /**
   * @param record
   *          input record
   * @param parsedRecord
   *          output record
   * @throws Exception
   *           error
   */
  protected void compareRecords(final Record record, final Record parsedRecord) throws Exception {
    // compare original and id of parsed record    
    assertEquals(record.getId(), parsedRecord.getId());

    // compare original and parsed metadata
    final AnyMap expected = record.getMetadata();
    final AnyMap metadata = parsedRecord.getMetadata();
    compareMap(expected, metadata);

    assertEquals(expected.get(ATT_SINGLEOBJECT).size(), metadata.get(ATT_SINGLEOBJECT).size());
    compareMap(expected.getMap(ATT_SINGLEOBJECT), metadata.getMap(ATT_SINGLEOBJECT));

    assertEquals(expected.get(ATT_MULTIOBJECT).size(), metadata.get(ATT_MULTIOBJECT).size());
    compareMap(expected.getSeq(ATT_MULTIOBJECT).getMap(0), metadata.getSeq(ATT_MULTIOBJECT).getMap(0));
    compareMap(expected.getSeq(ATT_MULTIOBJECT).getMap(1), metadata.getSeq(ATT_MULTIOBJECT).getMap(1));

    assertEquals(expected.get(ATT_SEQUENCEOBJECT).size(), metadata.get(ATT_SEQUENCEOBJECT).size());
    assertEquals(expected.getSeq(ATT_SEQUENCEOBJECT).get(0), metadata.getSeq(ATT_SEQUENCEOBJECT).get(0));
    assertEquals(expected.getSeq(ATT_SEQUENCEOBJECT).get(1), metadata.getSeq(ATT_SEQUENCEOBJECT).get(1));

    // attachments are not part of BON/JSON
    assertFalse(parsedRecord.hasAttachments());
  }

  /**
   * compare metadata map objects.
   * 
   * @param expected
   *          created object
   * @param parsed
   *          parsed object
   */
  protected void compareMap(final AnyMap expected, final AnyMap parsed) {
    assertNotNull(parsed);
    assertEquals(expected.size(), parsed.size());
    // test ATT_TITLE
    assertEquals(expected.get(ATT_TITLE), parsed.get(ATT_TITLE));

    // test ATT_DATE    
    assertTrue(parsed.get(ATT_DATE).isString()); // JSON doesn't support date type
    assertTrue(parsed.getDateValue(ATT_DATE) instanceof Date);
    assertEquals(ValueFormatHelper.INSTANCE.formatDate(expected.getDateValue(ATT_DATE)),
      ValueFormatHelper.INSTANCE.formatDate(parsed.getDateValue(ATT_DATE)));

    // test ATT_SIZE
    assertEquals(expected.get(ATT_SIZE), parsed.get(ATT_SIZE));

    // test ATT_SIMILARITY
    assertEquals(expected.get(ATT_SIMILARITY), parsed.get(ATT_SIMILARITY));

    // test ATT_FLAG
    assertEquals(expected.get(ATT_FLAG), parsed.get(ATT_FLAG));

    // test ATT_AUTHOR
    assertEquals(expected.get(ATT_AUTHOR), parsed.get(ATT_AUTHOR));
  }

  /**
   * Utility method to create Record objects used in the tests.
   * 
   * @return a Record
   * @throws UnsupportedEncodingException
   *           if any error occurs
   */
  public Record createRecord() throws UnsupportedEncodingException {
    final String idValue = "0815";
    final String source = "testSource";
    final String text = "Some test text without meaning.";

    final Record record = DataFactoryCreator.createDefaultFactory().createRecord(idValue, source);

    final AnyMap metadata = createMap();

    // Map value
    metadata.put(ATT_SINGLEOBJECT, createMap());

    // Seq of Map
    metadata.add(ATT_MULTIOBJECT, createMap());
    metadata.add(ATT_MULTIOBJECT, createMap());

    // Seq of Seq
    final AnySeq sequenceObjects = DATA_FACTORY.createAnySeq();
    sequenceObjects.add(createSeq());
    sequenceObjects.add(createSeq());
    metadata.put(ATT_SEQUENCEOBJECT, sequenceObjects);

    record.getMetadata().putAll(metadata);

    record.setAttachment(ATTACHMENT_TEXT, text.getBytes());
    return record;
  }

  /**
   * create a sequence metadata object.
   * 
   * @return a sequence metadata object
   */
  protected AnySeq createSeq() {
    final AnySeq seq = DATA_FACTORY.createAnySeq();
    seq.add(new Long(1));
    seq.add(new Long(0));
    seq.add(new Long(2));
    seq.add("Pinguin");
    return seq;
  }

  /**
   * @return a map object
   */
  protected AnyMap createMap() {
    final AnyMap metadata = DATA_FACTORY.createAnyMap();
    final String title = "test title";
    final String[] authors = { "karl", "heinz" };
    final Date date = new Date();
    final String text = "Some test text without meaning.";
    final int size = text.length();
    final double similarity = 0.75;
    final boolean flag = true;
    metadata.put(ATT_TITLE, title);
    for (final String author : authors) {
      metadata.add(ATT_AUTHOR, DATA_FACTORY.createStringValue(author));
    }
    metadata.put(ATT_DATE, DATA_FACTORY.createDateValue(date));
    metadata.put(ATT_SIZE, size);
    metadata.put(ATT_SIMILARITY, similarity);
    metadata.put(ATT_FLAG, flag);
    return metadata;
  }
}
