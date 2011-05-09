package org.apache.solr.search;

import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.payloads.*;
import org.apache.solr.common.SolrException;
import org.apache.solr.common.params.SolrParams;
import org.apache.solr.common.util.NamedList;
import org.apache.solr.request.SolrQueryRequest;
import org.apache.solr.search.QParser;
import org.apache.solr.search.QParserPlugin;
import org.apache.solr.search.QueryParsing;

public class PayloadTermQueryPlugin extends QParserPlugin {
  public void init(NamedList args) {
  }

  @Override
  public QParser createParser(String qstr, SolrParams localParams, SolrParams params, SolrQueryRequest req) {
	  System.out.println("qstr: " + qstr);
	  System.out.println("localParams.toString(): " + localParams.toString());
	  System.out.println("localParams.get(f): " + localParams.get("f"));
	  System.out.println("localParams.get(v): " + localParams.get("v"));
	  System.out.println("localParams.get(func): " + localParams.get("func"));
    return new QParser(qstr, localParams, params, req) {
      public Query parse() throws ParseException {
        return new PayloadTermQuery(        		
            new Term(localParams.get(QueryParsing.F), localParams.get(QueryParsing.V)),
            createPayloadFunction(localParams.get("func")),
            false);
      }
    };
  }

  private PayloadFunction createPayloadFunction(String func) {
    // TODO: refactor so that payload functions are registered as plugins and loaded
    //       through SolrResourceLoader.

    PayloadFunction payloadFunction = null;
    if ("min".equals(func)) {
      payloadFunction = new MinPayloadFunction();
    } else if ("avg".equals(func)) {
      payloadFunction = new AveragePayloadFunction();
    } else if ("max".equals(func)) {
      payloadFunction = new MaxPayloadFunction();
    }

    if (payloadFunction == null) {
      throw new SolrException( SolrException.ErrorCode.BAD_REQUEST, "unknown PayloadFunction: " + func);
    }

    return payloadFunction;
  }
}