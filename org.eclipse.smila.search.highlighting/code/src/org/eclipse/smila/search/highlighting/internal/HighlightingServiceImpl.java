package org.eclipse.smila.search.highlighting.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.eclipse.smila.search.datadictionary.messages.ddconfig.DHighlightingTransformer;
import org.eclipse.smila.search.highlighting.HighlightingService;
import org.eclipse.smila.search.highlighting.transformer.HighlightingTransformer;
import org.eclipse.smila.search.highlighting.transformer.HighlightingTransformerException;
import org.eclipse.smila.search.utils.param.ParameterException;
import org.eclipse.smila.search.utils.param.set.DBoolean;
import org.eclipse.smila.search.utils.param.set.DInteger;
import org.eclipse.smila.search.utils.param.set.DParameterSet;
import org.eclipse.smila.search.utils.param.set.DString;
import org.osgi.framework.ServiceReference;
import org.osgi.service.component.ComponentContext;

/**
 * default implementation of the {@link HighlightingService}.
 * 
 * @author scum36
 * 
 */
public class HighlightingServiceImpl implements HighlightingService {

  /**
   * name of OSGi service reference to highlightingTransformer.
   */
  public static final String HIGHLIGHTING_TRANSFORMER_REFERENCE = "highlightingTransformer";

  /**
   * Constant for the OSGi property smila.highlighting.transformer.type.
   */
  public static final String PROPERTY_HIGHLIGHTING_TRANSFORMER_TYPE = "smila.highlighting.transformer.type";

  /**
   * local logger.
   */
  private final Log _log = LogFactory.getLog(HighlightingService.class);

  /**
   * Reference to the ComponentContext.
   */
  private ComponentContext _componentContext;

  /**
   * Map of ServiceReference to HighlightingTransformer.
   */
  private HashMap<String, ServiceReference> _highlightingTransformer;

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   * 
   * @throws Exception
   *           if any error occurs
   */
  protected void activate(final ComponentContext context) throws Exception {
    _componentContext = context;
    if (_log.isTraceEnabled()) {
      _log.trace("activating HighlightingService");
    }
  }

  /**
   * DS deactivate method.
   * 
   * @param context
   *          the ComponentContext
   * 
   * @throws Exception
   *           if any error occurs
   */
  protected void deactivate(final ComponentContext context) throws Exception {
    if (_highlightingTransformer != null) {
      _highlightingTransformer.clear();
      _highlightingTransformer = null;
    }
    _componentContext = null;
    if (_log.isTraceEnabled()) {
      _log.trace("deactivating HighlightingService");
    }
  }

  /**
   * add a highlighting transformer as an OSGi service reference. To be used by Declarative Services as the bind method.
   * 
   * @param serviceReference
   *          service reference to add.
   */
  protected void setHighlightingTransformer(final ServiceReference serviceReference) {
    if (_highlightingTransformer == null) {
      _highlightingTransformer = new HashMap<String, ServiceReference>();
    }

    if (serviceReference != null) {
      final String type = serviceReference.getProperty(PROPERTY_HIGHLIGHTING_TRANSFORMER_TYPE).toString();
      if (type == null) {
        _log
          .error("Cannot use highlighting transformer without property " + PROPERTY_HIGHLIGHTING_TRANSFORMER_TYPE);
      } else {
        _highlightingTransformer.put(type, serviceReference);
        if (_log.isInfoEnabled()) {
          _log.info("Registered highlighting transformer " + type);
        }
      }
    }
  }

