/*******************************************************************************
 * Copyright (c) 2010 Empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Igor Novakovic (Empolis GmbH) - initial implementation
 *******************************************************************************/

package org.eclipse.smila.integration.solr;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;

/**
 * This pipelet integrates the Apache Solr's REST API and is designed to be used both in processing and in search
 * pipelines.
 * 
 */
public class SolrSearchPipelet implements Pipelet {

  // configuration properties
  private static final String SHARDS = "shards";

  private static final String HIGHLIGHT_PARAMS = "highlight.params";

  private static final String HIGHLIGHT = "highlight";

  private static final String DEFAULT_SEARCH_TERM = "SMILA";

  // Solr Http constants
  private static final String HTTP_LOCALHOST = "http://localhost";

  private static final String SOLR_WEBAPP = ":8983/solr/";

  private static final String SELECT = "select?";

  private static final String GET = "GET";

  public static final String UTF8 = "utf-8";

  private static final SAXParserFactory pf = SAXParserFactory.newInstance();

  private AnySeq _shards = null;

  private boolean _highlight = true;

  private AnySeq _highlightParams = null;

  private AnyMap _configuration;

  private final Log _log = LogFactory.getLog(SolrSearchPipelet.class);

  @Override
  public String[] process(final Blackboard blackboard, final String[] message) throws ProcessingException {
    if (message.length > 0) {
      final QueryParameterAccessor parameters = new QueryParameterAccessor(blackboard, message[0]);
      final String query = parameters.getQuery();
      final int resultSize = parameters.getMaxCount();
      final int resultOffset = parameters.getOffset();
      final List<String> resultAttributes = parameters.getResultAttributes();
      // Threshold seems not to be implemented in Solr, so we just ignore it for now.
      // double threshold = parameters.getThreshold();

      HttpURLConnection conn = null;
      final List<String> rIds = new ArrayList<String>();

      String searchURL = HTTP_LOCALHOST + SOLR_WEBAPP + SELECT;
      if (_shards != null) {
        searchURL += "shards=";
        for (final Any shard : _shards) {
          if (shard.isValue()) {
            searchURL += ((Value) shard).asString() + SOLR_WEBAPP + ",";
          }
        }
      }
      if (_highlight) {
        searchURL += "&hl=true";
      }
      if (_highlightParams != null) {
        for (final Any hp : _highlightParams) {
          if (hp.isValue()) {
            searchURL += "&" + ((Value) hp).asString();
          }
        }
      }
      searchURL += "&start=" + resultOffset;
      searchURL += "&rows=" + resultSize;
      // Include requested attributes and scores
      // into the result.
      if (resultAttributes != null) {
        // We need to retrieve id & _source explicitly
        searchURL += "&fl=id,_source,";
        for (final String ra : resultAttributes) {
          searchURL += ra + ",";
        }
        searchURL += "score";
      }
      searchURL += "&indent=true&q=";
      try {
        if (query != null) {
          searchURL += URLEncoder.encode(query, UTF8);
        } else {
          // We have to set any value for a query otherwise we get
          // error 500
          searchURL += DEFAULT_SEARCH_TERM;
        }
        final URL url = new URL(searchURL);
        conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod(GET);
        conn.setDoOutput(true);
        conn.setReadTimeout(10000);
        conn.connect();

        final InputStream is = conn.getInputStream();
        final SAXParser p = pf.newSAXParser();
        final SolrResponseHandler srh = new SolrResponseHandler(blackboard, rIds);
        p.parse(is, srh);

        final String totalHits = Integer.toString(srh.noOfHits);
        final AnySeq records = blackboard.getDataFactory().createAnySeq();
        for (final String recordId : rIds) {
          records.add(blackboard.getMetadata(recordId));
        }
        blackboard.getMetadata(message[0]).put(SearchResultConstants.COUNT, totalHits);
        blackboard.getMetadata(message[0]).put(SearchResultConstants.RECORDS, records);
      } catch (final Exception e) {
        final String msg = "Error while while processing search request: '" + e.getMessage() + "'.";
        _log.error(msg, e);
        throw new ProcessingException(msg, e);
      } finally {
        conn.disconnect();
        conn = null;
      }
    }
    return message;
  }

  @Override
  public void configure(final AnyMap config) throws ProcessingException {
    // Search configuration parameters
    _configuration = config;
    _shards = _configuration.getSeq(SHARDS);
    if (_configuration.containsKey(HIGHLIGHT)) {
      _highlight = _configuration.getBooleanValue(HIGHLIGHT);
    }
    _highlightParams = _configuration.getSeq(HIGHLIGHT_PARAMS);
    new SolrPipeletAgent(this);
  }

  public void setShards(final String shards) {
    final DataFactory f = DataFactoryCreator.createDefaultFactory();
    if (!shards.isEmpty()) {
      final String[] nodes = shards.split(",");
      _shards = f.createAnySeq();
      for (int i = 0; i < nodes.length; i++) {
        if (!nodes[i].isEmpty()) {
          _shards.add(nodes[i]);
        }
      }
    }
  }

  public String getShards() {
    String shardsStr = new String();
    if (_shards != null) {
      for (final Any shard : _shards) {
        if (shard.isValue()) {
          shardsStr += ((Value) shard).asString() + ",";
        }
      }
    }
    return shardsStr;
  }
}
