/*******************************************************************************
 * Copyright (c) 2008, 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.pipelets;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.openrdf.model.URI;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;

/**
 * pipelet for creating relations between attribute values in ontology.
 * 
 * @author jschumacher
 * 
 */
public class CreateRelationPipelet extends ASesameRecordPipelet {

  /**
   * configuration property/parameter name for specifying the attribute name of the relation subjects:
   * "subjectAttribute".
   */
  public static final String PARAM_SUBJECTATTRIBUTE = "_subjectAttribute";

  /**
   * configuration property/parameter name for specifying the attribute name of the relation objects: "objectAttribute".
   */
  public static final String PARAM_OBJECTATTRIBUTE = "_objectAttribute";

  /**
   * configuration property/parameter name for specifying the attribute name of the relation objects: "objectAttribute".
   */
  public static final String PARAM_OBJECT_IS_RESOURCE = "_objectAttributeIsResource";

  /**
   * configuration property/parameter name for specifying the URI of the relation predicate: "predicateUri".
   */
  public static final String PARAM_PREDICATEURI = "_predicateUri";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    if (recordIds != null && recordIds.length > 0) {
      try {
        final ParameterAccessor parameters = getParameters(blackboard);
        for (final String id : recordIds) {
          parameters.setCurrentRecord(id);
          final RepositoryConnection connection = getRepositoryConnection(parameters);
          try {
            final String subjectAttribute = parameters.getRequiredParameter(PARAM_SUBJECTATTRIBUTE);
            final String objectAttribute = parameters.getRequiredParameter(PARAM_OBJECTATTRIBUTE);
            final String predicateUriString = parameters.getRequiredParameter(PARAM_PREDICATEURI);
            final boolean objectAttributeIsResource =
              parameters.getBooleanParameter(PARAM_OBJECT_IS_RESOURCE, true);
            final URI predicate = createUri(connection, predicateUriString);
            final AnyMap metadata = blackboard.getMetadata(id);
            final Any subjectAny = metadata.get(subjectAttribute);
            if (subjectAny.size() > 0) {
              final AnySeq subjects;
              if (metadata.get(subjectAttribute).isSeq()) {
                subjects = metadata.getSeq(subjectAttribute);
              } else {
                subjects = metadata.getFactory().createAnySeq();
                subjects.add(metadata.get(subjectAttribute));
              }
              final AnySeq objects;
              if (metadata.get(subjectAttribute).isSeq()) {
                objects = metadata.getSeq(objectAttribute);
              } else {
                objects = metadata.getFactory().createAnySeq();
                objects.add(metadata.get(objectAttribute));
              }
              for (int i = 0; i < subjects.size(); i++) {
                final URI subject = createUri(connection, subjects.getStringValue(i));
                for (final Any objectAny : objects) {
                  if (objectAny.isString()) {
                    final Value anyValue = (Value) objectAny;
                    final org.openrdf.model.Value object;
                    if (objectAttributeIsResource) {
                      object = _valueHelper.createUri(connection, anyValue.asString());
                    } else {
                      object = _valueHelper.createLiteral(connection, anyValue, null);
                    }
                    connection.add(subject, predicate, object);
                  } else {
                    if (_log.isWarnEnabled()) {
                      _log.warn("Object '" + objectAny
                        + "' is no string. Cannot create a relation to a not string value.");
                    }
                  }
                }
              }
            }
            connection.commit();
          } catch (final BlackboardAccessException ex) {
            throw new ProcessingException("error accessing blackboard", ex);
          } finally {
            connection.close();
          }
        }
      } catch (final RepositoryException ex) {
        throw new ProcessingException("could not get connection to sesame repository", ex);
      }
    }
    return recordIds;
  }

}
