
/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials are made available 
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Georg Schmidt (brox IT-Solutions GmbH - initial API and implementation, Daniel Stucky (empolis GmbH) -
 * initial API and implementation, Ivan Churkin(brox IT-Solutions GmbH) - simple, based on regular expression, web mime
 * type identification.,Drazen Cindric (Attensity Europe GmbH) - data model improvements
 *******************************************************************************/
package org.eclipse.smila.processing.pipelets;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.common.mimetype.MimeTypeIdentifier;
import org.eclipse.smila.common.mimetype.MimeTypeParseException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.utils.service.ServiceUtils;

/**
 * The simple MIME type identifier is able to detect MIME types based on a static extension mapping.
 * 
 * @author August Georg Schmidt (BROX), Daniel Stucky
 */
public class MimeTypeIdentifyPipelet implements Pipelet {

  /**
   * Constant for the configuration property FileExtensionAttribute.
   */
  public static final String FILE_EXTENSION_ATTRIBUTE = "FileExtensionAttribute";

  /**
   * Constant for the configuration property ContentAttachment.
   */
  public static final String CONTENT_ATTACHMENT = "ContentAttachment";

  /**
   * Constant for the configuration property MimeTypeAttribute.
   */
  public static final String META_DATA_ATTRIBUTE = "MetaDataAttribute";

  /**
   * Constant for the configuration property MimeTypeAttribute.
   */
  public static final String MIME_TYPE_ATTRIBUTE = "MimeTypeAttribute";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * The name of the attribute containing the file extension.
   */
  private String _extensionAttributeName;

  /**
   * The name of the attachment containing the file content.
   */
  private String _contentAttachmentName;

  /**
   * The _meta data attribute name.
   */
  private String _metaDataAttributeName;

  /**
   * The name of the attribute to store the MimeType in.
   */
  private String _mimeTypeAttributeName;

  /**
   * The configuration.
   */
  private AnyMap _configuration;

  /**
   * MIME type mapper.
   */
  private MimeTypeIdentifier _mimeTypeIdentifier;

  /**
   * The _content type pattern.
   */
  private final Pattern _contentTypePattern = Pattern.compile("^CONTENT-TYPE\\s*:\\s*([^\\s;=]+)(?:.|\\s)*$",
    Pattern.CASE_INSENSITIVE);

  /**
   * read configuration parameters.
   * 
   * {@inheritDoc}
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _configuration = configuration;
    _extensionAttributeName = (String) _configuration.getStringValue(FILE_EXTENSION_ATTRIBUTE);
    _contentAttachmentName = (String) _configuration.getStringValue(CONTENT_ATTACHMENT);
    _metaDataAttributeName = (String) _configuration.getStringValue(META_DATA_ATTRIBUTE);
    _mimeTypeAttributeName = (String) _configuration.getStringValue(MIME_TYPE_ATTRIBUTE);
    if (_extensionAttributeName == null && _contentAttachmentName == null && _metaDataAttributeName == null) {
      throw new ProcessingException("One of the config properties " + FILE_EXTENSION_ATTRIBUTE + ", "
        + CONTENT_ATTACHMENT + " or " + META_DATA_ATTRIBUTE + " have to be specified!");
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    // process records
    final MimeTypeIdentifier identifier = getMimeTypeIdentifier();
    for (final String id : recordIds) {
      try {
        identifyAndStore(blackboard, id, identifier);
      } catch (final Exception ex) {
        if (_log.isErrorEnabled()) {
          _log.error("error identifying MimeType for record " + id, ex);
        }
      }
    } // for
    return recordIds;
  }

  /**
   * @return a MimeTypeIdentifier service.
   * 
   * @throws ProcessingException
   *           could not find a service
   */
  private synchronized MimeTypeIdentifier getMimeTypeIdentifier() throws ProcessingException {
    if (_mimeTypeIdentifier == null) {
      try {
        _mimeTypeIdentifier = ServiceUtils.getService(MimeTypeIdentifier.class);
      } catch (final Exception ex) {
        _log.warn("Error while waiting for MimeTypeIdentifier service to come up.", ex);
      }
      if (_mimeTypeIdentifier == null) {
        throw new ProcessingException("No MimeTypeIdentifier service available, giving up");
      }
    }
    return _mimeTypeIdentifier;
  }

  /**
   * Identifies the MimeType and stores it in the BlackboardService.
   * 
   * @param blackboard
   *          the BlackboardService
   * @param id
   *          the Id
   * @param identifier
   *          MimeTypeIdentifier service to use.
   * @throws BlackboardAccessException
   *           if any error occurs
   * @throws MimeTypeParseException
   *           if any error occurs
   */
  private void identifyAndStore(final Blackboard blackboard, final String id, final MimeTypeIdentifier identifier)
    throws BlackboardAccessException, MimeTypeParseException {
    String mimeType = null;
    // TODO: add logic to check if a mimetype attribute was already set and validate the value if it's a valid (or
    // at least syntactically valid) mime type.

    final AnyMap metaData = blackboard.getMetadata(id);
    if (mimeType == null) {
      if (_extensionAttributeName != null && _contentAttachmentName != null) {
        String extension = null;
        byte[] content = null;

        // get extension if available
        if (metaData.containsKey(_extensionAttributeName)) {
          extension = metaData.getStringValue(_extensionAttributeName);
        }

        // get content if available
        if (blackboard.hasAttachment(id, _contentAttachmentName)) {
          content = blackboard.getAttachment(id, _contentAttachmentName);
        }
        mimeType = identifier.identify(content, extension);
      } else if (_extensionAttributeName != null) {
        // get extension if available
        if (metaData.containsKey(_extensionAttributeName)) {
          final String extension = metaData.getStringValue(_extensionAttributeName);
          if (extension != null) {
            mimeType = identifier.identify(extension);
          } // if
        } // if
      } else if (_contentAttachmentName != null) {
        // get content if available
        if (blackboard.hasAttachment(id, _contentAttachmentName)) {
          final byte[] content = blackboard.getAttachment(id, _contentAttachmentName);
          mimeType = identifier.identify(content);
        }
      } // if

      // if mimeType is still null try to get mimeType from metadata
      if (mimeType == null && _metaDataAttributeName != null) {
        // get metadata if available
        if (metaData.containsKey(_metaDataAttributeName)) {
          final AnySeq metaDataSeq = metaData.getSeq(_metaDataAttributeName);
          for (Any any : metaDataSeq) {
            if (any.isString()) {
              final String metaDataValue = ((Value) any).asString();
              if (metaDataValue != null) {
                final Matcher matcher = _contentTypePattern.matcher(metaDataValue);
                if (matcher.find()) {
                  mimeType = matcher.group(1);
                  break;
                }
              }
            } // if
          } // for
        } // if
      } // if

      // if mimeType exists set mime type attribute
      if (mimeType != null) {
        metaData.put(_mimeTypeAttributeName, mimeType);
      } else {
        if (_log.isWarnEnabled()) {
          _log.warn("Unable to identify MimeType for Id " + id + ". No values found for "
            + FILE_EXTENSION_ATTRIBUTE);
        }
      } // if
    } // if
  }

}
