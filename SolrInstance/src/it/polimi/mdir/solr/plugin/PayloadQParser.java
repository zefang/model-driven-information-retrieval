package it.polimi.mdir.solr.plugin;

import org.apache.commons.lang.StringUtils;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.search.BooleanClause.Occur;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.payloads.AveragePayloadFunction;
import org.apache.lucene.search.payloads.PayloadTermQuery;
import org.apache.solr.common.params.SolrParams;
import org.apache.solr.request.SolrQueryRequest;
import org.apache.solr.search.QParser;

public class PayloadQParser extends QParser {

	public PayloadQParser(String qstr, SolrParams localParams, SolrParams params,
		      SolrQueryRequest req) {
		super(qstr, localParams, params, req);
	}

	@Override
	public Query parse() throws ParseException {
		BooleanQuery q = new BooleanQuery();
	    String[] nvps = StringUtils.split(qstr, " ");
	    for (int i = 0; i < nvps.length; i++) {
	      String[] nv = StringUtils.split(nvps[i], ":");
	      if (nv[0].startsWith("+")) {
	        q.add(new PayloadTermQuery(new Term(nv[0].substring(1), nv[1]), 
	          new AveragePayloadFunction(), false), Occur.MUST);
	      } else {
	        q.add(new PayloadTermQuery(new Term(nv[0], nv[1]), 
	          new AveragePayloadFunction(), false), Occur.SHOULD);
	      }
	    }
	    return q;
	}

}
