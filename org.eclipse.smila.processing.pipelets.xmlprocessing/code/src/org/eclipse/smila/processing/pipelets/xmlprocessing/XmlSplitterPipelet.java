/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.xmlprocessing;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.GetMethod;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.connectivity.ConnectivityException;
import org.eclipse.smila.connectivity.ConnectivityManager;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.JMSMessageProperties;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.utils.service.ServiceUtils;
import org.eclipse.smila.utils.xml.stax.MarkerTag;
import org.eclipse.smila.utils.xml.stax.SimpleTagExtractor;
import org.eclipse.smila.utils.xml.stax.XmlSnippetHandler;
import org.eclipse.smila.utils.xml.stax.XmlSnippetSplitter;

/**
 * Pipelet that splits a XML stream into multiple xml snippets. For each snippet a new Record is created where the XML
 * snippet is stored in either an attribute or attachment. The created records are not returned as a PipeletResult (this
 * is just the same as the incoming RecordIds) but are directly send to the ConnectivityManager and are routed once more
 * to the Queue.
 * 
 * On each created record the Annotation <tt>MessageProperties</tt> is set with the key value pair
 * <tt>isXmlSnippet</tt>=<tt>true</tt>. This can be used in Listener rules to select for XML snippets to process.The
 * possible properties are:
 * <ul>
 * <li>beginTagName: the name of the tag to start the xml snippet</li>
 * <li>isBeginClosingTag: boolean flag if the beginTagName is a closing tag (true) or not (false)</li>
 * <li>endTagName: the name of the tag to end the xml snippet</li>
 * <li>isEndClosingTag: boolean flag if the endTagName is a closing tag (true) or not (false)</li>
 * <li>keyTagName: the name of the tag used to create a record id</li>
 * <li>maxBufferSize: the maximum size of the internal record buffer (optional, default is 20)</li>
 * <li>inputName: name of the Attribute/Attachment to read the XML Document from.</li>
 * <li>outputName: name of the Attribute/Attachment to store the extracted value in</li>
 * <li>inputType: the type (Attribute or Attachment of the inputName. An input Attribute is not interpreted as content
 * but as a file path or an URL to the XML document</li>
 * <li>outputType: the type (Attribute or Attachment of the outputtName</li>
 * </ul>
 */
public class XmlSplitterPipelet extends ATransformationPipelet {

  /** Constant for the property beginTagName. */
  public static final String PROP_BEGIN_TAG_NAME = "beginTagName";

  /** Constant for the property isBeginClosingTag. */
  public static final String PROP_IS_BEGIN_CLOSING_TAG = "isBeginClosingTag";

  /** Constant for the property endTagName. */
  public static final String PROP_END_TAG_NAME = "endTagName";

  /** Constant for the property isEndClosingTag. */
  public static final String PROP_IS_END_CLOSING_TAG = "isEndClosingTag";

  /** Constant for the property keyTagName. */
  public static final String PROP_KEY_TAG_NAME = "keyTagName";

  /** Constant for the property maxBufferSize. */
  public static final String PROP_MAX_BUFFER_SIZE = "maxBufferSize";

  /** Constant for the property idSeparator. */
  public static final String PROP_ID_SEPARATOR = "idSeparator";

  /** default id separator. */
  public static final String DEFAULT_ID_SEPARATOR = "#";

  /** Constant for the default max buffer size (20). */
  public static final int DEFAULT_MAX_BUFFER_SIZE = 20;

  /** The MarkerTag for the snippet begin. */
  private MarkerTag _beginTag;

  /** The MarkerTag for the snippet end. */
  private MarkerTag _endTag;

  /** The xml tag name containing the value used to generate new record ids. */
  private String _keyTagName;

  /** The separator used to generate the record ids of the splitted records. */
  private String _idSeparator;

  /** SimpleTagExtractor instance to extract key values. */
  private SimpleTagExtractor _extractor = new SimpleTagExtractor(true);

  /** Reference to the ConnectivityManager. */
  private ConnectivityManager _connectivityManager;

  /** The record buffer used to buffer created records before sending them in blocks to ConnectivityManager. */
  private List<Record> _recordBuffer = new ArrayList<Record>();

  /** The max buffer size. If reached the buffer is flushed. */
  private int _maxBufferSize = DEFAULT_MAX_BUFFER_SIZE;

