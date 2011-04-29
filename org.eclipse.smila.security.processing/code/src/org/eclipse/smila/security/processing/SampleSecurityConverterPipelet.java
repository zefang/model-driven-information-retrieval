/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. 
 * This program and the accompanying materials are made available under the terms of the Eclipse Public License v1.0 
 * which accompanies this distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.security.processing;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.security.SecurityAttribute;
import org.eclipse.smila.security.SecurityAttributes.AccessRightType;
import org.eclipse.smila.security.SecurityAttributes.EntityType;
import org.eclipse.smila.security.SecurityException;
import org.eclipse.smila.security.SecurityResolver;
import org.eclipse.smila.utils.service.ServiceUtils;

/**
 * Sample Security Converter Pipelet.
 */
public class SampleSecurityConverterPipelet implements Pipelet {

  /**
   * Constant for the property readUsersAttributeName.
   */
  public static final String PROP_READ_USERS_ATTRIBUTE_NAME = "readUsersAttributeName";

  /**
   * Constant for the property resolveGroups.
   */
  public static final String PROP_RESOLVE_GROUPS = "resolveGroups";

  /**
   * Constant for the property resolveUserNames.
   */
  public static final String PROP_RESOLVE_USER_NAMES = "resolveUserNames";

  /**
   * Constant for the property resolvedUserNamePropertyName.
   */
  public static final String PROP_RESOLVED_USER_NAME_PROPERTY_NAME = "resolvedUserNamePropertyName";

  /**
   * name of annotation configuring the type of execution.
   */
  public static final String EXECUTION_MODE = "_executionMode";

  /**
   * Types of execution modes this service supports.
   */
  public enum ExecutionMode {

    /**
     * Add the record to the index.
     */
    INDEX,

    /**
     * Delete the id from the index.
     */
    SEARCH
  };

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(SampleSecurityConverterPipelet.class);

  /**
   * The configuration.
   */
  private AnyMap _configuration;

  /**
   * Name of the attribute to store the users with read access in.
   */
  private String _readUsersAttributeName;

  /**
   * Boolean flag if to resolve groups to users.
   */
  private boolean _resolveGroups;

  /**
   * Boolean flag if to resolver users to display names.
   */
  private boolean _resolveUserNames;

  /**
   * The property to retrieve for a user as display name.
   */
  private String _resolvedUserNameProperty;

  /**
   * The SecurityResolver to use (optional).
   */
  private SecurityResolver _securityResolver;

  /**
   * Reads the configuration.
   * 
   * {@inheritDoc}
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
    if (_configuration != null) {
      _readUsersAttributeName = (String) _configuration.getStringValue(PROP_READ_USERS_ATTRIBUTE_NAME);
      _resolveGroups = _configuration.getBooleanValue(PROP_RESOLVE_GROUPS) == null ? false : true;
      _resolveUserNames = _configuration.getBooleanValue(PROP_RESOLVE_USER_NAMES) == null ? false : true;
      _resolvedUserNameProperty = _configuration.getStringValue(PROP_RESOLVED_USER_NAME_PROPERTY_NAME);
    } else {
      _readUsersAttributeName = null;
      _resolveGroups = false;
      _resolvedUserNameProperty = null;
      _resolveUserNames = false;
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(Blackboard blackboard, String[] recordIds) throws ProcessingException {
    for (int i = 0; i < recordIds.length; i++) {
      try {
        final String executionModeValue = blackboard.getMetadata(recordIds[i]).getStringValue(EXECUTION_MODE);
        if (executionModeValue != null) {
          final ExecutionMode executionMode = ExecutionMode.valueOf(executionModeValue);
          switch (executionMode) {
            case INDEX:
              convertToAttributes(blackboard, recordIds[i]);
              break;
            case SEARCH:
              convertToFilter(blackboard, recordIds[i]);
              break;
            default:
              break;
          }
        }
      } catch (final Exception ex) {
        if (_log.isErrorEnabled()) {
          _log.error("error processing record " + recordIds[i], ex);
        }
      }
    } // for
    return recordIds;
  }

  /**
   * gets the SecurityResolver service.
   * 
   * @return the SecurityResolver.
   */
  private synchronized SecurityResolver getSecurityResolver() {
    if (_securityResolver == null) {
      try {
        _securityResolver = ServiceUtils.getService(SecurityResolver.class);
      } catch (final InterruptedException e) {
        if (_log.isWarnEnabled()) {
          _log.warn("Interrupted while getting SecurityResolver service.");
        }
      }
    }
    return _securityResolver;
  }

  /**
   * Converts the security attributes into record metadata values for indexing.
   * 
   * @param blackboard
   *          the BlackboardService
   * @param id
   *          the record Id
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws SecurityException
   *           if any security error occurs
   */
  private void convertToAttributes(final Blackboard blackboard, final String id) throws BlackboardAccessException,
    SecurityException {
    final SecurityAttribute sa = new SecurityAttribute(blackboard.getRecord(id));
    final Set<String> readAccessRights = getReadAccessRights(sa);

    if (!readAccessRights.isEmpty()) {
      // create attribute and add values
      final AnySeq values = blackboard.getDataFactory().createAnySeq();
      for (final String value : readAccessRights) {
        values.add(value);
      }
      blackboard.getMetadata(id).put(_readUsersAttributeName, values);
    }

    if (_log.isTraceEnabled()) {
      _log.trace("converted security information for id " + id + " into attribute values");
    }

  }

