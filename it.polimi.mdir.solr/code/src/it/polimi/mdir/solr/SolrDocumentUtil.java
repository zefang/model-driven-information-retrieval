package it.polimi.mdir.solr;

import javax.xml.transform.TransformerFactory;

public class SolrDocumentUtil {
	
	// Solr Http constants
	public static final String CONTENT_TYPE = "Content-Type";
	public static final String CONTENT_LENGTH = "Content-Length";
	public static final String RESPONSE_HEADER = "ResponseHeader";
	public static final String META_DATA = "MetaData";
	public static final String TEXT_XML_CHARSET = "text/xml; charset=";
	public static final String POST = "POST";
	
	public static final String HTTP_LOCALHOST = "http://localhost";
	public static final String SOLR_WEBAPP = ":8983/solr/";
	
	//Solr document constants
	public static final String SOLR = "solr";
	public static final String ROOT = "root";
	public static final String DOC = "doc";
	public static final String FIELD = "field";
	public static final String NAME = "name";
	
	public static final String ADD = "add";
	public static final String DELETE = "delete";
	
	public static final String DATE_FORMAT_PATTERN = "yyyy-MM-dd'T'HH:mm:ss'Z'";
	
	public static final String ID = "id"; //TODO da eliminare
	
}
