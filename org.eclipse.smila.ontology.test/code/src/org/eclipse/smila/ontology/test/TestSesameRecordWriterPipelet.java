/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.ontology.pipelets.ASesameRecordPipelet;
import org.eclipse.smila.ontology.pipelets.SesameRecordWriterPipelet;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.openrdf.model.Namespace;
import org.openrdf.model.Statement;
import org.openrdf.model.URI;
import org.openrdf.model.ValueFactory;
import org.openrdf.model.vocabulary.RDF;
import org.openrdf.model.vocabulary.RDFS;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.RepositoryResult;

/**
 * basic test for access to Sesame repositories via SesameRecordWriterPipelet.
 * 
 * @author jschumacher
 * 
 */
public class TestSesameRecordWriterPipelet extends AOntologyWorkflowTest {

  /**
   * base uri for test RDFs.
   */
  private static final String FACTBOOK_BASEURI = "http://www.cia.gov/cia/publications/factbook#";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    super.setUp();
    prepareRepository("native");
    prepareRepository("memory");
  }

  /**
   * clear repository and declare rdf and ciafb namespace.
   * 
   * @param name
   *          repository name
   * @throws RepositoryException
   *           preparation fails
   */
  private void prepareRepository(final String name) throws RepositoryException {
    _log.info("Clearing repository [" + name + "] ...");
    final RepositoryConnection conn = _ontology.getConnection(name);
    conn.clear();
    conn.setNamespace("rdf", RDF.NAMESPACE);
    conn.setNamespace("ciafb", FACTBOOK_BASEURI);
    conn.commit();
    _log.info("... done");
    _log.info("Checking namespaces:");
    final RepositoryResult<Namespace> namespaces = conn.getNamespaces();
    for (final Namespace ns : namespaces.asList()) {
      _log.info("Namespace " + ns.getPrefix() + " is " + ns.getName());
    }
    conn.close();
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
   */
  @Override
  protected String getPipelineName() {
    return "SesameWritePipeline";
  }

  /**
   * write a record to a resource in sesame identified by a configured attribute value.
   * 
   * @throws Exception
   *           test fails
   */
  public void testWriteWithNonDefaultAttribute() throws Exception {
    final String uri = "http://www.odci.gov/cia/publications/factbook/geos/shire.html";
    final String id = createBlackboardRecord(getClass().getName(), uri);

    final Record record = getBlackboard().getRecord(id);
    final AnyMap metadata = record.getMetadata();
    metadata.put(ASesameRecordPipelet.PARAM_RECORDFILTER,
      record.getFactory().createStringValue("ontologyAttributes"));
    metadata.put("test:uri_attribute", record.getFactory().createStringValue(uri));
    metadata.put(SesameRecordWriterPipelet.PARAM_URI_ATTRIBUTE,
      record.getFactory().createStringValue("test:uri_attribute"));
    metadata.put(SesameRecordHelper.ATTRIBUTE_TYPE,
      record.getFactory().createStringValue(FACTBOOK_BASEURI + "Country"));
    final AnyMap nameMap = record.getFactory().createAnyMap();
    nameMap.put("en", record.getFactory().createStringValue("The Shire"));
    nameMap.put("de", record.getFactory().createStringValue("Auenland"));
    metadata.put("ciafb:Name", nameMap);
    metadata
      .put(
        "ciafb:Flag",
        record.getFactory().createStringValue(
          "http://www.odci.gov/cia/publications/factbook/flags/shire-lgflag.jpg"));
    metadata.put("ciafb:Map",
      record.getFactory().createStringValue("http://www.odci.gov/cia/publications/factbook/flags/shire-map.jpg"));
    metadata.put("ciafb:Location", record.getFactory().createStringValue("Northwest of Middle Earth"));
    final AnySeq boc = record.getFactory().createAnySeq();
    boc.add(record.getFactory().createStringValue("Breeland"));
    boc.add(record.getFactory().createStringValue("Minhiriath"));
    final AnySeq nar = record.getFactory().createAnySeq();
    nar.add(record.getFactory().createStringValue("Tobacco"));
    nar.add(record.getFactory().createStringValue("Mushroom"));
    metadata.put("ciafb:Bordering_country", boc);
    metadata.put("ciafb:Natural_resources", nar);

    // mark object references as such...
    final AnySeq objectReferences = record.getFactory().createAnySeq();
    objectReferences.add(record.getFactory().createStringValue("ciafb:Map"));
    objectReferences.add(record.getFactory().createStringValue("ciafb:Flag"));
    metadata.put(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES, objectReferences);

    final String[] result = getProcessor().process(getPipelineName(), getBlackboard(), new String[] { id });
    assertNotNull(result);
    assertEquals(1, result.length);
    assertEquals(id, result[0]);

    RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      logRepositoryExport(conn);
      checkShireStatements(conn);
    } finally {
      conn.close();
    }

    conn = _ontology.getConnection("memory");
    try {
      logRepositoryExport(conn);
      checkShireStatements(conn);
    } finally {
      conn.close();
    }
  }

  /**
   * check statements of ID test.
   * 
   * @param conn
   *          repository to test
   * @throws RepositoryException
   *           test fails
   */
  private void checkShireStatements(final RepositoryConnection conn) throws RepositoryException {
    final URI subject =
      conn.getValueFactory().createURI("http://www.odci.gov/cia/publications/factbook/geos/shire.html");
    final RepositoryResult<Statement> stmts = conn.getStatements(subject, null, null, false);
    assertNotNull(stmts);
    int count = 0;
    while (stmts.hasNext()) {
      final Statement stmt = stmts.next();
      final String predicate = stmt.getPredicate().stringValue();
      final String object = stmt.getObject().stringValue();
      count++;
      if (predicate.equals(RDF.TYPE.stringValue())) {
        assertEquals(FACTBOOK_BASEURI + "Country", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Name")) {
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
        final String language = ((org.openrdf.model.Literal) stmt.getObject()).getLanguage();
        assertNotNull(language);
        if ("de".equals(language)) {
          assertEquals("Auenland", object);
        } else if ("en".equals(language)) {
          assertEquals("The Shire", object);
        } else {
          fail("unknown language " + language);
        }
      } else if (predicate.equals(FACTBOOK_BASEURI + "Location")) {
        assertEquals("Northwest of Middle Earth", object);
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Map")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/shire-map.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Flag")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/shire-lgflag.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Bordering_country")) {
        assertTrue("Breeland".equals(object) || "Minhiriath".equals(object));
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Natural_resources")) {
        assertTrue("Mushroom".equals(object) || "Tobacco".equals(object));
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else {
        fail("predicate " + predicate + " should not be set.");
      }
    }
    final int expectedStatementCount = 10;
    assertEquals(expectedStatementCount, count);
  }

  /**
   * write a record to a resource in sesame identified by the key value of atribute rdf:about.
   * 
   * @throws Exception
   *           test fails
   */
  public void testWriteWithAttribute() throws Exception {
    final String id = createURIAttributeRecord("http://www.odci.gov/cia/publications/factbook/geos/mordor.html");

    final Record record = getBlackboard().getRecord(id);
    final AnyMap metadata = record.getMetadata();
    metadata.put(SesameRecordHelper.ATTRIBUTE_TYPE,
      record.getFactory().createStringValue(FACTBOOK_BASEURI + "Country"));
    metadata.put("ciafb:Name", record.getFactory().createStringValue("Mordor"));
    metadata.put("ciafb:Flag",
      record.getFactory()
        .createStringValue("http://www.odci.gov/cia/publications/factbook/flags/mordor-lgflag.jpg"));
    metadata.put("ciafb:Map",
      record.getFactory().createStringValue("http://www.odci.gov/cia/publications/factbook/flags/mordor-map.jpg"));
    metadata.put("ciafb:Location", record.getFactory().createStringValue("Southeast of Middle Earth"));
    final AnySeq boc = record.getFactory().createAnySeq();
    boc.add(record.getFactory().createStringValue("http://www.odci.gov/cia/publications/factbook/geos/gondor"));
    boc.add(record.getFactory().createStringValue("http://www.odci.gov/cia/publications/factbook/geos/wilderland"));
    final AnySeq nar = record.getFactory().createAnySeq();
    nar.add(record.getFactory().createStringValue("Smoke"));
    nar.add(record.getFactory().createStringValue("Fire"));
    metadata.put("ciafb:Bordering_country", boc);
    metadata.put("ciafb:Natural_resources", nar);

    // mark object references as such...
    final AnySeq objectReferences = record.getFactory().createAnySeq();
    objectReferences.add(record.getFactory().createStringValue("ciafb:Bordering_country"));
    objectReferences.add(record.getFactory().createStringValue("ciafb:Map"));
    objectReferences.add(record.getFactory().createStringValue("ciafb:Flag"));
    metadata.put(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES, objectReferences);

    final String[] result = getProcessor().process(getPipelineName(), getBlackboard(), new String[] { id });
    assertNotNull(result);
    assertEquals(1, result.length);
    assertEquals(id, result[0]);

    RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      logRepositoryExport(conn);
      checkMordorStatements(conn);
    } finally {
      conn.close();
    }

    conn = _ontology.getConnection("memory");
    try {
      logRepositoryExport(conn);
      checkMordorStatements(conn);
    } finally {
      conn.close();
    }
  }

  /**
   * check statements of uri attribute test.
   * 
   * @param conn
   *          repository to test
   * @throws RepositoryException
   *           test fails
   */
  private void checkMordorStatements(final RepositoryConnection conn) throws RepositoryException {
    final URI subject =
      conn.getValueFactory().createURI("http://www.odci.gov/cia/publications/factbook/geos/mordor.html");
    final RepositoryResult<Statement> stmts = conn.getStatements(subject, null, null, false);
    assertNotNull(stmts);
    int count = 0;
    while (stmts.hasNext()) {
      final Statement stmt = stmts.next();
      final String predicate = stmt.getPredicate().stringValue();
      final String object = stmt.getObject().stringValue();
      count++;
      if (predicate.equals(RDF.TYPE.stringValue())) {
        assertEquals(FACTBOOK_BASEURI + "Country", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Name")) {
        assertEquals("Mordor", object);
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Location")) {
        assertEquals("Southeast of Middle Earth", object);
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Map")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/mordor-map.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Flag")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/mordor-lgflag.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Bordering_country")) {
        assertTrue("http://www.odci.gov/cia/publications/factbook/geos/gondor".equals(object)
          || "http://www.odci.gov/cia/publications/factbook/geos/wilderland".equals(object));
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Natural_resources")) {
        assertTrue("Smoke".equals(object) || "Fire".equals(object));
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else {
        fail("predicate " + predicate + " should not be set.");
      }
    }
    final int expectedStatementCount = 9;
    assertEquals(expectedStatementCount, count);
  }

  /**
   * test complete removal of a resource.
   * 
   * @throws Exception
   *           test fails
   */
  public void testClearResource() throws Exception {
    final String uriPart = "http://www.odci.gov/cia/publications/factbook/geos/wilderland.html";
    final String id = createBlackboardRecord(getClass().getName(), uriPart);
    getBlackboard()
      .getRecord(id)
      .getMetadata()
      .put(SesameRecordHelper.ATTRIBUTE_DELETE_ALL,
        getBlackboard().getRecord(id).getFactory().createBooleanValue(Boolean.TRUE));
    addString(id, SesameRecordHelper.ATTRIBUTE_URI, uriPart);
    logRecord(id);
    final RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      final ValueFactory vf = conn.getValueFactory();
      final URI uri = vf.createURI(uriPart);
      conn.add(uri, RDF.TYPE, vf.createURI(FACTBOOK_BASEURI + "Country"));
      conn.add(uri, RDFS.LABEL, vf.createLiteral("Wilderland"));
      conn.add(vf.createURI("http://www.odci.gov/cia/publications/factbook/geos/gondor"),
        vf.createURI(FACTBOOK_BASEURI + "Bordering_country"), uri);
      conn.commit();
      List<Statement> stmts = conn.getStatements(uri, null, null, false).asList();
      assertNotNull(stmts);
      assertEquals(2, stmts.size());
      stmts = conn.getStatements(null, null, uri, false).asList();
      assertNotNull(stmts);
      assertEquals(1, stmts.size());
      executeWorkflow(id);
      stmts = conn.getStatements(uri, null, null, false).asList();
      assertNotNull(stmts);
      assertEquals(0, stmts.size());
      stmts = conn.getStatements(null, null, uri, false).asList();
      assertNotNull(stmts);
      assertEquals(0, stmts.size());
    } finally {
      conn.close();
    }
  }

  /**
   * test complete removal of a resource.
   * 
   * @throws Exception
   *           test fails
   */
  public void testClearProperty() throws Exception {
    final String uriPart = "http://www.odci.gov/cia/publications/factbook/geos/mirkwood.html";
    final String id = createBlackboardRecord(getClass().getName(), uriPart);
    addResource(id, SesameRecordHelper.ATTRIBUTE_TYPE, FACTBOOK_BASEURI + "Country");
    addString(id, "ciafb:Name", "Mirkwood");
    addString(id, SesameRecordHelper.ATTRIBUTE_URI, uriPart);
    logRecord(id);
    executeWorkflow(id);
    RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      final ValueFactory vf = conn.getValueFactory();
      final URI uri = vf.createURI(uriPart);
      List<Statement> stmts = conn.getStatements(uri, null, null, false).asList();
      assertNotNull(stmts);
      assertEquals(2, stmts.size());
      stmts = conn.getStatements(uri, vf.createURI(FACTBOOK_BASEURI + "Name"), null, false).asList();
      assertNotNull(stmts);
      assertEquals(1, stmts.size());
      assertEquals("Mirkwood", stmts.get(0).getObject().stringValue());
    } finally {
      conn.close();
    }

    final Record record = getBlackboard().getRecord(id);
    record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_URI, record.getFactory().createStringValue(uriPart));
    final AnySeq deletes = record.getFactory().createAnySeq();
    deletes.add(record.getFactory().createStringValue("ciafb:Name"));
    record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_DELETE_PROPERTIES, deletes);
    record.getMetadata().put("ciafb:Name", record.getFactory().createStringValue("Duesterwald"));
    getBlackboard().setRecord(record);
    executeWorkflow(id);

    conn = _ontology.getDefaultConnection();
    try {
      final ValueFactory vf = conn.getValueFactory();
      final URI uri = vf.createURI(uriPart);
      List<Statement> stmts = conn.getStatements(uri, null, null, false).asList();
      assertNotNull(stmts);
      assertEquals(2, stmts.size());
      stmts = conn.getStatements(uri, vf.createURI(FACTBOOK_BASEURI + "Name"), null, false).asList();
      assertNotNull(stmts);
      assertEquals(1, stmts.size());
      assertEquals("Duesterwald", stmts.get(0).getObject().stringValue());
    } finally {
      conn.close();
    }
  }

  /**
   * test writing of reverse properties.
   * 
   * @throws Exception
   *           test fails
   */
  public void testReverseProperty() throws Exception {
    final String uriPart = "http://www.odci.gov/cia/publications/factbook/geos/wilderland.html";
    final String id = createBlackboardRecord(getClass().getName(), uriPart);
    addResource(id, SesameRecordHelper.ATTRIBUTE_TYPE, FACTBOOK_BASEURI + "Country");
    addString(id, "ciafb:Name", "Wilderland");
    addResource(id, "ciafb:Bordering_country", "http://www.odci.gov/cia/publications/factbook/geos/gondor");
    addString(id, SesameRecordHelper.ATTRIBUTE_URI, uriPart);
    final Record record = getBlackboard().getRecord(id);
    final AnySeq reverseSeq = record.getFactory().createAnySeq();
    reverseSeq.add(record.getFactory().createStringValue("ciafb:Bordering_country"));
    record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_REVERSE_PROPERTIES, reverseSeq);
    getBlackboard().setRecord(record);
    logRecord(id);
    executeWorkflow(id);
    final RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      logRepositoryExport(conn);
      final ValueFactory vf = conn.getValueFactory();
      final URI uri = vf.createURI(uriPart);
      final URI predicate = vf.createURI(FACTBOOK_BASEURI + "Bordering_country");
      List<Statement> stmts = conn.getStatements(uri, null, null, false).asList();
      assertNotNull(stmts);
      assertEquals(2, stmts.size());
      stmts = conn.getStatements(uri, predicate, null, false).asList();
      assertNotNull(stmts);
      assertEquals(0, stmts.size());
      stmts = conn.getStatements(null, predicate, uri, false).asList();
      assertNotNull(stmts);
      assertEquals(1, stmts.size());
      assertEquals("http://www.odci.gov/cia/publications/factbook/geos/gondor", stmts.get(0).getSubject()
        .stringValue());
    } finally {
      conn.close();
    }
  }

  /**
   * write a record to a resource in sesame with an embedded and implicitly created object.
   * 
   * Creates two objects:
   * 
   * <pre>
   * &lt;ciafb:Country rdf:about="http://www.odci.gov/cia/publications/factbook/geos/rivendell.html"&gt;
   *   &lt;ciafb:Location&gt;North of Middle Earth&lt;/ciafb:Location&gt;
   *   &lt;ciafb:Bordering_country rdf:resource="http://www.odci.gov/cia/publications/factbook/geos/rhudaur.html"/&gt;
   *   &lt;ciafb:Natural_resources&gt;Rock&lt;/ciafb:Natural_resources&gt;
   *   &lt;ciafb:Natural_resources&gt;Rubble&lt;/ciafb:Natural_resources&gt;
   *   &lt;ciafb:Name xml:lang="en"&gt;Rivendell&lt;/ciafb:Name&gt;
   *   &lt;ciafb:Name xml:lang="de"&gt;Bruchtal&lt;/ciafb:Name&gt;
   *   &lt;ciafb:Map rdf:resource="http://www.odci.gov/cia/publications/factbook/flags/rivendell-map.jpg"/&gt;
   *   &lt;ciafb:Flag rdf:resource="http://www.odci.gov/cia/publications/factbook/flags/rivendell-lgflag.jpg"/&gt;
   * &lt;/ciafb:Country&gt;
   * &lt;ciafb:Country rdf:about="http://www.odci.gov/cia/publications/factbook/geos/rhudaur.html"&gt;
   *   &lt;ciafb:Location&gt;North of Middle Earth&lt;/ciafb:Location&gt;
   *   &lt;ciafb:Name xml:lang="en"&gt;Rhudaur&lt;/ciafb:Name&gt;
   *   &lt;ciafb:Name xml:lang="de"&gt;Rhudaur&lt;/ciafb:Name&gt;
   *   &lt;ciafb:Map rdf:resource="http://www.odci.gov/cia/publications/factbook/flags/rhudaur-map.jpg"/&gt;
   *   &lt;ciafb:Flag rdf:resource="http://www.odci.gov/cia/publications/factbook/flags/rhudaur-lgflag.jpg"/&gt;
   * &lt;/ciafb:Country&gt;
   * </pre>
   * 
   * @throws Exception
   *           test fails
   */
  public void testWriteWithEmbeddedObjects() throws Exception {
    final String uri = "http://www.odci.gov/cia/publications/factbook/geos/rivendell.html";
    final String id = createBlackboardRecord(getClass().getName(), uri);

    final Record record = getBlackboard().getRecord(id);
    final AnyMap metadata = record.getMetadata();
    metadata.put(ASesameRecordPipelet.PARAM_RECORDFILTER,
      record.getFactory().createStringValue("ontologyAttributes"));
    metadata.put(SesameRecordHelper.ATTRIBUTE_URI, record.getFactory().createStringValue(uri));
    metadata.put(SesameRecordHelper.ATTRIBUTE_TYPE,
      record.getFactory().createStringValue(FACTBOOK_BASEURI + "Country"));
    final AnyMap nameMap = record.getFactory().createAnyMap();
    nameMap.put("en", record.getFactory().createStringValue("Rivendell"));
    nameMap.put("de", record.getFactory().createStringValue("Bruchtal"));
    metadata.put("ciafb:Name", nameMap);
    metadata.put(
      "ciafb:Flag",
      record.getFactory().createStringValue(
        "http://www.odci.gov/cia/publications/factbook/flags/rivendell-lgflag.jpg"));
    metadata.put("ciafb:Map",
      record.getFactory()
        .createStringValue("http://www.odci.gov/cia/publications/factbook/flags/rivendell-map.jpg"));
    metadata.put("ciafb:Location", record.getFactory().createStringValue("North of Middle Earth"));
    final AnySeq boc = record.getFactory().createAnySeq();
    // implicit creation of rhudaur
    boc.add(createRhudaurSubMap(record.getFactory()));
    final AnySeq nar = record.getFactory().createAnySeq();
    nar.add(record.getFactory().createStringValue("Rock"));
    nar.add(record.getFactory().createStringValue("Rubble"));
    metadata.put("ciafb:Bordering_country", boc);
    metadata.put("ciafb:Natural_resources", nar);

    // mark object references as such...
    final AnySeq objectReferences = record.getFactory().createAnySeq();
    objectReferences.add(record.getFactory().createStringValue("ciafb:Map"));
    objectReferences.add(record.getFactory().createStringValue("ciafb:Flag"));
    metadata.put(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES, objectReferences);

    final String[] result = getProcessor().process(getPipelineName(), getBlackboard(), new String[] { id });
    assertNotNull(result);
    assertEquals(1, result.length);
    assertEquals(id, result[0]);

    RepositoryConnection conn = _ontology.getDefaultConnection();
    try {
      logRepositoryExport(conn);
      checkRivendellStatements(conn);
      checkRhudaurStatements(conn);
    } finally {
      conn.close();
    }

    conn = _ontology.getConnection("memory");
    try {
      logRepositoryExport(conn);
      checkRivendellStatements(conn);
      checkRhudaurStatements(conn);
    } finally {
      conn.close();
    }
  }

  /**
   * creates a sub AnyMap of Rhudaur.
   * 
   * @param factory
   *          a DataFactory instance
   * @return a sub AnyMap of Rhudaur.
   */
  private AnyMap createRhudaurSubMap(final DataFactory factory) {
    final AnyMap rhudaurMap = factory.createAnyMap();
    rhudaurMap.put(SesameRecordHelper.ATTRIBUTE_URI,
      "http://www.odci.gov/cia/publications/factbook/geos/rhudaur.html");
    rhudaurMap.put(SesameRecordHelper.ATTRIBUTE_TYPE, factory.createStringValue(FACTBOOK_BASEURI + "Country"));
    final AnyMap rhudaurNameMap = factory.createAnyMap();
    rhudaurNameMap.put("en", factory.createStringValue("Rhudaur"));
    rhudaurNameMap.put("de", factory.createStringValue("Rhudaur"));
    rhudaurMap.put("ciafb:Name", rhudaurNameMap);
    rhudaurMap.put("ciafb:Flag",
      factory.createStringValue("http://www.odci.gov/cia/publications/factbook/flags/rhudaur-lgflag.jpg"));
    rhudaurMap.put("ciafb:Map",
      factory.createStringValue("http://www.odci.gov/cia/publications/factbook/flags/rhudaur-map.jpg"));
    rhudaurMap.put("ciafb:Location", factory.createStringValue("North of Middle Earth"));
    // mark object references as such... also for rhudaur...
    final AnySeq objectReferences = factory.createAnySeq();
    objectReferences.add(factory.createStringValue("ciafb:Map"));
    objectReferences.add(factory.createStringValue("ciafb:Flag"));
    rhudaurMap.put(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES, objectReferences);
    return rhudaurMap;
  }

  /**
   * check statements of rivendell.
   * 
   * @param conn
   *          repository to test
   * @throws RepositoryException
   *           test fails
   */
  private void checkRivendellStatements(final RepositoryConnection conn) throws RepositoryException {
    final URI subject =
      conn.getValueFactory().createURI("http://www.odci.gov/cia/publications/factbook/geos/rivendell.html");
    final RepositoryResult<Statement> stmts = conn.getStatements(subject, null, null, false);
    assertNotNull(stmts);
    boolean enLabelFound = false;
    boolean deLabelFound = false;
    boolean rockFound = false;
    boolean rubbleFound = false;
    int count = 0;
    while (stmts.hasNext()) {
      final Statement stmt = stmts.next();
      final String predicate = stmt.getPredicate().stringValue();
      final String object = stmt.getObject().stringValue();
      count++;
      if (predicate.equals(RDF.TYPE.stringValue())) {
        assertEquals(FACTBOOK_BASEURI + "Country", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Name")) {
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
        final String language = ((org.openrdf.model.Literal) stmt.getObject()).getLanguage();
        assertNotNull(language);
        if ("de".equals(language)) {
          assertEquals("Bruchtal", object);
          deLabelFound = true;
        } else if ("en".equals(language)) {
          assertEquals("Rivendell", object);
          enLabelFound = true;
        } else {
          fail("unknown language " + language);
        }
      } else if (predicate.equals(FACTBOOK_BASEURI + "Location")) {
        assertEquals("North of Middle Earth", object);
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Map")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/rivendell-map.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Flag")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/rivendell-lgflag.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Bordering_country")) {
        assertTrue("http://www.odci.gov/cia/publications/factbook/geos/rhudaur.html".equals(object));
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Natural_resources")) {
        assertTrue("Rock".equals(object) || "Rubble".equals(object));
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
        if ("Rock".equals(object)) {
          rockFound = true;
        } else {
          rubbleFound = true;
        }
      } else {
        fail("predicate " + predicate + " should not be set.");
      }
    }
    final int expectedStatementCount = 9;
    assertEquals(expectedStatementCount, count);
    assertTrue(enLabelFound);
    assertTrue(deLabelFound);
    assertTrue(rockFound);
    assertTrue(rubbleFound);
  }

  /**
   * check statements of Rhudaur.
   * 
   * @param conn
   *          repository to test
   * @throws RepositoryException
   *           test fails
   */
  private void checkRhudaurStatements(final RepositoryConnection conn) throws RepositoryException {
    final URI subject =
      conn.getValueFactory().createURI("http://www.odci.gov/cia/publications/factbook/geos/rhudaur.html");
    final RepositoryResult<Statement> stmts = conn.getStatements(subject, null, null, false);
    assertNotNull(stmts);
    boolean enLabelFound = false;
    boolean deLabelFound = false;
    int count = 0;
    while (stmts.hasNext()) {
      final Statement stmt = stmts.next();
      final String predicate = stmt.getPredicate().stringValue();
      final String object = stmt.getObject().stringValue();
      count++;
      if (predicate.equals(RDF.TYPE.stringValue())) {
        assertEquals(FACTBOOK_BASEURI + "Country", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Name")) {
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
        final String language = ((org.openrdf.model.Literal) stmt.getObject()).getLanguage();
        assertNotNull(language);
        if ("de".equals(language)) {
          assertEquals("Rhudaur", object);
          deLabelFound = true;
        } else if ("en".equals(language)) {
          assertEquals("Rhudaur", object);
          enLabelFound = true;
        } else {
          fail("unknown language " + language);
        }
      } else if (predicate.equals(FACTBOOK_BASEURI + "Location")) {
        assertEquals("North of Middle Earth", object);
        assertTrue(stmt.getObject() instanceof org.openrdf.model.Literal);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Map")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/rhudaur-map.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else if (predicate.equals(FACTBOOK_BASEURI + "Flag")) {
        assertEquals("http://www.odci.gov/cia/publications/factbook/flags/rhudaur-lgflag.jpg", object);
        assertTrue(stmt.getObject() instanceof URI);
      } else {
        fail("predicate " + predicate + " should not be set.");
      }
    }
    final int expectedStatementCount = 6;
    assertEquals(expectedStatementCount, count);
    assertTrue(enLabelFound);
    assertTrue(deLabelFound);
  }

}
