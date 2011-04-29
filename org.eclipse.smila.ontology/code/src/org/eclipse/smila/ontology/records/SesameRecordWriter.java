/*******************************************************************************
 * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.ontology.records;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.openrdf.model.Resource;
import org.openrdf.model.Statement;
import org.openrdf.model.URI;
import org.openrdf.model.vocabulary.RDF;
import org.openrdf.repository.RepositoryConnection;
import org.openrdf.repository.RepositoryException;

/**
 * writes a record to a sesame ontology. Implementation is not thread safe!
 * 
 * @author jschumacher
 * 
 */
public class SesameRecordWriter {
  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * my repository connection.
   */
  private final RepositoryConnection _repoConn;

  /**
   * statements to add.
   */
  private Collection<Statement> _addStmts;

  /**
   * statements to delete.
   */
  private Collection<Statement> _clearStmts;

  /**
   * value creation helper.
   */
  private final SesameValueHelper _valueHelper = SesameValueHelper.INSTANCE;

  /**
   * create instance for given connection.
   * 
   * @param repoConn
   *          Sesame repository connection to write to.
   */
  public SesameRecordWriter(final RepositoryConnection repoConn) {
    super();
    this._repoConn = repoConn;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.ontology.records.SesameRecordWriter
   *      #writeBlackboardRecord(org.eclipse.smila.blackboard.Blackboard, org.eclipse.smila.datamodel.id.Id,
   *      org.openrdf.repository.RepositoryConnection)
   */
  public URI writeBlackboardRecord(final Blackboard blackboard, final String id, final String defaultTypeUri,
    final String uriAttribute) throws BlackboardAccessException, RepositoryException {
    final Record record = blackboard.getRecord(id);
    return writeRecord(record, defaultTypeUri, uriAttribute);
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.ontology.records.SesameRecordWriter #writeRecord(org.eclipse.smila.datamodel.record.Record,
   *      org.openrdf.repository.RepositoryConnection)
   */
  public URI writeRecord(final Record record, final String defaultTypeUri, final String uriAttribute)
    throws RepositoryException {
    boolean commit = false;
    try {
      _repoConn.setAutoCommit(false);
      _addStmts = new ArrayList<Statement>();
      _clearStmts = new ArrayList<Statement>();
      final Collection<String> clearedProperties = new ArrayList<String>();
      final Collection<String> reversedProperties = getReversedProperties(record.getMetadata());
      final Collection<String> objectProperties = getObjectProperties(record.getMetadata());
      final URI uri = findUri(record.getMetadata(), uriAttribute);
      final AnyMap metadata = record.getMetadata();
      // deleteAll?
      if (metadata.containsKey(SesameRecordHelper.ATTRIBUTE_DELETE_ALL)
        && Boolean.TRUE.equals(metadata.containsKey(SesameRecordHelper.ATTRIBUTE_DELETE_ALL))) {
        clearResource(uri);
        commit = true;
        return uri;
      }
      // deleteProperties
      if (metadata.containsKey(SesameRecordHelper.ATTRIBUTE_DELETE_PROPERTIES)) {
        final Any delerePropertiesAny = metadata.get(SesameRecordHelper.ATTRIBUTE_DELETE_PROPERTIES);
        if (delerePropertiesAny != null) {
          final Iterator<Any> iter = delerePropertiesAny.iterator();
          while (iter.hasNext()) {
            final Any valueAny = iter.next();
            if (valueAny.isString()) {
              clearedProperties.add(((Value) valueAny).asString());
            }
          }
        }
      }

      for (Entry<String, Any> entry : metadata.entrySet()) {
        if (!uriAttribute.equals(entry.getKey())) {
          createStatements(uri, entry.getKey(), entry.getValue(), defaultTypeUri, clearedProperties,
            reversedProperties.contains(entry.getKey()), objectProperties);
        }
      }
      if (!_addStmts.isEmpty()) {
        for (final Statement stmt : _clearStmts) {
          _repoConn.remove(stmt.getSubject(), stmt.getPredicate(), stmt.getObject());
        }
        for (final Statement stmt : _addStmts) {
          try {
            _log.debug("adding stmt: " + stmt);
            _repoConn.add(stmt);
          } catch (final Exception ex) {
            _log.error("failed to add a stmt", ex);
          }
        }
        commit = true;
      }
      return uri;
    } finally {
      _addStmts = null;
      _clearStmts = null;
      if (commit) {
        _repoConn.commit();
      } else {
        _repoConn.rollback();
      }
    }
  }

