package it.polimi.mdir.solr;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/**
 * This pipelet integrates the Apache Solr's REST API and is designed to be used both in processing and in search
 * pipelines. It calls the "/analysis/document" service of solr. 
 * 
 * Differrently from the plain SolrAnalyzerPipelet, which returns just the Solr analysis "as is",
 * this Pipelet performs a substitution of the analyzer response inside the respective SMILA field.
 * So it parses the solr response and substitutes the old SMILA field content with the analyzed content
 * keeping the original using this format:
 * 'original'$'analyzed', without quotes.  
 * 
 * */

public class SolrAnalyzerSubstitutionPipelet implements Pipelet {

	private AnyMap _configuration;
	
	private static final String ANALYSIS = "/analysis/document";
	
	private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();
	
	//Configuration parameter names
	private static final String WRITERTYPE = "writerType";
	private static final String INDENT = "indent";
	private static final String CORE_NAME = "coreName";
	private static final String SMILA_FIELDS = "smilaFields";
	private static final String SOLR_ANALYSIS_TYPES = "solrAnalysisTypes";
	
	//Default values if no parameters are specified
	private String _writerType = "xml";
	private String _indent = "true";
	private String _coreName = "test_core";
	
	private AnySeq _smilaFieldsSeq = null;
	private AnySeq _solrAnalysisTypesSeq = null;
	private ArrayList<String> _smilaFields = new ArrayList<String>();
	private ArrayList<String> _solrAnalysisTypes = new ArrayList<String>();
	
	public static final String UTF8 = "utf-8";
	
	public SolrAnalyzerSubstitutionPipelet() {}
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		
		if (_configuration.containsKey(WRITERTYPE)) {
			_writerType = _configuration.getStringValue(WRITERTYPE);
		}
		if (_configuration.containsKey(INDENT)) {
			_indent = _configuration.getStringValue(INDENT);
		}
		//reads the index name. If nothing is specified, test_core will be used.
		if (configuration.containsKey(CORE_NAME)) {   
			_coreName = _configuration.getStringValue(CORE_NAME);
		} 
		
