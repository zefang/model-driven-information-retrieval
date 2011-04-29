package org.eclipse.smila.search.highlighting;

import java.util.Map;

import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.search.datadictionary.messages.ddconfig.DHighlightingTransformer;
import org.eclipse.smila.search.highlighting.transformer.HighlightingTransformerException;
import org.eclipse.smila.search.utils.param.ParameterException;

/**
 * HighlightingService using HighlightingTransformer services. Basically a background service for the Highlighting
 * pipelet to make the handling of dynamic transformer services easier.
 * 
 * @author scum36
 * 
 */
public interface HighlightingService {
  /**
   * Constant for the configuration parameter
   */
  String HIGHLIGHTING_TRANSFORMERS = "highlightingTransformers";

  /**
   * Constant for the sub annotation "name" of annotation HighlightingTransformer.
   */
  String HIGHLIGHTING_PARAMETER_NAME = "name";

  /**
   * Checks if the query contains any Highlight annotations on attributes and converts them into
   * DHighlightingTransformer configuration objects.
   * 
   * @param parameters
   *          query parameters
   * @return a Map of attribute names to DHighlightingTransformer configurations
   * @throws BlackboardAccessException
   *           if any record access error occurs
   */
  Map<String, DHighlightingTransformer> getTransformerConfigs(final QueryParameterAccessor parameters)
    throws BlackboardAccessException;

  /**
   * Executes highlighting for the record with the given Id using the given highlightConfigs.
   * 
   * @param resultRecord
   *          a search result record to highlight.
   * @param highlightConfigs
   *          the highlightConfigs
   * @throws BlackboardAccessException
   *           if any record access error occurs
   * @throws HighlightingTransformerException
   *           if any highlight transformation error occurs
   * @throws ParameterException
   *           if any highlight configuration error occurs
   */
  void highlight(AnyMap resultRecord, final Map<String, DHighlightingTransformer> highlightConfigs)
    throws BlackboardAccessException, HighlightingTransformerException, ParameterException;

}
