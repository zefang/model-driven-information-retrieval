/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation, Andreas Schank (Attensity Europe
 * GmbH) - data model simplification
 *******************************************************************************/
package org.eclipse.smila.ontology.pipelets;

import java.io.File;
import java.net.URI;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.ontology.records.SesameRecordHelper;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * write filename in ID key as file:/ URI to rdf:about attribute. Works useful only if the ID key is an absolute path
 * for the same platform as the pipelet is running on.
 * 
 * @author jschumacher
 * 
 */
public class CreateFileUriPipelet implements Pipelet {
  /**
   * The key of the configuration to define in which attribute the filename is stored in.
   */
  public static final String KEY_CONFIG_FILENAME_ATTRIBUTE = "_filenameAttribute";

  /**
   * Attribute where the filename is derived from.
   */
  private String _sourceFilenameAttribute;

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(getClass());

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet#process(org.eclipse.smila.blackboard.Blackboard,
   *      org.eclipse.smila.datamodel.id.Id[])
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    if (recordIds != null) {
      for (final String id : recordIds) {
        final String filename;
        if (_sourceFilenameAttribute != null) {
          try {
            filename = blackboard.getMetadata(id).getStringValue(_sourceFilenameAttribute);
          } catch (BlackboardAccessException e) {
            throw new ProcessingException("Cannot access source filename attribute '" + _sourceFilenameAttribute
              + "' of record '" + id + "'.", e);
          }
        } else {
          // try to guess the filename from the id...
          filename = id.replace("*.:<", "").replace(">.*", "").replace('\\', '/');
        }
        try {
          final File file = new File(filename);
          final URI fileUri = file.toURI();
          final AnyMap metadata = blackboard.getMetadata(id);
          metadata.put(SesameRecordHelper.ATTRIBUTE_URI, metadata.getFactory()
            .createStringValue(fileUri.toString()));
        } catch (final Exception ex) {
          throw new ProcessingException("error creating file URI from key " + filename, ex);
        }

      }
    }
    return recordIds;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.IPipelet
   *      #configure(org.eclipse.smila.processing.configuration.PipeletConfiguration)
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    _sourceFilenameAttribute = configuration.getStringValue(KEY_CONFIG_FILENAME_ATTRIBUTE);
    if (_sourceFilenameAttribute == null) {
      _log.error("Could not determine source attribute for filename.");
    }
  }

}
