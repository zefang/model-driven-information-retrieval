/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.agent.jobfile;

import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import javax.xml.stream.XMLStreamException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractAgent;
import org.eclipse.smila.connectivity.framework.AgentException;
import org.eclipse.smila.connectivity.framework.agent.jobfile.messages.Process;
import org.eclipse.smila.connectivity.framework.schema.config.interfaces.IAttribute;
import org.eclipse.smila.connectivity.framework.util.AgentThreadState;
import org.eclipse.smila.connectivity.framework.util.ConnectivityHashFactory;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;

/**
 * Implementation of a Agent that reads xml job files with add jobs containing records and delete jobs containing ids.
 */
public class JobFileAgent extends AbstractAgent implements JobFileHandler {

  /**
   * Constant to compute millisecond values.
   */
  private static final long MILLI_SECOND_MULTIPLIER = 1000;

  /**
   * The LOG.
   */
  private final Log _log = LogFactory.getLog(JobFileAgent.class);

  /**
   * The update interval in milliseconds.
   */
  private long _updateInterval;

  /**
   * The attachment name and url separator.
   */
  private String _attachmentSeparator;

  /**
   * The job file urls.
   */
  private List<String> _jobFileUrls;

  /**
   * The job file reader.
   */
  private JobFileReader _jobFileReader;

  /**
   * The set of id attribute names.
   */
  private HashSet<String> _idAttributeNames;

  /**
   * The set of hash attribute names.
   */
  private HashSet<String> _hashAttributeNames;

  /**
   * The set of hash attachment names.
   */
  private HashSet<String> _hashAttachmentNames;

