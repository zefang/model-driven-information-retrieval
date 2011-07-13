package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.BufferedReader;
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

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

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
import org.w3c.dom.DOMImplementation;

/**
 * This pipelet gets all the indexable content in the xmiContent of the Area record
 * and sends it to Solr for indexing.
 * As of now only the "name" attribute of Areas, SiteViews, Pages and Units is used.
 * "name" and "to" attributes of Links is discarded too.
 * "entity" and "displayAttributes" attributes are discarded too.
 */
public class IndexerPipelet implements Pipelet {
	
  private AnyMap _configuration;
  private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
  
  private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();
  
  private String _coreName = "";
  private String _fieldType = "";
  
  private static Log _log = LogFactory.getLog();
  private static int count = 0;
  
  public enum ExecutionMode {
    ADD, DELETE
  };
  
  
  public static final String UTF8 = "utf-8";

  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
	  _configuration = configuration;
	  _coreName = _configuration.getStringValue("coreName");
	  _fieldType = _configuration.getStringValue("fieldType");  
  }
  
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
	
	  System.out.println("Start Indexing: " + ++count);
	  System.out.println("Indexer -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String areaId = "";
			try {
				areaId = blackboard.getRecord(id).getMetadata().getStringValue("areaId");
				System.out.println("Indexer -> areaId: " + areaId);
				
				//Gather all the indexable content
				String toIndex = "";
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					Element element = packedElements.next();
					if (!element.getAttributeValue("type", XMI_NAMESPACE).contains("Link") //discard all Links 
						&&	!element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:WebModel") //Discard meaningless WebModel node
						&&	!element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:OperationGroup")) { //Discard all OperationGroup (and Transactions)
						
						// strip the content to index from the original, e.g
						// discard all the content before the '$'
						String value = element.getAttributeValue("name");
						String[] splittedValue = value.split("\\$");
						if (splittedValue.length > 1) {
							toIndex += splittedValue[1] + " ";
						} else {
							toIndex += value + " "; //TODO maybe we couldn't do this? in this case value would be "" right?
						}
						
						//discard "entity" and "displayAttributes" attributes
						/*
						if (element.getAttribute("displayAttributes") != null) {
							toIndex += element.getAttributeValue("displayAttributes").split("\\$")[1] + " ";
							toIndex += element.getAttributeValue("entity").split("\\$")[1] + " ";
						}
						*/
					}
				}
				toIndex = toIndex.trim();
				
				//send Area to solr
				String areaName = blackboard.getRecord(id).getMetadata().getStringValue("areaName");
				sendToIndex(areaId, areaName, toIndex);
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
		
		System.out.println("Indexer -> Correctly indexed: " + recordIds.length);
		return recordIds;
  }


  private void sendToIndex(String id, String name, String content) {
	  	String updateURL = "http://localhost:8983/solr/"+ _coreName +"/update";
	  	updateURL += "?wt=xml&indent=true";
		
		URL url = null;
	    HttpURLConnection conn = null;
	    String outputXMLMessage;
	    
	    try {
			url = new URL(updateURL);
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
			org.w3c.dom.Element add = document.createElement("add");
			add.setAttribute("commitWithin", String.valueOf(10000));
			
			org.w3c.dom.Element idField;
			org.w3c.dom.Text idText;
			org.w3c.dom.Element areaNameField;
			org.w3c.dom.Text areaNameText;
			org.w3c.dom.Element toIndexField;
			org.w3c.dom.Text toIndexText;
			
			final org.w3c.dom.Element doc = document.createElement("doc");
			add.appendChild(doc);

			//Create fields
			//areaId field
			idField = document.createElement("field");
			idField.setAttribute("name", "areaId");
			idText = document.createTextNode(id);
			idField.appendChild(idText);
			doc.appendChild(idField);
			//areaName field
			areaNameField = document.createElement("field");
			areaNameField.setAttribute("name", "areaName");
			areaNameText = document.createTextNode(name);
			areaNameField.appendChild(areaNameText);
			doc.appendChild(areaNameField);
			//content field
			toIndexField = document.createElement("field");
			toIndexField.setAttribute("name", _fieldType);
			toIndexText = document.createTextNode(replaceNonXMLChars(content));
			toIndexField.appendChild(toIndexText);
			doc.appendChild(toIndexField);

			final Transformer transformer = TRANSFORMER_FACTORY.newTransformer();
			final DOMSource source = new DOMSource(add);
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
		}
		catch (Exception e) {
			_log.write("Error during IndexerPipelet: " + e.toString() + ":\n" +id);
			e.printStackTrace();
		} 
		finally {
			if (conn != null) {
				conn.disconnect();
			}
		}
	     
  }
  
  /**
   * This method replaces valid UTF-8 characters which are not allowed in XML with spaces.
   * 
   * @param source
   *          - the original source string
   * @return The filtered string
   */
  public static String replaceNonXMLChars(final String source) {
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
