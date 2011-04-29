/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: brox IT-Solutions GmbH - initial creator
 **********************************************************************************************************************/

package org.eclipse.smila.search.highlighting.transformer;

import java.util.ArrayList;

import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.utils.param.ParameterException;
import org.eclipse.smila.search.utils.param.ParameterSet;
import org.eclipse.smila.search.utils.param.set.DParameterSet;

/**
 * @author brox IT-Solutions GmbH
 */
public class MaxTextLength extends HighlightingTransformer {

  /**
   * {@inheritDoc}
   */
  @Override
  public AnyMap transform(final AnyMap highlight, final DParameterSet highlightConfig)
    throws HighlightingTransformerException, ParameterException {
    // get parameters
    final ParameterSet parameterSet = createParameterSet(highlightConfig);
    final String markupPrefix = parameterSet.getStringParameter(PARAM_MARKUP_PREFIX);
    final String markupSuffix = parameterSet.getStringParameter(PARAM_MARKUP_SUFFIX);
    final int maxLength = parameterSet.getIntegerParameter(PARAM_MAX_LENGTH);

    final StringBuilder buffer = new StringBuilder();
    int pos = 0;
    final String originalText = highlight.getStringValue(SearchResultConstants.HIGHLIGHT_TEXT);
    final AnySeq highlightPositions = highlight.getSeq(SearchResultConstants.HIGHLIGHT_POSITIONS);
    for (final Any element : highlightPositions) {
      if (element.isMap()) {
        final AnyMap highlightPos = (AnyMap) element;
        final int start = highlightPos.getLongValue(SearchResultConstants.POS_START).intValue();
        final int end = highlightPos.getLongValue(SearchResultConstants.POS_END).intValue();

        if (start > maxLength) {
          buffer.append(originalText.substring(pos, maxLength));
          pos = maxLength;
          break;
        } else {
          buffer.append(originalText.substring(pos, start));
        }

        if (end > maxLength) {
          pos = maxLength;
          break;
        } else {
          buffer.append(markupPrefix);
          buffer.append(originalText.substring(start, end));
          buffer.append(markupSuffix);
        }
        pos = end;
      }
    }
    if (pos < maxLength) {
      if (originalText.length() < maxLength) {
        buffer.append(originalText.substring(pos));
      } else {
        buffer.append(originalText.substring(pos, maxLength));
      }
    }
    final AnyMap transformedHighlight = highlight.getFactory().createAnyMap();
    // set markup text in annotation
    transformedHighlight.put(SearchResultConstants.HIGHLIGHT_TEXT, buffer.toString());
    return transformedHighlight;
  }

  /**
   * {@inheritDoc} Not implemented. Use transform(Annotation highlight, final DParameterSet highlightConfig) instead.
   * 
   * @see org.eclipse.smila.search.highlighting.transformer.HighlightingTransformer#transform(ArrayList, ParameterSet)
   */
  @Override
  public ArrayList<Object> transform(final ArrayList<Object> data, final ParameterSet parameterSet)
    throws HighlightingTransformerException {
    return data;
  }
}
