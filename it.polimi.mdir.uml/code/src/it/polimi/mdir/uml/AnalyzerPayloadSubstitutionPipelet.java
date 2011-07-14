package it.polimi.mdir.uml;

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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;
import org.w3c.dom.DOMImplementation;


import com.sun.org.apache.xerces.internal.dom.DOMImplementationImpl;


/**
 * This pipelet gets the various SMILA fields content and sends it to solr for analysis.
 * Then gets the analysis response and puts it in the record, keeping the original in the format:
 * 'original'$'analyzed', without quotes.
 *
 */
public class AnalyzerPayloadSubstitutionPipelet implements Pipelet {

	private static final String CORE_NAME = "coreName";
	private static final String ANALYSIS_FIELD = "analysisField"; //The Solr field which will do the analysis 
	
	private AnyMap _configuration;
	private String _coreName = "";
	private String _analysisField = "";
	
	private Log _log = LogFactory.getLog();
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		_coreName = _configuration.getStringValue(CORE_NAME);
		_analysisField = _configuration.getStringValue(ANALYSIS_FIELD);
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Analyzing: " + ++count);
		System.out.println("Analyzer -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String classId = "";
			try {
				classId = blackboard.getRecord(id).getMetadata().getStringValue("classId");
				System.out.println("Analyzer -> classId: " + classId);
				
				//TODO farli tutti in un botto?
				//Create fields
				ArrayList<String> _smilaFields = new ArrayList<String>();
				_smilaFields.add("attributeNames");
				_smilaFields.add("className");
				_smilaFields.add("projectName");
				final AnyMap metadata = blackboard.getRecord(id).getMetadata();
				String[] recordFields = new String[metadata.keySet().size()]; 
				metadata.keySet().toArray(recordFields);
				for (int j = 0; j < recordFields.length; j++) {
					String attrName = recordFields[j];
					if (_smilaFields.contains(attrName)) {
						//Save original value in another field;
						String attributeContent = metadata.getValue(attrName).asString();
						String result = "";
						result = callSolrAnalyzer(id, attributeContent, _analysisField);	
						metadata.put(attrName+"_analyzed", result.trim());
					}
				}
				
			} catch (Exception e) {
				_log.write("Error in uml.AnalyzerPayloadSubstitutionPipelet: \n" + e.toString());
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}
	
private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();
	
/**
 * Keeps tracks of the payload by using the start-end information.
 * @param id
 * @param toAnalyze
 * @param fieldType
 * @return
 */
	private String callSolrAnalyzer(String id, String toAnalyze, String fieldType) {
		String result = "";
		
		String analysisURL = "http://localhost:8983/solr/"+ _coreName +"/analysis/document";
		analysisURL += "?wt=xml&indent=true";
		
		URL url = null;
	    HttpURLConnection conn = null;
	    String outputXMLMessage;
	    
	    try {
			url = new URL(analysisURL);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
		    conn.setRequestProperty("Content-Type", "text/xml; charset=utf-8");
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
			final org.w3c.dom.Document document = impl.createDocument(null, "solr", null);
			org.w3c.dom.Element root = document.createElement("root");
	      
			org.w3c.dom.Element idField;
			org.w3c.dom.Text idText;
			org.w3c.dom.Element toAnalyzeField;
			org.w3c.dom.Text toAnalyzeText;
			
			final org.w3c.dom.Element doc = document.createElement("doc");
			root.appendChild(doc);

			//Create fields
			idField = document.createElement("field");
			idField.setAttribute("name", "classId");
			idText = document.createTextNode(id);
			idField.appendChild(idText);
			doc.appendChild(idField);
			toAnalyzeField = document.createElement("field");
			toAnalyzeField.setAttribute("name", fieldType);
			toAnalyzeText = document.createTextNode(replaceNonXMLChars(toAnalyze));
			toAnalyzeField.appendChild(toAnalyzeText);
			doc.appendChild(toAnalyzeField);

			final Transformer transformer = TRANSFORMER_FACTORY.newTransformer();
			final DOMSource source = new DOMSource(root);
			final Writer w = new StringWriter();
			final StreamResult streamResult = new StreamResult(w);
			transformer.transform(source, streamResult);
			outputXMLMessage = streamResult.getWriter().toString();
			conn.setRequestProperty("Content-Length", Integer.toString(outputXMLMessage.length()));
			final DataOutputStream os = new DataOutputStream(conn.getOutputStream());
			os.write(outputXMLMessage.getBytes("utf-8"));
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
	      	
			//fetch the response
	      	//Get the start-end position in the first analyzer
	      	//parse the output of the last analyzer and put the payloads back.
	      	HashMap<String, String> payloadMap = new HashMap<String, String>();
			SAXBuilder builder = new SAXBuilder();
			InputStream is = new ByteArrayInputStream(response.toString().getBytes("UTF-8"));
			Document responseDoc = builder.build(is);
			Element analysisNode = (Element) responseDoc.getRootElement().getChildren().get(1);
			List<Element> analysisNodeChildren = analysisNode.getChildren();
			Element documentNode = (Element) analysisNodeChildren.get(0);
			Iterator<Element> documentNodeChildrenItr = documentNode.getChildren().iterator();
			while (documentNodeChildrenItr.hasNext()) {
				Element analyzedField = documentNodeChildrenItr.next();
				if (analyzedField.getAttributeValue("name").equals(_analysisField)) {
					Element analysisTypeNode = (Element) analyzedField.getChildren().get(0); 
					Element contentNode = (Element) analysisTypeNode.getChildren().get(0);
					Iterator<Element> analysis = contentNode.getChildren().iterator();
					boolean firstAnalysis = true;
					while (analysis.hasNext()) {
						Element currentAnalysis = analysis.next();
						if (firstAnalysis) {
							//save start-end info of the first analyzer, also get the various tokens payloads
							//first analysis 
							Iterator<Element> tokensItr = currentAnalysis.getChildren().iterator();
							while (tokensItr.hasNext()) {
								Element token = tokensItr.next();
								Element text = (Element) token.getChildren().get(0);
								String payload = "";
								if (text.getText().contains("|")) {
									payload = text.getText().split("\\|")[1];	
								} else {
									payload = "1.0";
								}
								text = (Element) token.getChildren().get(2);
								String start = text.getText();
								text = (Element) token.getChildren().get(3);
								String end = text.getText();
								payloadMap.put(start, payload); //for now try to use just "start"
							}
							firstAnalysis = false;
						} else {
							//go to the last analyzer and take the final tokens
							if (!analysis.hasNext()) {
								//lastAnalysis
								Iterator<Element> tokensItr = currentAnalysis.getChildren().iterator();
								while (tokensItr.hasNext()) {
									Element token = tokensItr.next();
									Element text = (Element) token.getChildren().get(0);
									Element start = (Element) token.getChildren().get(2);
									String payload = payloadMap.get(start.getText());
									if (payload == null) {
										_log.write("payload null at: "+id+" toAnalyze: "+toAnalyze +" start: "+start.getText()+ " text: "+text.getText());
										payload = "1.0"; //If a payload doesn't exist for any reason, I set it to 1.0
									}
									result += text.getText() + "|"+payload +" ";	
								}
							}
						}
					}
				}
			}
			
		}
		catch (Exception e) {
			_log.write("Error during AnalyzerSubstitutionPipelet: " + e.toString() + ":\n" +id);
			e.printStackTrace();
		} 
		finally {
			if (conn != null) {
				conn.disconnect();
			}
		}
		
		//System.out.println(result);
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
