/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.ontology.pipelets;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.eclipse.smila.ontology.records.SesameRecordWriter;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.openrdf.repository.RepositoryConnection;

/**
 * write records to ontology.
 * 
 * @author jschumacher
 * 
 */
public class SesameRecordWriterPipelet extends ASesameRecordPipelet {

  /**
   * configuration property name for default types of resources to create if not set in attribute "rdf:type".
   */
  public static final String PARAM_TYPEURI = "_typeUri";

  /**
   * configuration property name: which parameter contains the URI.
   */
  public static final String PARAM_URI_ATTRIBUTE = "_uriAttribute";

  /**
   * default uri attribute.
   */
  public static final String PARAM_DEFAULT_URI_ATTRIBUTE = SesameRecordHelper.ATTRIBUTE_URI;

  /**
   * local logger.
   */
  // private final Log _log = LogFactory.getLog(getClass());

  /**
   * write the records from the blackboard to a Sesame ontology.
   * 
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet#process(org.eclipse.smila.blackboard.Blackboard,
   *      org.eclipse.smila.datamodel.id.Id[])
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    if (recordIds != null) {
      final ParameterAccessor parameters = getParameters(blackboard);
      for (final String id : recordIds) {
        try {
          parameters.setCurrentRecord(id);
          final RepositoryConnection repoConn = getRepositoryConnection(parameters);
          final String recordFilterName = parameters.getParameter(ASesameRecordPipelet.PARAM_RECORDFILTER, null);
          final String typeUri = parameters.getParameter(PARAM_TYPEURI, null);
          final String uriAttribute = parameters.getParameter(PARAM_URI_ATTRIBUTE, PARAM_DEFAULT_URI_ATTRIBUTE);
          final SesameRecordWriter writer = new SesameRecordWriter(repoConn);
          if (recordFilterName == null) {
            writer.writeBlackboardRecord(blackboard, id, typeUri, uriAttribute);
          } else {
            final Record record = blackboard.getRecord(id, recordFilterName);
            final Record unfilteredRecord = blackboard.getRecord(id);
            // copy mode Attributes to the filtered record.
            Any copyProperties = unfilteredRecord.getMetadata().get(SesameRecordHelper.ATTRIBUTE_DELETE_ALL);
            if (copyProperties != null) {
              record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_DELETE_ALL, copyProperties);
            }
            copyProperties = unfilteredRecord.getMetadata().get(SesameRecordHelper.ATTRIBUTE_DELETE_PROPERTIES);
            if (copyProperties != null) {
              record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_DELETE_PROPERTIES, copyProperties);
            }
            copyProperties = unfilteredRecord.getMetadata().get(SesameRecordHelper.ATTRIBUTE_REVERSE_PROPERTIES);
            if (copyProperties != null) {
              record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_REVERSE_PROPERTIES, copyProperties);
            }
            copyProperties = unfilteredRecord.getMetadata().get(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES);
            if (copyProperties != null) {
              record.getMetadata().put(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES, copyProperties);
            }
            writer.writeRecord(record, typeUri, uriAttribute);
          }
          repoConn.close();
        } catch (final Exception ex) {
          throw new ProcessingException("error writing record to ontology", ex);
        }
      }
    }
    return recordIds;
  }

}
