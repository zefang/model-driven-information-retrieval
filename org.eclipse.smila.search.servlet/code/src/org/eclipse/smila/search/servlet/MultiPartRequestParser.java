package org.eclipse.smila.search.servlet;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.fileupload.FileItem;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.search.api.helper.QueryBuilder;
import org.eclipse.smila.utils.collections.MultiValueMap;

/**
 * request parser that can parse multi part forms containing attachments.
 * 
 * @author jschumacher
 * 
 */
public class MultiPartRequestParser extends ARequestParser {
  /**
   * create new instance with default pipeline.
   * 
   * @param defaultPipeline
   *          default pipeline name to use, if request does not contain a pipeline parameter.
   */
  public MultiPartRequestParser(final String defaultPipeline) {
    super(defaultPipeline);
  }

  /**
   * create QueryBuilder from http request parameters.
   * 
   * @param items
   *          multi part from items
   * @return new query builder instance.
   */
  public QueryBuilder parse(final List items) {
    final MultiValueMap<String, String> parameters = new MultiValueMap<String, String>();
    final Map<String, byte[]> attachments = new HashMap<String, byte[]>();
    final AnyMap attachmentFileNames = QueryBuilder.DEFAULT_FACTORY.createAnyMap();

    for (int i = 0; i < items.size(); i++) {
      final FileItem item = (FileItem) items.get(i);
      final String fieldName = item.getFieldName();
      if (item.isFormField()) {
        parameters.add(fieldName, item.getString());
      } else {
        if (item.getSize() > 0) {
          attachments.put(fieldName, item.get());
          attachmentFileNames.put(fieldName, QueryBuilder.DEFAULT_FACTORY.createStringValue(item.getName()));
        }
      }
    }
    String pipeline = _defaultPipeline;
    if (parameters.containsKey(PARAM_PIPELINE)) {
      pipeline = parameters.get(PARAM_PIPELINE).get(0);
    }
    final QueryBuilder builder = new QueryBuilder(pipeline);
    for (final String paramName : parameters.keySet()) {
      final List<String> values = parameters.get(paramName);
      if (values != null && values.size() > 0) {
        processParameter(builder, paramName, values.toArray(new String[values.size()]));
      }
    }
    for (final String attachmentName : attachments.keySet()) {
      final byte[] content = attachments.get(attachmentName);
      if (content != null && content.length > 0) {
        builder.setAttachment(attachmentName, content);
      }
    }
    if (!attachmentFileNames.isEmpty()) {
      builder.getQuery().getMetadata().put("attachmentFileNames", attachmentFileNames);
    }
    setupQuery(builder);
    return builder;
  }
}