  /**
   * Returns a collection of all properties marked as reverseProperties for the given Map.
   * 
   * Reverse properties must be marked as follows:
   * 
   * <pre>
   * &lt;rec:Map key="org.eclipse.smila.ontology"&gt;
   *    &lt;rec:Seq key="_reverseProperties"&gt;
   *       &lt;rec:Val&gt;eclipse:isCommitterOf&lt;/rec:Val&gt;
   *       &lt;rec:Val&gt;someThingElse:someOtherProperty&lt;rec:Val&gt;
   *    &lt;/rec:Seq&gt;
   * &lt;/rec:Map&gt;
   * </pre>
   * 
   * @param objectAsAnyMap
   *          the object as AnyMap
   * @return a collection of all properties marked as reverseProperties for the given Map.
   */
  private Collection<String> getReversedProperties(AnyMap objectAsAnyMap) {
    final Collection<String> reversedProperties = new ArrayList<String>();
    if (objectAsAnyMap.containsKey(SesameRecordHelper.ATTRIBUTE_REVERSE_PROPERTIES)) {
      final Any reversePropertiesAny = objectAsAnyMap.get(SesameRecordHelper.ATTRIBUTE_REVERSE_PROPERTIES);
      if (reversePropertiesAny != null) {
        final Iterator<Any> iter = reversePropertiesAny.iterator();
        while (iter.hasNext()) {
          final Any valueAny = iter.next();
          if (valueAny.isString()) {
            reversedProperties.add(((Value) valueAny).asString());
          }
        }
      }
    }
    return reversedProperties;
  }

  /**
   * Returns a collection of all properties marked as reverseProperties for the given Map.
   * 
   * Reverse properties must be marked as follows:
   * 
   * <pre>
   * &lt;rec:Map key="org.eclipse.smila.ontology"&gt;
   *    &lt;rec:Seq key="_objectProperties"&gt;
   *       &lt;rec:Val&gt;eclipse:isCommitterOf&lt;/rec:Val&gt;
   *       &lt;rec:Val&gt;someThingElse:someOtherProperty&lt;rec:Val&gt;
   *    &lt;/rec:Seq&gt;
   * &lt;/rec:Map&gt;
   * </pre>
   * 
   * @param objectAsAnyMap
   *          the object as AnyMap
   * @return a collection of all properties marked as reverseProperties for the given Map. It also includes the reverse
   *         properties, since these also must refer to objects, no literals.
   */
  private Collection<String> getObjectProperties(AnyMap objectAsAnyMap) {
    final Collection<String> objectProperties = getReversedProperties(objectAsAnyMap);
    if (objectAsAnyMap.containsKey(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES)) {
      final Any objectPropertiesAny = objectAsAnyMap.get(SesameRecordHelper.ATTRIBUTE_OBJECT_PROPERTIES);
      if (objectPropertiesAny != null) {
        final Iterator<Any> iter = objectPropertiesAny.iterator();
        while (iter.hasNext()) {
          final Any valueAny = iter.next();
          if (valueAny.isString()) {
            objectProperties.add(((Value) valueAny).asString());
          }
        }
      }
    }
    return objectProperties;
  }

  /**
   * remove an object completely.
   * 
   * @param uri
   *          object uri
   * @throws RepositoryException
   *           error removing statements.
   */
  private void clearResource(final URI uri) throws RepositoryException {
    _repoConn.remove((URI) null, (URI) null, uri);
    _repoConn.remove(uri, (URI) null, null);
  }

