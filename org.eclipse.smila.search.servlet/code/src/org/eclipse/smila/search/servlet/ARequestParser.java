package org.eclipse.smila.search.servlet;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.search.api.QueryConstants;
import org.eclipse.smila.search.api.QueryConstants.SortOrder;
import org.eclipse.smila.search.api.helper.QueryBuilder;
import org.eclipse.smila.utils.collections.MultiValueMap;

/**
 * base class for request parsers.
 * 
 * @author jschumacher
 */
public class ARequestParser {

  /**
   * prefix for http parameter names specifying attribute values. The attribute name is the rest of the parameter name
   * after this prefix.
   */
  public static final String PREFIX_ATTRIBUTE = "A.";

  /**
   * prefix for SortBy parameter. After the prefix follows the attribute name, the value is either ASCENDING or
   * DESCENDING.
   */
  public static final String PREFIX_SORTBY = QueryConstants.SORTBY + ".";

  /**
   * prefix for enum filter values. Rest of parameter name is attribute name.
   */
  public static final String PREFIX_FILTER_VAL = "F.val.";

  /**
   * prefix for range filter min values. Rest of parameter name is attribute name.
   */
  public static final String PREFIX_FILTER_MIN = "F.min.";

  /**
   * prefix for range filter max values. Rest of parameter name is attribute name.
   */
  public static final String PREFIX_FILTER_MAX = "F.max.";

  /**
   * prefix for ranking parameters. Rest of parameter name is attribute name dot ranking parameter.
   */
  public static final String PREFIX_RANKING = "R.";

  /**
   * name of parameter specifying the workflow name.
   */
  public static final String PARAM_PIPELINE = "workflow";

  /**
   * name of pipeline to use, if the request does not contain a pipeline parameter.
   */
  protected String _defaultPipeline;

  /**
   * collects enum filter values during parameter processing.
   */
  private final MultiValueMap<String, String> _filterValues = new MultiValueMap<String, String>();

  /**
   * collects range filter min values during parameter processing.
   */
  private final Map<String, String> _filterMin = new HashMap<String, String>();

  /**
   * collects range filter max values during parameter processing.
   */
  private final Map<String, String> _filterMax = new HashMap<String, String>();

  /** ranking parameters. */
  private AnyMap _ranking;

  /**
   * create new instance with default pipeline.
   * 
   * @param defaultPipeline
   *          default pipeline name to use, if request does not contain a pipeline parameter.
   */
  public ARequestParser(final String defaultPipeline) {
    super();
    _defaultPipeline = defaultPipeline;
  }

  /**
   * add stuff collected while parsing the request to query builder.
   * 
   * @param builder
   *          query builder.
   */
  protected void setupQuery(final QueryBuilder builder) {
    if (_ranking != null) {
      builder.setRanking(_ranking);
    }
    setupFilters(builder);
    setDefaultParameters(builder);
  }

  /**
   * create filters from information collected during http parameter processing.
   * 
   * @param builder
   *          query builder
   */
  protected void setupFilters(final QueryBuilder builder) {
    for (final String attributeName : _filterValues.keySet()) {
      setupListFilter(builder, attributeName);
    }
    final Set<String> rangeFilterAttributes = new HashSet<String>();
    rangeFilterAttributes.addAll(_filterMin.keySet());
    rangeFilterAttributes.addAll(_filterMax.keySet());
    for (final String attributeName : rangeFilterAttributes) {
      setupRangeFilter(builder, attributeName);
    }
  }

  /**
   * add an enum filter.
   * 
   * @param builder
   *          query builder.
   * @param attributeName
   *          attribute name.
   */
  protected void setupListFilter(final QueryBuilder builder, final String attributeName) {
    final List<String> values = _filterValues.get(attributeName);
    if (values != null && values.size() > 0) {
      try {
        builder.addOneOfFilter(attributeName, values);
      } catch (Exception ex) {
        ex = null; // ignore. strings are ok here.
      }
    }
  }

  /**
   * add a range filter.
   * 
   * @param builder
   *          query builder.
   * @param attributeName
   *          attribute name.
   */
  protected void setupRangeFilter(final QueryBuilder builder, final String attributeName) {
    try {
      builder.addRangeFilter(attributeName, _filterMin.get(attributeName), _filterMax.get(attributeName));
    } catch (Exception ex) {
      ex = null; // ignore. strings are ok here.
    }
  }

  /**
   * set default parameters for resultSize and resultOffset parameters, if no values where found in the request. This is
   * done mainly to make life easier for the XSL sheet processing the result.
   * 
   * @param builder
   *          query builder created from http request.
   */
  protected void setDefaultParameters(final QueryBuilder builder) {
    if (!builder.getMetadata().containsKey(QueryConstants.MAXCOUNT)) {
      builder.setMaxCount(QueryConstants.DEFAULT_MAXCOUNT);
    }
    if (!builder.getMetadata().containsKey(QueryConstants.OFFSET)) {
      builder.setOffset(QueryConstants.DEFAULT_OFFSET);
    }
  }

