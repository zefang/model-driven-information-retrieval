/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.search.lucene.index;

import org.apache.lucene.analysis.Token;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.TokenGroup;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.search.api.SearchResultConstants;

/**
 * Implementation of a lucene Formatter that creates highlighting annotations.
 */
public class AnnotationFormatter implements Formatter {

  /**
   * Original text.
   */
  private String _originalText;

  /**
   * A list of highlightPosition Annotations.
   */
  private AnySeq _highlightPositions;

  /**
   * The factory used to create the annotations.
   */
  private final DataFactory _factory;

  /**
   * Conversion constructor.
   * 
   * @param factory
   *          the RecordFactory to use.
   */
  public AnnotationFormatter(final DataFactory factory) {
    this._factory = factory;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.apache.lucene.search.highlight.Formatter#highlightTerm(String, TokenGroup)
   */
  @Override
  public String highlightTerm(final String originalText, final TokenGroup tokenGroup) {

    for (int index = 0; index < tokenGroup.getNumTokens(); index++) {
      final Token token = tokenGroup.getToken(index);
      final float score = tokenGroup.getScore(index);
      final int startOffset = token.startOffset();
      final int endOffset = token.endOffset();

      if (score > 0) {
        final AnyMap highlightPos = _factory.createAnyMap();
        highlightPos.put(SearchResultConstants.POS_START, _factory.createLongValue(startOffset));
        highlightPos.put(SearchResultConstants.POS_END, _factory.createLongValue(endOffset));
        highlightPos.put(SearchResultConstants.POS_QUALITY, _factory.createLongValue(mapScore(score)));
        _highlightPositions.add(highlightPos);
      }
    }
    return originalText;
  }

  /**
   * Reset this formatter.
   * 
   * @param originalText
   *          the original text
   */
  public void reset(final String originalText) {
    _originalText = originalText;
    if (_highlightPositions != null) {
      _highlightPositions.clear();
    }
    _highlightPositions = _factory.createAnySeq();
  }

  /**
   * Returns the highlight positions.
   * 
   * @return a list of highligth position annotations
   */
  public AnySeq getHighlightPositions() {
    return _highlightPositions;
  }

  /**
   * Return the original text.
   * 
   * @return the original text
   */
  public String getOriginalText() {
    return _originalText;
  }

  /**
   * Compute the score.
   * 
   * @param score
   *          the original score
   * @return the computed score
   */
  private static int mapScore(final float score) {
    return Math.round(score * 250);
  }
}
