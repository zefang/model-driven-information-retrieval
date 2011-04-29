/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (mpolis GmbH) - initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.agent.mock;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractAgent;
import org.eclipse.smila.connectivity.framework.AgentException;
import org.eclipse.smila.connectivity.framework.agent.mock.messages.Attribute;
import org.eclipse.smila.connectivity.framework.agent.mock.messages.Process;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig.Attributes;
import org.eclipse.smila.connectivity.framework.schema.config.interfaces.IAttribute;
import org.eclipse.smila.connectivity.framework.util.AgentThreadState;
import org.eclipse.smila.connectivity.framework.util.ConnectivityHashFactory;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;

/**
 * Implementation of a MockAgent.
 */
public class MockAgent extends AbstractAgent {

  /**
   * Constant to compute millisecond values.
   */
  private static final long MILLI_SECOND_MULTIPLIER = 1000;

  /**
   * The _factory.
   */
  private final DataFactory _factory = DataFactoryCreator.createDefaultFactory();

  /**
   * The LOG.
   */
  private final Log _log = LogFactory.getLog(MockAgent.class);

  /**
   * The sleepTime.
   */
  private long _sleepTime;

  /**
   * The _attributes.
   */
  private Attribute[] _attributes;

  /**
   * Default Constructor.
   */
  public MockAgent() {
    super();
    if (_log.isDebugEnabled()) {
      _log.debug("Creating MockAgent instance");
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
          // create new record
          final StringBuffer hash = new StringBuffer();
          final Record record = createRecord(hash);
          if (_log.isTraceEnabled()) {
            _log.trace("created record with Id " + record.getId());
          }

          // send record to AgentController
          getControllerCallback().add(getSessionId(), getConfig().getDeltaIndexing(), record, hash.toString());

          // wait configured sleepTime
          Thread.sleep(_sleepTime);
        } catch (InterruptedException e) {
          if (_log.isTraceEnabled()) {
            _log.trace("agent thread was interrupted ", e);
          }
        }
      }
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

  /**
   * {@inheritDoc}
   * 
   * @see AbstractAgent#initialize()
   */
  @Override
  protected void initialize() throws AgentException {
    // convert sleep time to milliseconds
    _sleepTime = ((Process) getConfig().getProcess()).getSleepTime().longValue() * MILLI_SECOND_MULTIPLIER;

    // read in configured attributes/attachments
    final Attributes attributes = getConfig().getAttributes();
    final List<IAttribute> attrs = attributes.getAttribute();
    _attributes = attrs.toArray(new Attribute[attrs.size()]);
  }

  /**
   * Create a new record.
   * 
   * @param hash
   *          a StringBuffer to contain the delta indexing hash
   * @return a Record object
   * @throws AgentException
   *           if any error occurs
   */
  private Record createRecord(final StringBuffer hash) throws AgentException {
    final MockAgentData data = new MockAgentData();

    final AnyMap idAttributes = _factory.createAnyMap();
    final AnyMap hashAttributes = _factory.createAnyMap();
    final Map<String, byte[]> hashAttachments = new HashMap<String, byte[]>();
    readIdAndHashAttributesAndAttachments(data, idAttributes, hashAttributes, hashAttachments);

    // compute id
    final ConnectivityId id =
      ConnectivityIdFactory.getInstance().createId(getConfig().getDataSourceID(), idAttributes);

    // compute hash
    hash.append(ConnectivityHashFactory.getInstance().createHash(hashAttributes));

    // create record
    final Record record = _factory.createRecord();
    record.setId(id.getObjectId());
    record.setSource(id.getDataSourceId());
    fillRecord(data, record);

    return record;
  }

