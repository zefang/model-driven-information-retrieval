/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.test;

import java.io.InputStream;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.ontology.SesameOntologyManager;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.eclipse.smila.utils.config.ConfigUtils;
import org.openrdf.model.Namespace;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryResult;
import org.openrdf.rio.RDFFormat;

/**
 * basic test for access to Sesame repositories via SesameRecordReaderPipelet.
 * 
 * @author jschumacher
 * 
 */
public class TestSesameRecordReaderPipelet extends AOntologyWorkflowTest {

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
    final RepositoryConnection conn = _ontology.getConnection(getRepositoryName());
    conn.clear();
    _log.info("Loading schema file ...");
    InputStream file = ConfigUtils.getConfigStream(SesameOntologyManager.BUNDLE_ID, "CIA-onto-enhanced.rdf");
    conn.add(file, FACTBOOK_BASEURI, RDFFormat.RDFXML);
    file.close();
    conn.commit();
    _log.info("... done");
    _log.info("Loading data file ...");
    file = ConfigUtils.getConfigStream(SesameOntologyManager.BUNDLE_ID, "CIA-facts-enhanced.rdf");
    conn.add(file, FACTBOOK_BASEURI, RDFFormat.RDFXML);
    file.close();
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
   * name of repository to prepare for reading.
   * 
   * @return repository name.
   */
  protected String getRepositoryName() {
    return "native";
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest#getPipelineName()
   */
  @Override
  protected String getPipelineName() {
    return "SesameReadPipeline";
  }

  /**
   * read a record from sesame identified by the key value of the SMILA id.
   * 
   * @throws Exception
   *           test fails
   */
  public void testReadWithID() throws Exception {
    final String id =
      createBlackboardRecord(getClass().getName(), "http://www.odci.gov/cia/publications/factbook/geos/af.html");
    executeWorkflow(id);
    logRecord(id);

    Value value = getBlackboard().getRecord(id).getMetadata().getValue(SesameRecordHelper.ATTRIBUTE_TYPE);
    assertNotNull(value);
    assertEquals(FACTBOOK_BASEURI + "Country", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertEquals("http://www.odci.gov/cia/publications/factbook/geos/af.html", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Name");
    assertNotNull(value);
    assertEquals("Afghanistan", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Flag");
    assertNotNull(value);
    assertEquals("http://www.odci.gov/cia/publications/factbook/flags/af-lgflag.jpg", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Map");
    assertNotNull(value);
    assertEquals("http://www.odci.gov/cia/publications/factbook/maps/af-map.jpg", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Location");
    assertNotNull(value);
    assertEquals("Southern Asia, north and west of Pakistan, east of Iran", value.asString());

    AnySeq anySeq = getBlackboard().getRecord(id).getMetadata().getSeq("ciafb:Bordering_country");
    final int expectedBorderingCountries = 6;
    assertEquals(expectedBorderingCountries, anySeq.size());

    anySeq = getBlackboard().getRecord(id).getMetadata().getSeq("ciafb:Natural_resources");
    final int expectedNaturalResources = 12;
    assertEquals(expectedNaturalResources, anySeq.size());
  }

  /**
   * read a record from sesame identified by the value of rdf:about attribute.
   * 
   * @throws Exception
   *           test fails
   */
  public void testReadWithAttribute() throws Exception {
    final String id = createURIAttributeRecord("http://www.odci.gov/cia/publications/factbook/geos/al.html");
    executeWorkflow(id);

    logRecord(id);

    Value value = getBlackboard().getRecord(id).getMetadata().getValue(SesameRecordHelper.ATTRIBUTE_TYPE);
    assertNotNull(value);
    assertEquals(FACTBOOK_BASEURI + "Country", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue(SesameRecordHelper.ATTRIBUTE_URI);
    assertEquals("http://www.odci.gov/cia/publications/factbook/geos/al.html", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Name");
    assertNotNull(value);
    assertEquals("Albania", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Flag");
    assertNotNull(value);
    assertEquals("http://www.odci.gov/cia/publications/factbook/flags/al-lgflag.jpg", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Map");
    assertNotNull(value);
    assertEquals("http://www.odci.gov/cia/publications/factbook/maps/al-map.jpg", value.asString());

    value = getBlackboard().getRecord(id).getMetadata().getValue("ciafb:Location");
    assertNotNull(value);
    assertEquals(
      "Southeastern Europe, bordering the Adriatic Sea and Ionian Sea, between Greece and Serbia and Montenegro",
      value.asString());

    AnySeq anySeq = getBlackboard().getRecord(id).getMetadata().getSeq("ciafb:Bordering_country");
    final int expectedBorderingCountries = 3;
    assertEquals(expectedBorderingCountries, anySeq.size());

    anySeq = getBlackboard().getRecord(id).getMetadata().getSeq("ciafb:Natural_resources");
    final int expectedNaturalResources = 7;
    assertEquals(expectedNaturalResources, anySeq.size());
  }

}
