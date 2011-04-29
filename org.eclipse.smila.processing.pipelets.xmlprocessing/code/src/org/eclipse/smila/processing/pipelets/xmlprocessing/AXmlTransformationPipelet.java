/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 *               Andreas Weber (Attensity Europe GmbH) - data model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.processing.pipelets.xmlprocessing;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.processing.pipelets.ATransformationPipelet;
import org.eclipse.smila.processing.pipelets.xmlprocessing.util.XMLUtils;
import org.w3c.dom.Document;

/**
 * Abstract base class for XML processing pipelets. 
 */
public abstract class AXmlTransformationPipelet extends ATransformationPipelet {

  /**
   * Creates a Document from an Attribute or Attachment.
   * 
   * @param blackboard
   *          the Blackboard
   * @param id
   *          the Id of the record
   * @return a Document
   * @throws Exception
   *           if any error occurs
   */
  protected Document createDocument(final Blackboard blackboard, final String id) throws Exception {
    Document inputDocument = null;
    if (isReadFromAttribute()) {
      final String value = blackboard.getMetadata(id).getStringValue(_inputName);
      if (value != null) {
        inputDocument = XMLUtils.parse(value.getBytes(ENCODING_ATTACHMENT), false);
      }
    } else {
      final byte[] value = blackboard.getAttachment(id, _inputName);
      inputDocument = XMLUtils.parse(value, false);
    }
    return inputDocument;
  }

  /**
   * Stores a Document in an Attribute or Attachment.
   * 
   * @param blackboard
   *          the Blackboard
   * @param id
   *          the Id of the record
   * @param doc
   *          the Document to save
   * @throws Exception
   *           if any error occurs
   */
  protected void storeDocument(final Blackboard blackboard, final String id, final Document doc) throws Exception {
    if (isStoreInAttribute()) {
      final String domString = XMLUtils.documentToString(doc);
      blackboard.getMetadata(id).put(_outputName, domString);
    } else {
      final byte[] attachment = XMLUtils.documentToBytes(doc);
      blackboard.setAttachment(id, _outputName, attachment);
    }
  }
}