  /**
   * process http param values.
   * 
   * @param builder
   *          query builder
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values, must not be null or empty.
   */
  protected void processParameter(final QueryBuilder builder, final String paramName, final String[] paramValues) {
    final List<String> nonEmptyValues = new ArrayList<String>(paramValues.length);
    for (final String paramValue : paramValues) {
      if (!StringUtils.isEmpty(paramValue)) {
        nonEmptyValues.add(paramValue);
      }
    }
    if (!nonEmptyValues.isEmpty()) {
      if (paramName.startsWith(PREFIX_RANKING)) {
        processRankingParameter(builder, paramName, nonEmptyValues);
      } else if (paramName.startsWith(PREFIX_FILTER_VAL)) {
        processFilterValue(paramName, nonEmptyValues);
      } else if (paramName.startsWith(PREFIX_FILTER_MIN)) {
        processFilterMin(paramName, nonEmptyValues);
      } else if (paramName.startsWith(PREFIX_FILTER_MAX)) {
        processFilterMax(paramName, nonEmptyValues);
      } else if (paramName.startsWith(PREFIX_SORTBY)) {
        processSortBy(builder, paramName, nonEmptyValues);
      } else if (paramName.startsWith(PREFIX_ATTRIBUTE)) {
        final String name = paramName.substring(PREFIX_ATTRIBUTE.length());
        builder.setQueryAttribute(name, nonEmptyValues.toArray());
      } else {
        setCustomParameterValues(builder, paramName, nonEmptyValues);
      }
    }
  }

  /**
   * process a parameter name of the form "Fmax.&lt;attributeName>" to set a max value in a range filter annotation for
   * an attribute.
   * 
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values. Only the first value is used.
   */
  private void processFilterMax(final String paramName, final List<String> paramValues) {
    final String attributeName = paramName.substring(PREFIX_FILTER_MAX.length());
    if (!StringUtils.isEmpty(attributeName)) {
      _filterMax.put(attributeName, paramValues.get(0));
    }
  }

  /**
   * process a parameter name of the form "Fmin.&lt;attributeName>" to set a min value in a range filter annotation for
   * an attribute.
   * 
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values. Only the first value is used.
   */
  private void processFilterMin(final String paramName, final List<String> paramValues) {
    final String attributeName = paramName.substring(PREFIX_FILTER_MIN.length());
    if (!StringUtils.isEmpty(attributeName)) {
      _filterMin.put(attributeName, paramValues.get(0));
    }
  }

  /**
   * process a parameter name of the form "Fval.&lt;attributeName>" to set a filter mode annotation for an attribute.
   * 
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values. All values are added to the filter annotation.
   */
  private void processFilterValue(final String paramName, final List<String> paramValues) {
    final String attributeName = paramName.substring(PREFIX_FILTER_VAL.length());
    if (!StringUtils.isEmpty(attributeName)) {
      for (final String value : paramValues) {
        if (!StringUtils.isEmpty(value)) {
          _filterValues.add(attributeName, value);
        }
      }
    }
  }

  /**
   * process a parameter name of the form "R.&lt;parameter>" or "R.&lt;attribute>.&lt;parameter>" to set ranking
   * annotation values either on the record or one of its attributes.
   * 
   * @param builder
   *          query builder
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values. Only the first value is used.
   */
  private void processRankingParameter(final QueryBuilder builder, final String paramName,
    final List<String> paramValues) {
    final String attributeAndParameterName = paramName.substring(PREFIX_RANKING.length());
    final int dotIndex = attributeAndParameterName.indexOf('.');
    String valueName = null;
    String attributeName = null;
    if (dotIndex < 0) {
      valueName = attributeAndParameterName;
    } else {
      valueName = attributeAndParameterName.substring(0, dotIndex);
      attributeName = attributeAndParameterName.substring(dotIndex + 1);
    }
    final Value paramValue = builder.getFactory().createStringValue(paramValues.get(0));
    if (_ranking == null) {
      _ranking = builder.getFactory().createAnyMap();
    }
    if (attributeName != null) {
      AnyMap attributeRanking = _ranking.getMap(attributeName);
      if (attributeRanking == null) {
        attributeRanking = builder.getFactory().createAnyMap();
        _ranking.put(attributeName, attributeRanking);
      }
      attributeRanking.put(valueName, paramValue);
    } else {
      _ranking.put(valueName, paramValue);
    }
  }

  /**
   * set query parameters from http params.
   * 
   * @param builder
   *          query builder
   * @param paramName
   *          parameter name
   * @param paramValues
   *          parameter values, must not be null or empty.
   */
  protected void setCustomParameterValues(final QueryBuilder builder, final String paramName,
    final List<String> paramValues) {
    // set first value as single-value-parameter
    if (paramValues.size() == 1) {
      builder.setParameter(paramName, paramValues.get(0));
    } else {
      // set all values als list parameter.
      for (final String value : paramValues) {
        builder.addParameter(paramName, value);
      }
    }
  }

  /**

   */
  private void processSortBy(final QueryBuilder builder, final String paramName, final List<String> paramValues) {
    final String attributeName = paramName.substring(PREFIX_SORTBY.length());
    if (!StringUtils.isEmpty(attributeName)) {
      try {
        final SortOrder orderMode = SortOrder.valueOf(paramValues.get(0).toUpperCase());
        builder.addSortBy(attributeName, orderMode);
      } catch (Exception ex) {
        ex = null; // illegal order by mode
      }
    }
  }

}
