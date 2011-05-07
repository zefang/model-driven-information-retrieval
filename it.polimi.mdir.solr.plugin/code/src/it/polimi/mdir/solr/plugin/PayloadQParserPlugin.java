package it.polimi.mdir.solr.plugin;

import org.apache.solr.common.params.SolrParams;
import org.apache.solr.common.util.NamedList;
import org.apache.solr.request.SolrQueryRequest;
import org.apache.solr.search.QParser;
import org.apache.solr.search.QParserPlugin;

/**
 * Parser plugin to parse payload queries.
 */
public class PayloadQParserPlugin extends QParserPlugin {

	
	@SuppressWarnings("rawtypes")
	@Override
	public void init(NamedList arg0) {
	}

	@Override
	public QParser createParser(String qstr, SolrParams localParams, SolrParams params,
			SolrQueryRequest req) {
		
		return new PayloadQParser(qstr, localParams, params, req);
	}

 
}