  /**
   * remove a highlighting transformer service. To be used by Declarative Services as the unbind method.
   * 
   * @param serviceReference
   *          service reference to remove.
   */
  protected void unsetHighlightingTransformer(final ServiceReference serviceReference) {
    if (_highlightingTransformer != null && serviceReference != null) {
      final String type = serviceReference.getProperty(PROPERTY_HIGHLIGHTING_TRANSFORMER_TYPE).toString();
      if (type != null) {
        _highlightingTransformer.remove(type);
        if (_log.isInfoEnabled()) {
          _log.info("Unregistered highlighting transformer " + type);
        }
      }
    }
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Map<String, DHighlightingTransformer> getTransformerConfigs(final QueryParameterAccessor parameters)
    throws BlackboardAccessException {
    final HashMap<String, DHighlightingTransformer> highlightConfigs =
      new HashMap<String, DHighlightingTransformer>();
    final List<String> attributeNames = parameters.getHighlightAttributeNames();
    if (attributeNames != null) {
      final AnyMap transformerConfigs = parameters.getSubParameter(HIGHLIGHTING_TRANSFORMERS);
      if (transformerConfigs != null) {
        for (final String attributeName : attributeNames) {
          final AnyMap attributeConfig = transformerConfigs.getMap(attributeName);
          if (attributeConfig != null) {
            final DHighlightingTransformer highlightConfig = createHighlightConfig(attributeConfig);
            if (highlightConfig != null) {
              highlightConfigs.put(attributeName, highlightConfig);
            }
          }
        }
      }
    }
    return highlightConfigs;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void highlight(final AnyMap resultRecord, final Map<String, DHighlightingTransformer> highlightConfigs)
    throws BlackboardAccessException, HighlightingTransformerException, ParameterException {
    if (resultRecord.containsKey(SearchResultConstants.HIGHLIGHT)) {
      final Any highlights = resultRecord.get(SearchResultConstants.HIGHLIGHT);
      if (highlights.isMap() && !highlights.isEmpty()) {
        final AnyMap highlightsMap = (AnyMap) highlights;
        final Iterator<String> attributeNames = highlightConfigs.keySet().iterator();
        while (attributeNames.hasNext()) {
          final String attributeName = attributeNames.next();
          if (highlightsMap.containsKey(attributeName)) {
            final DHighlightingTransformer highlightConfig = highlightConfigs.get(attributeName);
            final Any highlight = highlightsMap.get(attributeName);
            if (highlight.isMap() && !highlight.isEmpty()) {
              HighlightingTransformer transformer = null;
              if (_highlightingTransformer != null) {
                transformer =
                  (HighlightingTransformer) _componentContext.locateService(HIGHLIGHTING_TRANSFORMER_REFERENCE,
                    _highlightingTransformer.get(highlightConfig.getName()));
              }
              if (transformer != null) {
                highlightsMap.put(attributeName,
                  transformer.transform((AnyMap) highlight, highlightConfig.getParameterSet()));
              } else if (_log.isWarnEnabled()) {
                _log.warn("Could not find a HighlightingTransformer with name " + highlightConfig.getName());
              }
            }
          }
        }
      } // if
    } // while
  }

  /**
   * Creates a DHighlightingTransformer from a given "highlight" annotation.
   * 
   * @param attributeConfig
   *          the highlight configuration for an attribute
   * @return the DHighlightingTransformer or null
   */
  private DHighlightingTransformer createHighlightConfig(final AnyMap attributeConfig) {
    if (attributeConfig.containsKey(HIGHLIGHTING_PARAMETER_NAME)) {
      final DHighlightingTransformer config = new DHighlightingTransformer();
      config.setName(attributeConfig.getStringValue(HIGHLIGHTING_PARAMETER_NAME));
      final DParameterSet parameterSet = createParameterSet(attributeConfig);
      config.setParameterSet(parameterSet);
      return config;
    }
    return null;
  }

  /**
   * Creates a DParameterSet from a given "HighlightingTransformer" annotation.
   * 
   * @param highlightingTransformer
   *          the HighlightingTransformer annotation
   * @return a DParameterSet
   */
  private DParameterSet createParameterSet(final AnyMap highlightingTransformer) {
    final DParameterSet parameterSet = new DParameterSet();
    for (final String paramName : highlightingTransformer.keySet()) {
      if (!HIGHLIGHTING_PARAMETER_NAME.equals(paramName)) {
        final String value = highlightingTransformer.getStringValue(paramName);
        if ("MarkupPrefix".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("MarkupSuffix".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("MaxLength".equals(paramName)) {
          parameterSet.addParameter(createDInteger(paramName, Integer.parseInt(value)));
        } else if ("MaxHLElements".equals(paramName)) {
          parameterSet.addParameter(createDInteger(paramName, Integer.parseInt(value)));
        } else if ("MaxPrecedingCharacters".equals(paramName)) {
          parameterSet.addParameter(createDInteger(paramName, Integer.parseInt(value)));
        } else if ("MaxSucceedingCharacters".equals(paramName)) {
          parameterSet.addParameter(createDInteger(paramName, Integer.parseInt(value)));
        } else if ("PrecedingCharacters".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("SucceedingCharacters".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("SortAlgorithm".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("TextHandling".equals(paramName)) {
          parameterSet.addParameter(createDString(paramName, value));
        } else if ("HLElementFilter".equals(paramName)) {
          parameterSet.addParameter(createDBoolean(paramName, Boolean.parseBoolean(value)));
        } else {
          if (_log.isWarnEnabled()) {
            _log.warn("unknown HighlightingTransformer parameter name " + paramName);
          }
        }
      }
    }
    return parameterSet;
  }

  /**
   * Creates a DInteger parameter.
   * 
   * @param name
   *          the name of the parameter
   * @param value
   *          the value of the parameter
   * @return a DInteger
   */
  private DInteger createDInteger(final String name, final int value) {
    final DInteger param = new DInteger();
    param.setName(name);
    param.setType("Integer");
    param.setValue(value);
    return param;
  }

  /**
   * Creates a DString parameter.
   * 
   * @param name
   *          the name of the parameter
   * @param value
   *          the value of the parameter
   * @return a DString
   */
  private DString createDString(final String name, final String value) {
    final DString param = new DString();
    param.setName(name);
    param.setType("String");
    param.setValue(value);
    return param;
  }

  /**
   * Creates a DBoolean parameter.
   * 
   * @param name
   *          the name of the parameter
   * @param value
   *          the value of the parameter
   * @return a DBoolean
   */
  private DBoolean createDBoolean(final String name, final boolean value) {
    final DBoolean param = new DBoolean();
    param.setName(name);
    param.setType("Boolean");
    param.setValue(value);
    return param;
  }

}
