/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: brox IT-Solutions GmbH - initial creator
 **********************************************************************************************************************/

package org.eclipse.smila.search.highlighting.transformer;

import java.io.InputStream;
import java.util.ArrayList;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.utils.param.ParameterException;
import org.eclipse.smila.search.utils.param.ParameterSet;
import org.eclipse.smila.search.utils.param.def.DParameterDefinition;
import org.eclipse.smila.search.utils.param.def.DParameterDefinitionCodec;
import org.eclipse.smila.search.utils.param.set.DParameterSet;
import org.eclipse.smila.search.utils.searchresult.DHighLighted;
import org.eclipse.smila.utils.xml.XMLUtils;
import org.w3c.dom.Document;

/**
 * Abstract base class for HighlightingTransformer implementations.
 */
public abstract class HighlightingTransformer {

  /**
   * Constant for the parameter HLElementFilter.
   */
  public static final String PARAM_HL_ELEMENT_FILTER = "HLElementFilter";

  /**
   * Constant for the parameter MarkupPrefix.
   */
  public static final String PARAM_MARKUP_PREFIX = "MarkupPrefix";

  /**
   * Constant for the parameter MarkupSuffix.
   */
  public static final String PARAM_MARKUP_SUFFIX = "MarkupSuffix";

  /**
   * Constant for the parameter MaxHLElements.
   */
  public static final String PARAM_MAX_HL_ELEMENTS = "MaxHLElements";

  /**
   * Constant for the parameter MaxLength.
   */
  public static final String PARAM_MAX_LENGTH = "MaxLength";

  /**
   * Constant for the parameter MaxPrecedingCharacters.
   */
  public static final String PARAM_MAX_PRECEDING_CHARACTERS = "MaxPrecedingCharacters";

  /**
   * Constant for the parameter MaxSucceedingCharacters.
   */
  public static final String PARAM_MAX_SUCCEEDING_CHARACTERS = "MaxSucceedingCharacters";

  /**
   * Constant for the parameter PrecedingCharacters.
   */
  public static final String PARAM_PRECEDING_CHARACTERS = "PrecedingCharacters";

  /**
   * Constant for the parameter SortAlgorithm.
   */
  public static final String PARAM_SORT_ALGORITHM = "SortAlgorithm";

  /**
   * Constant for the parameter SucceedingCharacters.
   */
  public static final String PARAM_SUCCEEDING_CHARACTERS = "SucceedingCharacters";

  /**
   * Constant for the parameter TextHandling.
   */
  public static final String PARAM_TEXT_HANDLING = "TextHandling";

  /**
   * Cache for the DParameterDefinition.
   */
  private DParameterDefinition _parameterDefinition;

  /**
   * 
   */
  public HighlightingTransformer() {
    super();
  }

  /**
   * Performs the actual transformation/validation of result structure. Transformer parameters can be accessed via the
   * getParameterSet().getXXXParameter() methods.
   * 
   * @param data
   *          the list of Strings and DHighLighted objects
   * 
   * @param parameterSet
   *          the ParameterSet
   * @return ArrayList
   * @throws HighlightingTransformerException
   *           - if an error occurred during transformation
   * @deprecated use Annotation transform(Annotation highlight) instead
   */
  @Deprecated
  protected abstract ArrayList<Object> transform(final ArrayList<Object> data, final ParameterSet parameterSet)
    throws HighlightingTransformerException;

  /**
   * Performs the transformation of the given highlight annotation and returns the modified annotation.
   * 
   * @param highlight
   *          the highlight annotation
   * @param highlightConfig
   *          the highlightConfig
   * @return the transformed highlight annotation
   * @throws HighlightingTransformerException
   *           if any transformation error occurs
   * @throws ParameterException
   *           if there is any configuration error
   */
  public AnyMap transform(final AnyMap highlight, final DParameterSet highlightConfig)
    throws HighlightingTransformerException, ParameterException {
    if (highlight == null) {
      throw new HighlightingTransformerException("no highlight annotation specified for transformation");
    }

    // get parameters
    final ParameterSet parameterSet = createParameterSet(highlightConfig);
    final String markupPrefix = parameterSet.getStringParameter(PARAM_MARKUP_PREFIX);
    final String markupSuffix = parameterSet.getStringParameter(PARAM_MARKUP_SUFFIX);

    // convert text and position annotations into String and DHighLighted objects
    final ArrayList<Object> data = new ArrayList<Object>();
    int pos = 0;
    final String originalText = highlight.getStringValue(SearchResultConstants.HIGHLIGHT_TEXT);
    final AnySeq highlightPositions = highlight.getSeq(SearchResultConstants.HIGHLIGHT_POSITIONS);
    for (final Any element : highlightPositions) {
      if (element.isMap()) {
        final AnyMap highlightPos = (AnyMap) element;
        final int start = highlightPos.getLongValue(SearchResultConstants.POS_START).intValue();
        final int end = highlightPos.getLongValue(SearchResultConstants.POS_END).intValue();
        data.add(originalText.substring(pos, start));
        final String highlightedItem = originalText.substring(start, end);
        final int score = highlightPos.getLongValue(SearchResultConstants.POS_QUALITY).intValue();
        data.add(new DHighLighted(highlightedItem, score));
        pos = end;
      }
    } // for
    if (pos < originalText.length()) {
      data.add(originalText.substring(pos));
    }

    // execute the actual transformation algorithm
    final ArrayList<Object> transformedData = transform(data, parameterSet);

    // convert to text with markup
    final StringBuffer highlightedText = new StringBuffer();
    for (final Object obj : transformedData) {
      if (obj instanceof String) {
        highlightedText.append((String) obj);
      } else if (obj instanceof DHighLighted) {
        highlightedText.append(markupPrefix + ((DHighLighted) obj).getText() + markupSuffix);
      }
    }

    final AnyMap transformedHighlight = highlight.getFactory().createAnyMap();
    // set markup text in annotation
    transformedHighlight.put(SearchResultConstants.HIGHLIGHT_TEXT, highlightedText.toString());
    return transformedHighlight;
  }

  /**
   * Returns the DParameterDefinition of the HighlightingTransformer.
   * 
   * @return DParameterDefinition
   * @throws ParameterException
   *           if any error occurs
   */
  private DParameterDefinition getParameterDefinition() throws ParameterException {
    if (_parameterDefinition == null) {
      final String className = getClass().getSimpleName();
      final InputStream inputStream = getClass().getResourceAsStream(className + ".xml");
      try {
        final Document document = XMLUtils.parse(inputStream, true);
        final DParameterDefinition parameterDefinition =
          DParameterDefinitionCodec.decode(document.getDocumentElement());
        _parameterDefinition = parameterDefinition;
      } catch (final Exception exception) {
        throw new ParameterException("unable to load parameter definition", exception);
      } finally {
        if (inputStream != null) {
          IOUtils.closeQuietly(inputStream);
        }
      }
    } // if
    return _parameterDefinition;
  }

  /**
   * Creates a ParameterSet from a given DParameterSet configuration, merging it with the DParameterDefinition (applying
   * defaults).
   * 
   * @param dParameterSet
   *          the DParameterSet
   * @return a ParameterSet
   * @throws ParameterException
   *           if any error occurs
   */
  protected ParameterSet createParameterSet(final DParameterSet dParameterSet) throws ParameterException {
    ParameterSet paramSet;
    try {
      paramSet = new ParameterSet(dParameterSet, getParameterDefinition());
      return paramSet;
    } catch (final ParameterException e) {
      throw new ParameterException("unable to parse parameters", e);
    }
  }
}