  /**
   * @param uri
   *          object URI
   * @param attributeName
   *          attribute name
   * @param attribute
   *          Any object describing the attribute (or sub-objects)
   * @param defaultTypeUri
   *          optional default type to use if rdf:type attribute is not set.
   * @param deletedProperties
   *          the properties that are marked as to be deleted
   * @param isReverse
   *          is the attribute a reverse attribute
   * @param objectProperties
   *          the attributes that are object attributes.
   * @throws RepositoryException
   *           cannot find URI of included sub object
   */
  private void createStatements(final URI uri, final String attributeName, final Any attribute,
    final String defaultTypeUri, final Collection<String> deletedProperties, final boolean isReverse,
    final Collection<String> objectProperties) throws RepositoryException {
    if (attributeName == null || attributeName.startsWith(SesameRecordHelper.PREFIX_SYSTEM_ATTRIBUTE_NAMES)) {
      return;
    } else if (attribute.isMap() && ((AnyMap) attribute).containsKey(SesameRecordHelper.ATTRIBUTE_URI)) {
      final AnyMap subObject = (AnyMap) attribute;
      // this is a sub object to be handled recursively.
      if (_log.isDebugEnabled()) {
        _log.debug("recursive sub object found for attribute '" + attributeName + "' : " + attribute);
      }
      final Collection<String> reversedProperties = getReversedProperties(subObject);
      final Collection<String> subObjectProperties = getObjectProperties(subObject);
      final URI subUri = findUri(subObject, SesameRecordHelper.ATTRIBUTE_URI);
      for (Entry<String, Any> entry : subObject.entrySet()) {
        if (!SesameRecordHelper.ATTRIBUTE_URI.equals(entry.getKey())) {
          // use the URI and reversed properties of the sub-object, not the super-object,
          // deletedProperties are ignored in to be created sub-object!
          createStatements(subUri, entry.getKey(), entry.getValue(), defaultTypeUri, null,
            reversedProperties.contains(entry.getKey()), subObjectProperties);
        } else {
          // must add the URI of the new sub object to the original object with the original properties...
          final Collection<String> newObjectReferences = new HashSet<String>(objectProperties);
          newObjectReferences.add(attributeName);
          createStatements(uri, attributeName, entry.getValue(), defaultTypeUri, deletedProperties, isReverse,
            newObjectReferences);
        }
      }
    } else if (attribute.isSeq()) {
      // sequence : iterate through it with original call parameters...
      final Iterator<Any> iter = attribute.iterator();
      while (iter.hasNext()) {
        createStatements(uri, attributeName, iter.next(), defaultTypeUri, deletedProperties, isReverse,
          objectProperties);
      }
    } else {
      final URI predicate = _valueHelper.createUri(_repoConn, attributeName);
      boolean haveTypeStatement = false;

      // check if existing values should be removed.
      if (deletedProperties != null && deletedProperties.contains(attributeName)) {
        addClearStatement(uri, predicate, isReverse);
      }

      final Collection<org.openrdf.model.Value> rdfValues = new ArrayList<org.openrdf.model.Value>();
      if (attribute.isMap()) {
        // maps, i.e. locale specific entries with locale as key:
        for (Entry<String, Any> entry : ((AnyMap) attribute).entrySet()) {
          rdfValues.add(_valueHelper.createLiteral(_repoConn, (Value) entry.getValue(), entry.getKey()));
        }
      } else {
        // single value
        final Any anyValue = attribute;
        if (RDF.TYPE.equals(predicate)) {
          rdfValues.add(_valueHelper.createUri(_repoConn, ((Value) anyValue).asString()));
          haveTypeStatement = true;
        } else {
          if (objectProperties.contains(attributeName)) {
            rdfValues.add(_valueHelper.createUri(_repoConn, ((Value) anyValue).asString()));
          } else {
            rdfValues.add(_valueHelper.createLiteral(_repoConn, (Value) anyValue, null));
          }
        }
      }
      for (org.openrdf.model.Value rdfValue : rdfValues) {
        if (isReverse && rdfValue instanceof URI) {
          _addStmts.add(_repoConn.getValueFactory().createStatement((URI) rdfValue, predicate, uri));
        } else {
          _addStmts.add(_repoConn.getValueFactory().createStatement(uri, predicate, rdfValue));
        }
      }
      if (!haveTypeStatement && defaultTypeUri != null) {
        final URI defaultType = _valueHelper.createUri(_repoConn, defaultTypeUri);
        _addStmts.add(_repoConn.getValueFactory().createStatement(uri, RDF.TYPE, defaultType));
      }
    }
  }

  /**
   * add a clear-statement for the given uri, predicate and drection.
   * 
   * @param uri
   *          object uri
   * @param predicate
   *          predicate to clear
   * @param isReverse
   *          if true, delete statements with uri as <em>object</em>.
   */
  private void addClearStatement(final Resource uri, final URI predicate, final boolean isReverse) {
    if (isReverse) {
      _clearStmts.add(_repoConn.getValueFactory().createStatement((URI) null, predicate, uri));
    } else {
      _clearStmts.add(_repoConn.getValueFactory().createStatement(uri, predicate, null));
    }
  }

  /**
   * find resource URI in record ID or attributes.
   * 
   * @param metadata
   *          object metadata
   * @param uriAttribute
   *          the attribute the URI is stored
   * @return URI for record
   * @throws RepositoryException
   *           no URI found in record.
   */
  private URI findUri(final AnyMap metadata, final String uriAttribute) throws RepositoryException {
    URI uri = null;
    if (metadata.containsKey(uriAttribute)) {
      final String uriLiteral = metadata.getStringValue(uriAttribute);
      if (uriLiteral != null) {
        uri = _valueHelper.createUri(_repoConn, uriLiteral);
      }
    }
    if (uri == null) {
      throw new RepositoryException("did not find a resource URI for record.");
    }
    return uri;
  }
}
