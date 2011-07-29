package it.polimi.mdir.webml.pipelet;

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
import java.util.Iterator;
import java.util.List;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.w3c.dom.DOMImplementation;


/**
 * This pipelet will navigate the DOM tree of the records in input (Areas) extracting
 * and substituting the content of the "name", "displayAttributes" and "entities" attributes
 * with their analyzed version.
 * The original content will be kept inside the field following this format:
 * "orginal content"$"analyzed content"
 * without quotes.
 */
public class AnalyzerSubstitutionPipelet implements Pipelet {

	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	
	private AnyMap _configuration;
	private String _coreName = "";
	private String _fieldType = "";
	
	private final Log _log = LogFactory.getLog();
	
	private static int count = 0;
	private static int numAnalyzed = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		_coreName = _configuration.getStringValue("coreName");
		_fieldType = _configuration.getStringValue("fieldType");   
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Analyzing: " + ++count);
		System.out.println("Analyzer -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String areaId = "";
			try {
				areaId = blackboard.getRecord(id).getMetadata().getStringValue("areaId");
				System.out.println("Analyzer -> areaId: " + areaId);
				
				/*
				 * Output the CSV file containing all the considered areas
				 * 
				String projectId = areaId.split("\\$")[0];
				String areaName = blackboard.getRecord(id).getMetadata().getStringValue("areaName");
				File f = new File("C:/"+projectId+".csv");
				FileWriter outFile = new FileWriter(f, true);
				PrintWriter out = new PrintWriter(outFile);
				out.println(projectId+";"+areaId.split("\\$")[1]+";"+areaName);
				out.close();
				*/
				
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					Element element = packedElements.next();
					
					//keep the original content in the form 'original'$'analyzed'
					String originalValue = element.getAttributeValue("name");
					element.setAttribute("name", originalValue+"$"+callSolrAnalyzer(element.getAttributeValue("id", XMI_NAMESPACE), originalValue, _fieldType));	
					numAnalyzed += 1;
					
					//checks if there are "displayAttributes" and "entity" to analyze
					if (element.getAttribute("displayAttributes") != null) {
						originalValue = element.getAttributeValue("displayAttributes");
						element.setAttribute("displayAttributes", originalValue+"$"+callSolrAnalyzer(element.getAttributeValue("id", XMI_NAMESPACE), originalValue, _fieldType));
						originalValue = element.getAttributeValue("entity");
						element.setAttribute("entity", originalValue+"$"+callSolrAnalyzer(element.getAttributeValue("id", XMI_NAMESPACE), originalValue, _fieldType));
						numAnalyzed += 2;
					}
				}
				XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
			    String newXmiContent = outputter.outputString(doc);
			    
			    blackboard.getRecord(id).setAttachment("xmiContent", newXmiContent.getBytes());
				
			} catch (Exception e) {
				_log.write("Error in AnalyzerSubstitutionPipelet -> areaId: "+ id +"\n" + e.toString());
				e.printStackTrace();
			}
		}
		
		System.out.println("Analyzer -> Total number analyzed: " + numAnalyzed);
		return recordIds;
	}
	
	
	private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();
	
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
			idField.setAttribute("name", "areaId");
			idText = document.createTextNode(id);
			idField.appendChild(idText);
			doc.appendChild(idField);
			toAnalyzeField = document.createElement("field");
			toAnalyzeField.setAttribute("name", _fieldType);
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
	      	
			//fetch the response (parse the output of the last analyzer)
			SAXBuilder builder = new SAXBuilder();
			InputStream is = new ByteArrayInputStream(response.toString().getBytes("UTF-8"));
			Document responseDoc = builder.build(is);
			Element analysisNode = (Element) responseDoc.getRootElement().getChildren().get(1);
			List<Element> analysisNodeChildren = analysisNode.getChildren();
			Element documentNode = (Element) analysisNodeChildren.get(0);
			Iterator<Element> documentNodeChildrenItr = documentNode.getChildren().iterator();
			while (documentNodeChildrenItr.hasNext()) {
				Element analyzedField = documentNodeChildrenItr.next();
				if (analyzedField.getAttributeValue("name").equals(_fieldType)) {
					Element analysisTypeNode = (Element) analyzedField.getChildren().get(0); 
					Element contentNode = (Element) analysisTypeNode.getChildren().get(0);
					Iterator<Element> analysis = contentNode.getChildren().iterator();
					while (analysis.hasNext()) {
						Element lastAnalysis = analysis.next();
						if (!analysis.hasNext()) {
							Iterator<Element> tokensItr = lastAnalysis.getChildren().iterator();
							while (tokensItr.hasNext()) {
								Element token = tokensItr.next();
								Element text = (Element) token.getChildren().get(0); 
								result += text.getText() +" ";
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