  /**
   * {@inheritDoc}
   */
  public void configure(AnyMap configuration) throws ProcessingException {
    super.configure(configuration);
    final String beginTagName = configuration.getStringValue(PROP_BEGIN_TAG_NAME);
    if (beginTagName == null || beginTagName.trim().length() == 0) {
      throw new ProcessingException("Property " + PROP_BEGIN_TAG_NAME + " must not be <null> or an empty String");
    }
    final Boolean isBeginEndTag = configuration.getBooleanValue(PROP_IS_BEGIN_CLOSING_TAG);
    if (isBeginEndTag == null) {
      throw new ProcessingException("Property " + PROP_IS_BEGIN_CLOSING_TAG + " must not be <null>");
    }

    final String endTagName = configuration.getStringValue(PROP_END_TAG_NAME);
    if (endTagName == null || endTagName.trim().length() == 0) {
      throw new ProcessingException("Property " + PROP_END_TAG_NAME + " must not be <null> or an empty String");
    }
    final Boolean isEndEndTag = configuration.getBooleanValue(PROP_IS_END_CLOSING_TAG);
    if (isEndEndTag == null) {
      throw new ProcessingException("Property " + PROP_IS_END_CLOSING_TAG + " must not be <null>");
    }

    _keyTagName = configuration.getStringValue(PROP_KEY_TAG_NAME);
    if (_keyTagName == null || _keyTagName.trim().length() == 0) {
      throw new ProcessingException("Property " + PROP_KEY_TAG_NAME + " must not be <null> or an empty String");
    }

    _idSeparator = configuration.getStringValue(PROP_ID_SEPARATOR);
    if (_idSeparator == null) {
      _idSeparator = DEFAULT_ID_SEPARATOR;
    }

    final String bufferSize = configuration.getStringValue(PROP_MAX_BUFFER_SIZE);
    if (bufferSize != null) {
      _maxBufferSize = Integer.parseInt(bufferSize);
    }

    _beginTag = new MarkerTag(beginTagName, isBeginEndTag);
    _endTag = new MarkerTag(endTagName, isEndEndTag);
  }

  /**
   * {@inheritDoc}
   */
  public String[] process(Blackboard blackboard, String[] recordIds) throws ProcessingException {
    final InternalHandler snippetHandler = new InternalHandler();
    final XmlSnippetSplitter splitter = new XmlSnippetSplitter(snippetHandler, _beginTag, _endTag);
    if (recordIds != null) {
      for (final String id : recordIds) {
        try {
          // get xml input stream
          InputStream inputStream = null;
          if (isReadFromAttribute()) {
            inputStream = loadExternalInputStream(readStringInput(blackboard, id));
          } else {
            inputStream = blackboard.getAttachmentAsStream(id, getInputName());
          }

          snippetHandler.setCurrentRecord(id, blackboard.getRecord(id).getSource());
          splitter.read(inputStream);
          if (_log.isInfoEnabled()) {
            _log.info("Created " + snippetHandler.getRecordCount() + " records from processing record " + id);
          }
        } catch (Exception e) {
          if (_log.isWarnEnabled()) {
            _log.warn("unable to split record " + id, e);
          }
        }
      } // for
      try {
        flushRecordBuffer();
      } catch (Exception e) {
        throw new ProcessingException("error flushing record buffer", e);
      }
    } // if
    return recordIds;
  }

  /**
   * Get the ConnectivityManager.
   * 
   * @return the ConnectivityManager.
   * @throws InterruptedException
   *           if any error occurs
   */
  private ConnectivityManager getConnectivityManager() throws InterruptedException {
    if (_connectivityManager == null) {
      _connectivityManager = ServiceUtils.getService(ConnectivityManager.class);
    }
    return _connectivityManager;
  }

  /**
   * Adds the given record to the record buffer. If _maxBufferSize is reached a flush of the buffer is done.
   * 
   * @param record
   *          the Record to add to the buffer
   * @throws ConnectivityException
   *           if any error occurs
   * @throws InterruptedException
   *           if any error occurs
   */
  private void addToRecordBuffer(final Record record) throws ConnectivityException, InterruptedException {
    synchronized (_recordBuffer) {
      _recordBuffer.add(record);
      if (_recordBuffer.size() >= _maxBufferSize) {
        flushRecordBuffer();
      }
    }
  }

