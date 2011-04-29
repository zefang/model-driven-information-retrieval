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
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.pipelets.xmlprocessing.util.XMLUtils;
import org.eclipse.smila.processing.pipelets.xmlprocessing.util.XPathUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Pipelet that extracts elements selected by XPath and converts them in appropriate data types (Boolean, Double,
 * String). The possible properties are:
 * <ul>
 * <li>xpath: the XPath</li>
 * <li>seperator: the seperator (optional)</li>
 * <li>namespace: the namespace (optional)</li>
 * <li>inputName: name of the Attribute/Attachment to read the XML Document from</li>
 * <li>outputName: name of the Attribute/Attachment to store the extracted value in</li>
 * <li>inputType: the type (Attribute or Attachment of the inputName</li>
 * <li>outputType: the type (Attribute or Attachment of the outputtName</li>
 * </ul>
 */
public class XPathExtractorPipelet extends AXmlTransformationPipelet {
  /**
   * The name of the XSLT file used for the transformation.
   */
  public static final String PROP_XPATH = "xpath";

  /**
   * The separator property.
   */
  public static final String PROP_SEPARATOR = "separator";

  /**
   * The namespace property.
   */
  public static final String PROP_NAMESPACE = "namespace";

  /**
   * The XPath.
   */
  private String _xpath;

  /**
   * The seperator.
   */
  private String _separator;

  /**
   * The namespace.
   */
  private String _namespace;

  /**
   * The namespace element.
   */
  private Element _namespaceElement;

  /**
   * {@inheritDoc}
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    super.configure(configuration);
    _xpath = configuration.getStringValue(PROP_XPATH);
    if (_xpath == null || _xpath.trim().length() == 0) {
      throw new ProcessingException("Property " + PROP_XPATH + " must not be <null> or an empty String");
    }
    _separator = configuration.getStringValue(PROP_SEPARATOR);
    if (_separator == null) {
      _separator = "";
    }
    _namespace = configuration.getStringValue(PROP_NAMESPACE);
    if (_namespace == null) {
      _namespace = "";
    }

    final Document doc = XMLUtils.getDocument();
    _namespaceElement = doc.createElement("NamespaceDef");
    final String[] namespaces = _namespace.split(" ");
    for (int i = 0; i < namespaces.length; i++) {
      if (!"".equals(namespaces[i].trim())) {
        final String[] nsItems = namespaces[i].split("=");

        if (nsItems.length != 2) {
          throw new ProcessingException("Property " + PROP_NAMESPACE
            + " in invalid format [Namespace;ns1=val ns2=val]");
        }
        _namespaceElement.setAttribute("xmlns:" + nsItems[0], nsItems[1]);
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    if (recordIds != null) {
      for (final String id : recordIds) {
        try {
          final Document inputDocument = createDocument(blackboard, id);
          if (inputDocument != null) {
            final Object result =
              XPathUtils.queryForIndexField(inputDocument, _xpath, _namespaceElement, _separator);
            if (result != null) {
              if (isStoreInAttribute()) {
                Value value = null;
                if (result instanceof Boolean) {
                  value = blackboard.getDataFactory().createBooleanValue((Boolean) result);
                } else if (result instanceof Double) {
                  value = blackboard.getDataFactory().createDoubleValue((Double) result);
                } else {
                  value = blackboard.getDataFactory().createStringValue(result.toString());
                }
                blackboard.getMetadata(id).put(_outputName, value);
              } else {
                storeResult(blackboard, id, result.toString());
              }
            }
          }
        } catch (final Exception e) {
          if (_log.isWarnEnabled()) {
            _log.warn("unable to transform document " + id, e);
          }
        }
      } // for
    } // if
    return recordIds;
  }
}
