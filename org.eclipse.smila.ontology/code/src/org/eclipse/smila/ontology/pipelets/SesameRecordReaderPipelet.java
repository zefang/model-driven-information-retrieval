/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.ontology.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.eclipse.smila.ontology.records.SesameRecordReader;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.openrdf.model.URI;
import org.openrdf.repository.RepositoryConnection;

/**
 * fill records from ontology.
 * 
 * @author jschumacher
 * 
 */
public class SesameRecordReaderPipelet extends ASesameRecordPipelet {
  /**
   * configuration property name for including inferred statements when reading the ontology.
   */
  public static final String PARAM_INCLUDEINFERRED = "_includeInferred";

  /**
   * default value for "includeInferred": false.
   */
  public static final boolean DEFAULT_INCLUDEINFERRED = false;

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
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * read statements from the ontology into the given records.
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
          final boolean includeInferred =
            parameters.getBooleanParameter(PARAM_INCLUDEINFERRED, DEFAULT_INCLUDEINFERRED);
          final String uriAttribute = parameters.getParameter(PARAM_URI_ATTRIBUTE, PARAM_DEFAULT_URI_ATTRIBUTE);
          final String resourceUri;
          final AnyMap metadata = blackboard.getMetadata(id);
          if (metadata.containsKey(uriAttribute)) {
            resourceUri = metadata.getStringValue(uriAttribute);
          } else {
            // it's the id from the blackboard, so let's guess...
            if ((id.indexOf(':') > 0) && id.length() > id.indexOf(':') + 1) {
              resourceUri = id.substring(id.indexOf(':') + 1);
            } else {
              resourceUri = id;
            }
            if (_log.isWarnEnabled()) {
              _log.warn("Cannot determine the URI. I will use the URI derived from the ID: " + resourceUri);
            }

          }
          final URI uri = repoConn.getValueFactory().createURI(resourceUri);
          final SesameRecordReader reader = new SesameRecordReader(repoConn, includeInferred);
          final String recordFilterName = parameters.getParameter(PARAM_RECORDFILTER, null);
          if (recordFilterName == null) {
            reader.readBlackboardRecord(uri, blackboard, id);
          } else {
            Record ontoRecord = reader.readRecord(uri);
            ontoRecord.setId(id);
            ontoRecord = blackboard.filterRecord(ontoRecord, recordFilterName);
            blackboard.synchronizeRecord(ontoRecord);
          }
          repoConn.close();
        } catch (final Exception ex) {
          throw new ProcessingException("error reading record from ontology", ex);
        }
      }
    }
    return recordIds;
  }
}