  /**
   * Flushes the record buffer if it is not empty.
   * 
   * @throws ConnectivityException
   *           if any error occurs
   * @throws InterruptedException
   *           if any error occurs
   */
  private void flushRecordBuffer() throws ConnectivityException, InterruptedException {
    synchronized (_recordBuffer) {
      if (!_recordBuffer.isEmpty()) {
        try {
          getConnectivityManager().add(_recordBuffer.toArray(new Record[_recordBuffer.size()]));
        } finally {
          _recordBuffer.clear();
        }
      }
    }
  }

  /**
   * Get the external InputStream to the given url or filee path.
   * 
   * @param attrtibuteValue
   *          the attrtibuteValue denoting an URL or file path
   * @return a InputStream or null
   * @throws IOException
   *           if any error occurs
   */
  private InputStream loadExternalInputStream(final String attrtibuteValue) throws IOException {
    InputStream stream = null;
    if (attrtibuteValue != null && attrtibuteValue.trim().length() > 0) {
      if (attrtibuteValue.startsWith("file")) {
        final URL url = new URL(attrtibuteValue);
        stream = new FileInputStream(url.getAuthority() + url.getPath());
      } else if (attrtibuteValue.startsWith("http")) {
        final URL url = new URL(attrtibuteValue);
        final HttpClient httpClient = new HttpClient();
        final GetMethod getMethod = new GetMethod(url.toString());
        httpClient.executeMethod(getMethod);
        stream = getMethod.getResponseBodyAsStream();
      } else {
        stream = new FileInputStream(attrtibuteValue);
      }
    } // if
    return stream;
  }

  /**
   * Internal XmlSnippetHandler implementation to handle the snippets, create id and record objects and send them to the
   * Queue.
   */
  class InternalHandler implements XmlSnippetHandler {

    /** The currently processed Id. used to generate fragment id objects. */
    private String _currentId;

    /** The currently processed source. used to generate fragment record snippet. */
    private String _source;

    /** Counts the total number of created records. */
    private int _recordCounter;

    /** Counts the number of invokes of handleSnippet() for the _currentId. */
    private int _countById;

    /**
     * Set the current record id and source used for snippet record creation.
     * 
     * @param id
     *          the current Id.
     * @param source
     *          the current source.
     */
    void setCurrentRecord(final String id, final String source) {
      _currentId = id;
      _source = source;
      _countById = 0;
    }

    /**
     * Returns the number of created records.
     * 
     * @return the number of created records
     */
    int getRecordCount() {
      return _recordCounter;
    }

    /**
     * {@inheritDoc}
     */
    public void handleSnippet(final byte[] snippet) {
      _countById++;
      String snippetId = null;
      try {
        final List<String> keys = _extractor.getTags(_keyTagName, new ByteArrayInputStream(snippet));
        if (!keys.isEmpty()) {
          snippetId = _currentId + _idSeparator + keys.get(0);
          final Record record = DataFactoryCreator.createDefaultFactory().createRecord(snippetId, _source);
          if (isStoreInAttribute()) {
            record.getMetadata().put(_outputName, new String(snippet, ENCODING_ATTACHMENT));
          } else {
            record.setAttachment(_outputName, snippet);
          }

          // set message properties
          final AnyMap messageProperties = DataFactoryCreator.createDefaultFactory().createAnyMap();
          messageProperties.put(JMSMessageProperties.PROPERTY_IS_XML_SNIPPET, Boolean.toString(true));
          record.getMetadata().put(JMSMessageProperties.MESSAGE_PROPERTIES, messageProperties);

          _recordCounter++;
          addToRecordBuffer(record);
        } else {
          if (_log.isWarnEnabled()) {
            _log.warn("could not find tag " + _keyTagName + " in snippet number " + _countById + " of record "
              + _currentId);
          }
          if (_log.isTraceEnabled()) {
            _log.trace("snippet content: " + new String(snippet));
          }
        }
      } catch (Exception e) {
        if (_log.isErrorEnabled()) {
          _log.error("error creating record for xml snippet number " + _countById + " with id " + snippetId
            + " of record " + _currentId, e);
        }
        if (_log.isTraceEnabled()) {
          _log.trace("snippet content: " + new String(snippet));
        }
      }
    }
  } // InternalHandler
}