  /**
   * Converts the security information of a record into a query filter and appends it to the query.
   * 
   * @param blackboard
   *          the BlackboardService
   * @param id
   *          the record Id
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws SecurityException
   *           if any security error occurs
   */
  private void convertToFilter(final Blackboard blackboard, final String id) throws BlackboardAccessException,
    SecurityException {
    final SecurityAttribute sa = new SecurityAttribute(blackboard.getRecord(id));
    final Set<String> readAccessRights = getReadAccessRights(sa);

    if (!readAccessRights.isEmpty()) {

      /* filter structure in search request record:      
        <Seq key="filter">
          <Map>
            <Val key="attribute">_readUsersAttributeName</Val>
            <Seq key="oneOf">
              <Val>pratchett</Val>
              <Val>adams</Val>
            </Seq>
          </Map>
          <Map>
            <Val key="attribute">...</Val>
            ...
          </Map>
        </Seq>
      */

      // get filter section (create filter section if it doesn't exist)
      AnySeq filterSection = (AnySeq) blackboard.getRecord(id).getMetadata().get(QueryConstants.FILTER);
      if (filterSection == null) {
        filterSection = blackboard.getDataFactory().createAnySeq();
        blackboard.getRecord(id).getMetadata().put(QueryConstants.FILTER, filterSection);
      }
      // find filter section for attribute (create if it doesn't exist)
      AnyMap filterSectionForAttribute = null;
      for (final Any filterSectionEntry : filterSection) {
        if (_readUsersAttributeName.equals(((AnyMap) filterSectionEntry).getStringValue(QueryConstants.ATTRIBUTE))) {
          filterSectionForAttribute = (AnyMap) filterSectionEntry;
        }
      }
      if (filterSectionForAttribute == null) {
        filterSectionForAttribute = blackboard.getDataFactory().createAnyMap();
        filterSectionForAttribute.put(QueryConstants.ATTRIBUTE, _readUsersAttributeName);
        filterSection.add(filterSectionForAttribute);
      }

      // create security "oneOf" filter and put new filter in attribute's filter section       
      final AnySeq oneOfFilter = blackboard.getDataFactory().createAnySeq();
      for (final String value : readAccessRights) {
        oneOfFilter.add(value);
      }
      filterSectionForAttribute.put(QueryConstants.FILTER_ONEOF, oneOfFilter);

      // ensure that the attribute exists (some search engines need attribute value when applying filters)
      if (!blackboard.getMetadata(id).containsKey(_readUsersAttributeName)) {
        blackboard.getMetadata(id).put(_readUsersAttributeName, "dummy");
      }
    }

    if (_log.isTraceEnabled()) {
      _log.trace("converted security information for id " + id + " into query filter");
    }
  }

  /**
   * Gets the access rights values from the security information. Depending on the configuration the return values are
   * the plain values provided by a crawler/search client or are resolved against a SecurityResolver.
   * 
   * @param sa
   *          the SecurityAnnotation
   * @return a Set of Strings containing the values
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws SecurityException
   *           if any security error occurs
   */
  private Set<String> getReadAccessRights(final SecurityAttribute sa) throws BlackboardAccessException,
    SecurityException {
    final HashSet<String> accessRights = new HashSet<String>();
    final AnySeq users = sa.getAccessRights(AccessRightType.READ, EntityType.PRINCIPALS);
    final SecurityResolver securityResolver = getSecurityResolver();
    // check if there was a security resolver set, else skip any resolving
    if (securityResolver != null) {
      if (users != null) {
        for (final Any user : users) {
          final String userDN = securityResolver.resolvePrincipal(((Value) user).asString());
          accessRights.add(userDN);
        }
      }

      // check if to resolve members of groups
      if (_resolveGroups) {
        final AnySeq groups = sa.getAccessRights(AccessRightType.READ, EntityType.GROUPS);
        if (groups != null) {
          for (final Any group : groups) {
            final String groupDN = securityResolver.resolvePrincipal(((Value) group).asString());
            final Set<String> groupMembers = securityResolver.resolveGroupMembers(groupDN);
            accessRights.addAll(groupMembers);
          } // for
        } // if
      } // if

      // check if to resolve user names to some display name
      final Set<String> displayNames;
      if (_resolveUserNames) {
        displayNames = new HashSet<String>();
        for (final String principalDN : accessRights) {
          final Map<String, Collection<String>> properties = securityResolver.getProperties(principalDN);
          final Collection<String> resolvedUserNames = properties.get(_resolvedUserNameProperty);
          if (resolvedUserNames != null && !resolvedUserNames.isEmpty()) {
            displayNames.add(resolvedUserNames.iterator().next());
          }
        } // for
      } else {
        displayNames = accessRights;
      }
      return displayNames;
    } else {
      if (users != null) {
        for (final Any user : users) {
          accessRights.add(((Value) user).asString());
        }
      }
      return accessRights;
    }
  }
}
