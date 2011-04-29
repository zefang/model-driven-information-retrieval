/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.ontology.test;

import java.io.IOException;
import java.io.StringWriter;
import java.util.UUID;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.xml.XmlSerializationUtils;
import org.eclipse.smila.ontology.SesameOntologyManager;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.bpel.test.AWorkflowProcessorTest;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;
import org.openrdf.rio.RDFHandlerException;
import org.openrdf.rio.rdfxml.util.RDFXMLPrettyWriter;

/**
 * base class for tests that use the ontology via pipelines.
 * 
 * @author jschumacher
 * 
 */
public abstract class AOntologyWorkflowTest extends AWorkflowProcessorTest {
  /**
   * number of minutes per hour.
   */
  public static final int MINUTES_PER_HOUR = 60;

  /**
   * number of milliseconds per hour, used to convert java.util timezone offsets to hour offsets.
   */
  public static final int MILLISECONDS_PER_HOUR = MINUTES_PER_HOUR * 60 * 1000;

  /**
   * sesame service.
   */
  protected SesameOntologyManager _ontology;

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
    _ontology = getService(SesameOntologyManager.class);
    assertNotNull(_ontology);
  }

  /**
   * write an RDFXML export of the repository to debug log (if enabled).
   * 
   * @param conn
   *          repository
   * @throws RepositoryException
   *           error accessing repository
   * @throws RDFHandlerException
   *           error writing RDF
   * @throws IOException
   *           should not happen ...
   */
  protected void logRepositoryExport(final RepositoryConnection conn) throws RepositoryException,
    RDFHandlerException, IOException {
    if (_log.isDebugEnabled()) {
      final StringWriter rdfString = new StringWriter();
      final RDFXMLPrettyWriter writer = new RDFXMLPrettyWriter(rdfString);
      conn.export(writer);
      writer.close();
      _log.debug(rdfString.toString());
    }
  }

  /**
   * write record XML to debug log, if enabled.
   * 
   * @param id
   *          record ID
   * @throws BlackboardAccessException
   *           something fails.
   */
  protected void logRecord(final String id) throws BlackboardAccessException {
    if (_log.isDebugEnabled()) {
      _log.debug(XmlSerializationUtils.serialize2string(getBlackboard().getRecord(id)));
    }
  }

  /**
   * run test pipeline.
   * 
   * @param id
   *          record ID
   * @throws ProcessingException
   *           something fails.
   */
  protected void executeWorkflow(final String id) throws ProcessingException {
    final String[] result = getProcessor().process(getPipelineName(), getBlackboard(), new String[] { id });
    assertNotNull(result);
    assertEquals(1, result.length);
    assertEquals(id, result[0]);
  }

  /**
   * create a record with the resource URI as rdf:about attribute.
   * 
   * @param uri
   *          resource URI
   * @return record ID
   * @throws BlackboardAccessException
   *           something fails.
   */
  protected String createURIAttributeRecord(final String uri) throws BlackboardAccessException {
    final String id = createBlackboardRecord(getClass().getName(), UUID.randomUUID().toString());
    addResource(id, SesameRecordHelper.ATTRIBUTE_URI, uri);
    return id;
  }

  /**
   * add a string attribute value to record on blackboard.
   * 
   * @param id
   *          record id
   * @param name
   *          attribute name
   * @param value
   *          string value
   * @return the new Any value
   * @throws BlackboardAccessException
   *           writing to blackboard failed.
   */
  protected Any addString(final String id, final String name, final String value) throws BlackboardAccessException {
    final Record record = getBlackboard().getRecord(id);
    if (record != null) {
      final Any valueAny = record.getFactory().createStringValue(value);
      final Any oldValue = record.getMetadata().get(name);
      if (oldValue != null) {
        if (oldValue.isSeq()) {
          ((AnySeq) oldValue).add(valueAny);
        } else {
          final AnySeq newSeq = record.getFactory().createAnySeq();
          newSeq.add(oldValue);
          newSeq.add(valueAny);
          record.getMetadata().put(name, newSeq);
        }
      } else {
        record.getMetadata().put(name, valueAny);
      }
      getBlackboard().setRecord(record);
      return valueAny;
    }
    return null;
  }

  /**
   * add a resource attribute value to record on blackboard.
   * 
   * @param id
   *          record id
   * @param name
   *          attribute name
   * @param value
   *          resource value (URI)
   * @return the new Any object
   * @throws BlackboardAccessException
   *           writing to blackboard failed.
   */
  protected Any addResource(final String id, final String name, final String value)
    throws BlackboardAccessException {
    return addString(id, name, value);
  }
}
