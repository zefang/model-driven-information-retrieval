/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.pipelets;

import java.util.Iterator;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.parameters.ParameterAccessor;
import org.openrdf.model.URI;
import org.openrdf.model.vocabulary.RDF;
import org.openrdf.model.vocabulary.RDFS;
import org.openrdf.query.BindingSet;
import org.openrdf.query.MalformedQueryException;
import org.openrdf.query.QueryEvaluationException;
import org.openrdf.query.QueryLanguage;
import org.openrdf.query.TupleQuery;
import org.openrdf.query.TupleQueryResult;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;

/**
 * ensure that a resource with a specified type and name exists. The name property is configurable, by default
 * rdfs:label is used. The created URIs are written to some attribute for later reference.
 * 
 * @author jschumacher
 * 
 */
public class CreateResourcePipelet extends ASesameRecordPipelet {

  /**
   * configuration property/parameter name for specifying the attribute name containing resource names:
   * "labelAttribute".
   */
  public static final String PARAM_LABELATTRIBUTE = "_labelAttribute";

  /**
   * configuration property/parameter name for specifying the attribute name that takes the created/found URIs:
   * "uriAttribute".
   */
  public static final String PARAM_URIATTRIBUTE = "_uriAttribute";

  /**
   * configuration property/parameter name for specifying the predicate used to lookup names: "labelPredicate"
   * (optional, default is rdfs:label).
   */
  public static final String PARAM_LABELPREDICATE = "_labelPredicate";

  /**
   * configuration property/parameter name for specifying the URI of the required class: "typeUri".
   */
  public static final String PARAM_TYPEURI = "_typeUri";

  /**
   * configuration property/parameter name for specifying a prefix for the URIs created from the resource name:
   * "uriPrefix" (optional, default is "urn:").
   */
  public static final String PARAM_URIPREFIX = "_uriPrefix";

  /**
   * local logger.
   */
  // private final Log _log = LogFactory.getLog(getClass());
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
            final String labelAttribute = parameters.getRequiredParameter(PARAM_LABELATTRIBUTE);
            final String uriAttribute = parameters.getRequiredParameter(PARAM_URIATTRIBUTE);
            final String typeUriString = parameters.getRequiredParameter(PARAM_TYPEURI);
            final URI typeUri = createUri(connection, typeUriString);
            final String labelPredicateString =
              parameters.getParameter(PARAM_LABELPREDICATE, RDFS.LABEL.stringValue());
            final URI labelPredicate = createUri(connection, labelPredicateString);
            final String uriPrefix = parameters.getParameter(PARAM_URIPREFIX, "urn:");
            final Record record = blackboard.getRecord(id);
            if (record != null) {
              final Any labelAny = record.getMetadata().get(labelAttribute);
              record.getMetadata().remove(uriAttribute);
              if (labelAny != null) {
                // one or more labels found.
                final Iterator<Any> anyIter = labelAny.iterator();
                while (anyIter.hasNext()) {
                  final Any valueAny = anyIter.next();
                  final String value;
                  if (valueAny.isString()) {
                    value = ((Value) valueAny).asString();
                  } else {
                    value = valueAny.toString();
                  }
                  URI resource = findExistingResource(value, labelPredicate, typeUri, connection);
                  if (resource == null) {
                    resource = createResource(value, labelPredicate, typeUri, uriPrefix, connection);
                  }
                  addValue(record.getMetadata(), uriAttribute, resource.stringValue());
                  blackboard.setRecord(record);
                }
              }
            }
            connection.commit();
          } catch (final Exception ex) {
            throw new ProcessingException("error creating a resourse", ex);
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

  /**
   * adds a string value to an attribute of a map. if the attribute did not exist, it will be created, if the attribute
   * existed and was a Value a AnySeq is created with the old and the new value.
   * 
   * @param map
   *          the AnyMap to manipulate
   * @param attributeName
   *          the name of the attribute
   * @param stringValue
   *          the value to add
   */
  private void addValue(AnyMap map, String attributeName, String stringValue) {
    if (map.containsKey(attributeName)) {
      final Any oldVal = map.get(attributeName);
      if (oldVal.isSeq()) {
        ((AnySeq) oldVal).add(oldVal.getFactory().createStringValue(stringValue));
      } else {
        final AnySeq newSeq = oldVal.getFactory().createAnySeq();
        newSeq.add(oldVal);
        newSeq.add(oldVal.getFactory().createStringValue(stringValue));
        map.put(attributeName, newSeq);
      }
    } else {
      map.put(attributeName, map.getFactory().createStringValue(stringValue));
    }
  }

  /**
   * find an existing resource of the given type with the given string value in the given predicate.
   * 
   * @param value
   *          resource name.
   * @param labelPredicate
   *          predicate specifying names.
   * @param typeUri
   *          URI of resource type.
   * @param connection
   *          repository connection.
   * @return a matching URI, or null if none was found.
   * @throws RepositoryException
   *           error in search.
   * @throws MalformedQueryException
   *           error in search.
   * @throws QueryEvaluationException
   *           error in search.
   */
  private URI findExistingResource(final String value, final URI labelPredicate, final URI typeUri,
    final RepositoryConnection connection) throws RepositoryException, MalformedQueryException,
    QueryEvaluationException {
    final String sparql = createSparql(value, labelPredicate, typeUri);
    final TupleQuery query = connection.prepareTupleQuery(QueryLanguage.SPARQL, sparql);
    final TupleQueryResult result = query.evaluate();
    URI resource = null;
    if (result.hasNext()) {
      final BindingSet binding = result.next();
      final String varName = binding.getBindingNames().iterator().next();
      resource = (URI) binding.getValue(varName);
    }
    result.close();
    return resource;
  }

  /**
   * create the SPARQL query for {@link #findExistingResource(String, URI, URI, RepositoryConnection)}.
   * 
   * @param value
   *          resource name.
   * @param labelPredicate
   *          predicate specifying names.
   * @param typeUri
   *          URI of resource type.
   * @return SPARQL query for lookup.
   */
  private String createSparql(final String value, final URI labelPredicate, final URI typeUri) {
    final StringBuilder sparql = new StringBuilder("SELECT ?r ");
    sparql.append("{?r <").append(RDF.TYPE).append("> <").append(typeUri.stringValue()).append("> . ");
    sparql.append("?r <").append(labelPredicate.stringValue()).append("> \"").append(value).append("\" }");
    return sparql.toString();
  }

  /**
   * create a new resource of the given type with the given label.
   * 
   * @param value
   *          resource name.
   * @param labelPredicate
   *          predicate specifying names.
   * @param typeUri
   *          URI of resource type.
   * @param uriPrefix
   *          prefix for resource URI.
   * @param connection
   *          repository connection.
   * @return new URI.
   * @throws RepositoryException
   *           error in repository access.
   */
  private URI createResource(final String value, final URI labelPredicate, final URI typeUri,
    final String uriPrefix, final RepositoryConnection connection) throws RepositoryException {
    final String uriName = value.replaceAll("\\W", "");
    final String uriString = uriPrefix + uriName;
    final URI uri = _valueHelper.createUri(connection, uriString);
    connection.add(uri, RDF.TYPE, typeUri);
    connection.add(uri, labelPredicate, connection.getValueFactory().createLiteral(value));
    connection.commit();
    return uri;
  }
}