		_smilaFieldsSeq = _configuration.getSeq(SMILA_FIELDS);
		_solrAnalysisTypesSeq = _configuration.getSeq(SOLR_ANALYSIS_TYPES);
		for (final Any smilaFieldValue : _smilaFieldsSeq) {
			if (smilaFieldValue.isValue()) {
	        	_smilaFields.add(((Value) smilaFieldValue).asString());
	        }
	    }
		for (final Any solrAnalysisTypeValue : _solrAnalysisTypesSeq) {
			if (solrAnalysisTypeValue.isValue()) {
				_solrAnalysisTypes.add(((Value) solrAnalysisTypeValue).asString());
	        }
	    }
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {

		String analysisURL = SolrDocumentUtil.HTTP_LOCALHOST + SolrDocumentUtil.SOLR_WEBAPP + _coreName + ANALYSIS;
		analysisURL += "?wt=" + _writerType + "&indent=" + _indent;
		
		URL url = null;
	    HttpURLConnection conn = null;
	    String outputXMLMessage;
	    
	    try {
	    	
			url = new URL(analysisURL);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod(SolrDocumentUtil.POST);
		    conn.setRequestProperty(SolrDocumentUtil.CONTENT_TYPE, SolrDocumentUtil.TEXT_XML_CHARSET + UTF8);
		    conn.setUseCaches(false);
		    conn.setDoOutput(true);
		    conn.setDoInput(true);
		    conn.setReadTimeout(10000);
		    
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		try {
			final DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
			final Document document = impl.createDocument(null, SolrDocumentUtil.SOLR, null);
			Element root = document.createElement(SolrDocumentUtil.ROOT);
	      
			Element field;
			Text text;
			
			for (final String id : recordIds) {
				final Element doc = document.createElement(SolrDocumentUtil.DOC);
				root.appendChild(doc);

				//Create fields
				final AnyMap record = blackboard.getMetadata(id);
				for (final String attrName : record.keySet()) {
					if (_smilaFields.contains(attrName)) { //TODO do this only for required content
						//TODO così perdo il payload! lanciare l'analizzatore per un elemento alla volta.
						int n = _smilaFields.indexOf(attrName);
						final Value attributeValue = record.getValue(attrName);
						String stringValue = replaceNonXMLChars(attributeValue.asString());
						field = document.createElement(SolrDocumentUtil.FIELD);
						field.setAttribute(SolrDocumentUtil.NAME, _solrAnalysisTypes.get(n));
						text = document.createTextNode(stringValue);
						field.appendChild(text);
						doc.appendChild(field);
					}
				}
			}

			final Transformer transformer = TRANSFORMER_FACTORY.newTransformer();
			final DOMSource source = new DOMSource(root);
			final Writer w = new StringWriter();
			final StreamResult streamResult = new StreamResult(w);
			transformer.transform(source, streamResult);
			outputXMLMessage = streamResult.getWriter().toString();
			conn.setRequestProperty(SolrDocumentUtil.CONTENT_LENGTH, Integer.toString(outputXMLMessage.length()));
			final DataOutputStream os = new DataOutputStream(conn.getOutputStream());
			os.write(outputXMLMessage.getBytes(UTF8));
			os.flush();
			os.close();
			
	     	final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	     	String line;
	      	final StringBuffer response = new StringBuffer();
	      	while ((line = rd.readLine()) != null) {
	    	  response.append(line);
	    	  response.append('\r');
	      	}
	      	rd.close();
	      	//System.out.println("Analyzer Response:\n" + response.toString());
	      	
	      	SAXBuilder builder = new SAXBuilder();
			InputStream is = new ByteArrayInputStream(response.toString().getBytes("UTF-8"));
			org.jdom.Document responseDoc = builder.build(is);
			org.jdom.Element analysisNode = (org.jdom.Element) responseDoc.getRootElement().getChildren().get(1);
	      	
	      	//parse response
	      	for (final String id : recordIds) {
	      		//Replace fields
				final AnyMap record = blackboard.getMetadata(id);
				for (final String attrName : record.keySet()) {
					if (_smilaFields.contains(attrName)) {
						String originalValue = record.getStringValue(attrName);
						String analyzedValue = getAnalyzedValue(id, attrName, analysisNode);
						record.put(attrName, originalValue+"%"+analyzedValue);
						System.out.println(originalValue+"%"+analyzedValue);
					}
				}
	      	}
	      	
		}
		catch (Exception e) {
			e.printStackTrace();
		} 
		finally {
			if (conn != null) {
				conn.disconnect();
			}
		}
		return recordIds;
	}

	
	/**
	 * @param id
	 * The id of the record
	 * @param attrName
	 * The name of the field of the record
	 * @return
	 * The analyzed value of that field, got by parsing the last
	 * analyzer response. Tokens are separated by white space.
	 *  
	 */
	private String getAnalyzedValue(String id, String attrName, org.jdom.Element analysisNode) {
		String result = "";
		
		Iterator<org.jdom.Element> elementsItr = analysisNode.getChildren().iterator();
		while (elementsItr.hasNext()) {
			org.jdom.Element record = elementsItr.next();
			if (record.getAttributeValue("name").equals(id)) {
				Iterator<org.jdom.Element> fieldsItr = record.getChildren().iterator();
				while (fieldsItr.hasNext()) {
					org.jdom.Element field = fieldsItr.next();
					if (field.getAttributeValue("name").equals(attrName)) {
						org.jdom.Element analysisTypeNode = (org.jdom.Element) field.getChildren().get(0);
						org.jdom.Element contentNode = (org.jdom.Element) analysisTypeNode.getChildren().get(0);
						Iterator<org.jdom.Element> analysisItr = contentNode.getChildren().iterator();
						while (analysisItr.hasNext()) {
							org.jdom.Element lastAnalysis = analysisItr.next();
							if (!analysisItr.hasNext()) {
								Iterator<Element> tokensItr = lastAnalysis.getChildren().iterator();
								while (tokensItr.hasNext()) {
									org.jdom.Element token = (org.jdom.Element)tokensItr.next();
									org.jdom.Element text = (org.jdom.Element) token.getChildren().get(0); 
									result += text.getText() +" ";
								}
							}
						}
						break;
					}
				}
				break;	
			}
		}
		
		return result.trim();
	}
	
	  /**
	   * This method replaces valid UTF-8 characters which are not allowed in XML with spaces.
	   * 
	   * @param source
	   *          - the original source string
	   * @return The filtered string
	   */
	private static String replaceNonXMLChars(final String source) {
		if (source == null) {
	      return null;
	    }
		final StringBuffer sb = new StringBuffer();
	    final char[] charArray = source.toCharArray();
	    for (final char c : charArray) {
	      if (c != '\u0000' && c != '\u0001' && c != '\u0002' && c != '\u0003' && c != '\u0004' && c != '\u0005'
	        && c != '\u0006' && c != '\u0007' && c != '\u0008' && c != '\u000B' && c != '\u000C' && c != '\u000E'
	        && c != '\u000F' && c != '\u0010' && c != '\u0011' && c != '\u0012' && c != '\u0013' && c != '\u0014'
	        && c != '\u0015' && c != '\u0016' && c != '\u0017' && c != '\u0018' && c != '\u0019' && c != '\u001A'
	        && c != '\u001B' && c != '\u001C' && c != '\u001D' && c != '\u001E' && c != '\u001F' && c != '\uFFFE'
	        && c != '\uFFFF') {
	        sb.append(c);
	      } else {
	        sb.append(' ');
	      }
	    }
	    return sb.toString();
	  }
	
}