  /**
   * Reads attributes/attachments to create Id and hash from. Fills the given containers with Attribute objects.
   * 
   * @param data
   *          a MockAgentData object containing values of the attributes
   * @param idAttributes
   *          a AnyMap to add attributes to create the Id from to
   * @param hashAttributes
   *          a AnyMap to add attributes to create the hash from to
   * @param hashAttachments
   *          a Map to add attachments to create the hash from to
   * @throws AgentException
   *           if any error occurs
   */
  private void readIdAndHashAttributesAndAttachments(final MockAgentData data, final AnyMap idAttributes,
    final AnyMap hashAttributes, final Map<String, byte[]> hashAttachments) throws AgentException {
    for (final Attribute attributeDef : _attributes) {
      if (attributeDef.isKeyAttribute() || attributeDef.isHashAttribute()) {
        if (attributeDef.isAttachment()) {
          final byte[] value = readAttachment(data, attributeDef);
          hashAttachments.put(attributeDef.getName(), value);
        } else {
          final Object value = readAttribute(data, attributeDef);
          if (value != null) {
            final Any attribute = _factory.parseFromObject(value);
            if (attributeDef.isKeyAttribute()) {
              idAttributes.put(attributeDef.getName(), attribute);
            }
            if (attributeDef.isHashAttribute()) {
              hashAttributes.put(attributeDef.getName(), attribute);
            }
          } // if
        } // else
      } // if
    } // for
  }

  /**
   * Fills the record with the configured attributes/attachments using the data from the given MockAgentData object.
   * 
   * @param data
   *          the MockAgentData containing the data for attributes/attachments
   * @param record
   *          the Record object to fill the data in
   * @throws AgentException
   *           if any error occurs
   */
  private void fillRecord(final MockAgentData data, final Record record) throws AgentException {
    for (final Attribute attributeDef : _attributes) {
      if (attributeDef.isAttachment()) {
        final byte[] value = readAttachment(data, attributeDef);
        record.setAttachment(attributeDef.getName(), value);
      } else {
        final Object value = readAttribute(data, attributeDef);
        if (value != null) {
          final Any attribute = _factory.parseFromObject(value);
          record.getMetadata().put(attributeDef.getName(), attribute);
        } // if
      } // else
    } // for

  }

  /**
   * Reads the value for a given attribute from the MockAgentData object.
   * 
   * @param data
   *          the MockAgentData to read the attribute value from
   * @param attribute
   *          the attribute to read
   * @return a Serializable object (String or Date)
   * @throws AgentException
   *           if any error occurs
   */
  private Serializable readAttribute(final MockAgentData data, final Attribute attribute) throws AgentException {
    switch (attribute.getMockAttributes()) {
      case IDENTIFIER:
        return data.getIdentifier();
      case LAST_MODIFIED_DATE:
        return data.getLastModified();
      case MIME_TYPE:
        return data.getMimeType();
      case CONTENT:
        return data.getContent();
      default:
        throw new RuntimeException("Unknown mock attributes type " + attribute.getMockAttributes());
    }
  }

  /**
   * Reads the value for a given attribute as an attachment (byte[]) from the MockAgentData object.
   * 
   * @param data
   *          the MockAgentData to read the attachment value from
   * @param attribute
   *          the attribute to read
   * @return a byte[]
   * @throws AgentException
   *           if any error occurs
   */
  private byte[] readAttachment(final MockAgentData data, final Attribute attribute) throws AgentException {
    final Serializable value = readAttribute(data, attribute);
    if (value != null) {
      if (value instanceof String) {
        try {
          return ((String) value).getBytes("utf-8");
        } catch (final UnsupportedEncodingException e) {
          throw new AgentException(e);
        }
      } else if (value instanceof byte[]) {
        return (byte[]) value;
      } // TODO serialization to byte[] for other types of attachments.
    }
    return null;
  }

  /**
   * Utility class to store the data for a record in.
   */
  private class MockAgentData {
    /**
     * The last modified date.
     */
    private final Date _lastModified;

    /**
     * The object identifier.
     */
    private final String _identifier;

    /**
     * The mime type.
     */
    private final String _mimeType;

    /**
     * The content.
     */
    private final String _content;

    /**
     * Default Constructor.
     */
    MockAgentData() {
      final long currentTime = System.currentTimeMillis();

      _lastModified = new Date(currentTime);
      _identifier = Long.toString(currentTime);
      _mimeType = "text/plain";
      _content = "This is some text content generated by MockAgent at " + _lastModified;
    }

    /**
     * Returns the last modified date.
     * 
     * @return the last modified date.
     */
    public Date getLastModified() {
      return _lastModified;
    }

    /**
     * Returns the identifier.
     * 
     * @return the identifier.
     */
    public String getIdentifier() {
      return _identifier;
    }

    /**
     * Returns the mime type.
     * 
     * @return the mime type.
     */
    public String getMimeType() {
      return _mimeType;
    }

    /**
     * Returns the content.
     * 
     * @return the content.
     */
    public String getContent() {
      return _content;
    }
  }
}