  /**
   * Default Constructor.
   */
  public JobFileAgent() {
    super();
    if (_log.isDebugEnabled()) {
      _log.debug("Creating JobFileAgent instance");
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Runnable#run()
   */
  @Override
  public void run() {
    try {
      while (!isStopThread()) {
        try {
          for (final String jobUrl : _jobFileUrls) {
            try {
              _jobFileReader.readJobFile(new URL(jobUrl));
            } catch (XMLStreamException e) {
              if (_log.isErrorEnabled()) {
                _log.error("Error while reading job file " + jobUrl, e);
              }
              getAgentState().setLastError(e);
            }
          } // for
          Thread.sleep(_updateInterval);
        } catch (InterruptedException e) {
          if (_log.isDebugEnabled()) {
            _log.debug("JobFileAgent thread was interrupted", e);
          }
        }
      } // while
    } catch (Throwable t) {
      getAgentState().setLastError(t);
      getAgentState().setState(AgentThreadState.Aborted);
      throw new RuntimeException(t);
    } finally {
      try {
        stopThread();
      } catch (Exception e) {
        throw new RuntimeException(e);
      }
    }
  }

  /** {@inheritDoc} */
  @Override
  public void add(final Record record) {
    try {
      // check if record contains an id, otherwise create one
      if (record.getId() == null || record.getSource() == null) {
        final ConnectivityId id = createId(record);
        record.setId(id.getObjectId());
        record.setSource(id.getDataSourceId());
      } else {
        assertDataSource(record);
      }
      final String hash = createHash(record);
      getControllerCallback().add(getSessionId(), getConfig().getDeltaIndexing(), record, hash);
    } catch (Exception e) {
      if (_log.isErrorEnabled()) {
        _log.error("Error adding record " + record.getId(), e);
      }
    }
  }

  /** {@inheritDoc} */
  @Override
  public void delete(final Record record) {
    try {
      final ConnectivityId id;
      // check if record contains an id, otherwise create one
      if (record.getId() == null || record.getSource() == null) {
        id = createId(record);
      } else {
        assertDataSource(record);
        id = new ConnectivityId(record.getSource(), record.getId());
      }

      getControllerCallback().delete(getSessionId(), getConfig().getDeltaIndexing(), id);
    } catch (Exception e) {
      if (_log.isErrorEnabled()) {
        _log.error("Error deleting record " + record.getId(), e);
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see AbstractAgent#initialize()
   */
  @Override
  protected void initialize() throws AgentException {
    // convert updateInterval to milliseconds
    _updateInterval =
      ((Process) getConfig().getProcess()).getUpdateInterval().longValue() * MILLI_SECOND_MULTIPLIER;
    _jobFileUrls = ((Process) getConfig().getProcess()).getJobFileUrl();
    _attachmentSeparator = ((Process) getConfig().getProcess()).getAttachmentSeparator();
    _jobFileReader = new JobFileReader(this, _attachmentSeparator);

    // read in id attributes and hash attributes and attachments
    _idAttributeNames = new HashSet<String>();
    _hashAttributeNames = new HashSet<String>();
    _hashAttachmentNames = new HashSet<String>();
    final Iterator<IAttribute> it = getConfig().getAttributes().getAttribute().iterator();
    while (it.hasNext()) {
      final IAttribute attribute = it.next();
      if (attribute.isKeyAttribute()) {
        _idAttributeNames.add(attribute.getName());
      }
      if (attribute.isHashAttribute()) {
        if (attribute.isAttachment()) {
          _hashAttachmentNames.add(attribute.getName());
        } else {
          _hashAttributeNames.add(attribute.getName());
        } // if
      } // if
    } // while

    // check configuration
    if (_idAttributeNames.isEmpty()) {
      if (_log.isWarnEnabled()) {
        _log.warn("No key attribute is configured. Therfore only records with Id tags are processed correctly!");
      }
    }
    if (_hashAttributeNames.isEmpty() && _hashAttachmentNames.isEmpty()) {
      if (_log.isWarnEnabled()) {
        _log.warn("No hash attribute or attachment is configured."
          + " Without a hash delta indexing will never update the record if once added!");
      }
    }
  }

  /**
   * Makes sure that the data source of the given id is equal to the agents data source id.
   * 
   * @param record
   *          the record object to check
   * @throws AgentException
   *           if the data source is not equal
   */
  private void assertDataSource(final Record record) throws AgentException {
    if (!getConfig().getDataSourceID().equals(record.getSource())) {
      throw new AgentException("Invalid dataSourceId in record id " + record.getId() + ". DataSourceId must be '"
        + getConfig().getDataSourceID() + "' and not '" + record.getSource() + "'");
    }
  }

  /**
   * Creates the last modified hash for the given record.
   * 
   * @param record
   *          the Record
   * @return a String containing the hash
   */
  private String createHash(final Record record) {
    final AnyMap hashAttributes = record.getFactory().createAnyMap();
    for (final String attributeName : _hashAttributeNames) {
      if (record.getMetadata().containsKey((attributeName))) {
        hashAttributes.put(attributeName, record.getMetadata().get(attributeName));
      } else if (_log.isWarnEnabled()) {
        _log.warn("Record " + record.getId() + " does not contain the configured hash attribute " + attributeName
          + ". Hash is created without this attribute.");
      }
    } // for

    final HashMap<String, byte[]> hashAttachments = new HashMap<String, byte[]>();
    for (final String attachmentName : _hashAttachmentNames) {
      if (record.hasAttachment(attachmentName)) {
        hashAttachments.put(attachmentName, record.getAttachment(attachmentName));
      } else if (_log.isWarnEnabled()) {
        _log.warn("Record " + record.getId() + " does not contain the configured hash attachment " + attachmentName
          + ". Hash is created without this attachment.");
      }
    } // for

    return ConnectivityHashFactory.getInstance().createHash(hashAttributes);
  }

  /**
   * Creates an Id for the given record.
   * 
   * @param record
   *          the record
   * @return the id object
   */
  private ConnectivityId createId(final Record record) {
    final AnyMap idAttributes = record.getFactory().createAnyMap();
    for (final String attributeName : _idAttributeNames) {
      if (record.getMetadata().containsKey(attributeName)) {
        idAttributes.put(attributeName, record.getMetadata().get(attributeName));
      } else if (_log.isWarnEnabled()) {
        _log.warn("Record does not contain the configured id attribute " + attributeName
          + ". Id is created without this attribute.");
      }
    } // for

    return ConnectivityIdFactory.getInstance().createId(getConfig().getDataSourceID(), idAttributes);
  }
}
