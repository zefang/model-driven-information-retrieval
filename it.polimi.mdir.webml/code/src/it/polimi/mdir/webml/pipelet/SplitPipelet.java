package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;


/**
 * 
 * This Pipelet gets the SMILA record containing information on 
 * a whole WebML project and splits them to an Area granularity 
 * generating one record per Area.
 * 
 */
public class SplitPipelet implements Pipelet {

	private static int count = 0; 
	private static final String CONCEPT_TYPE = "Area";
	
	private final Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {

		System.out.println("Start Splitting: " + ++count);
		System.out.println("Split -> recordids.length: " + recordIds.length);
		//This array will contain new id to pass through the framework
		final ArrayList<String> newRecordsIds = new ArrayList<String>();
		final int nNewRecords;
		for (final String id : recordIds) {
			String projectId = "";
			try {
				projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				System.out.println("Split -> projectId: " + projectId);
				
				//construct content field
				final String xmiContent = convertStreamToString(blackboard.getAttachmentAsStream(id, "xmiContent"));
				//final String xmiContent = blackboard.getRecord(id).getMetadata().getStringValue("xmiContent");
				//System.out.println(xmiContent.substring(0,100));
				Document doc = generateNewDocInstance(xmiContent);
				NodeList packedElements = doc.getElementsByTagName("packagedElement");
				for (int i = 0; i < packedElements.getLength(); i++) {
					if (packedElements.item(i).getNodeType() == Node.ELEMENT_NODE) {
						Element el = (Element) packedElements.item(i); 
						if (el.getAttribute("xmi:type").equals("webml:Area")) {
							String areaId = el.getAttribute("xmi:id"); //get Area id
							Record rec = blackboard.create(projectId + "#" + areaId);
							newRecordsIds.add(areaId);
							
							String areaContent = "";
							DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
							Document outputDocument = impl.createDocument(null, "webml", null);
							//Save parents' nodes in a stack plus the area node itself
							Stack<Header> parents = new Stack<Header>();
							parents.push(new Header(el.getAttribute("xmi:id"), el.getAttribute("name"), el.getAttribute("xmi:type")));
							Node parent = el.getParentNode(); 
							while (parent != null) {
								if (parent.getNodeType() == Node.ELEMENT_NODE) {
									Element parentElement = (Element) parent;
									parents.push(new Header(parentElement.getAttribute("xmi:id"), parentElement.getAttribute("name"), parentElement.getAttribute("xmi:type")));
								}
								parent = parent.getParentNode();
							}
							
							
							//Save all the internal nodes (OperationUnits and Pages) as they are,
							//but strips subAreas of their content 
							ArrayList<Node> internalNodes = new ArrayList<Node>();
							NodeList childs = el.getChildNodes();
							for (int j = 0; i < childs.getLength(); j++) {
								if (childs.item(j).getNodeType() == Node.ELEMENT_NODE) {
									Element elChild = (Element) childs.item(j);
									if (elChild.getAttribute("xmi:type").equals("webml:Area")) {
										//It's an Area
										Element toAdd = outputDocument.createElement("packagedElement");
											toAdd.setAttribute("xmi:id", elChild.getAttribute("xmi:id"));
											toAdd.setAttribute("name", elChild.getAttribute("name"));
											toAdd.setAttribute("xmi:type", elChild.getAttribute("xmi:type")); 
										internalNodes.add(toAdd);
									} else {
										//it's an OperationUnit or a Page
										internalNodes.add(childs.item(j));
									}
								}
							}
							
							//Put everything in the areaContent, then reverse in xmiContent field
							Element root = outputDocument.createElement("webml:Project");
								Header r = parents.pop();
								root.setAttribute("xmlns:xmi", "http://schema.omg.org/spec/XMI/2.1");
								root.setAttribute("xmlns:webml", "http://www.webml.org");
								root.setAttribute("xmi:version", "2.1");
								root.setAttribute("xmi:id", r.getId());
								root.setAttribute("name", r.getName());
								root.setAttribute("xmi:type", r.getType());
							
							//Put the parents
							Node justAdded = root;
							while (parents.size() > 0) {
								Element toAdd = outputDocument.createElement("packagedElement");
									Header ta = parents.pop();
									toAdd.setAttribute("xmi:id", ta.getId());
									toAdd.setAttribute("name", ta.getName());
									toAdd.setAttribute("xmi:type", ta.getType());
								justAdded = justAdded.appendChild(toAdd);
							}
							//At the end justAdded is the original Area
							
							//Put the other internalNodes (OperationUnits, Pages and Stripped Areas)
							Iterator<Node> it = internalNodes.iterator();
							while (it.hasNext()) {
								justAdded.appendChild(it.next());
							}
							
							TransformerFactory transformerFactory = TransformerFactory.newInstance();
							transformerFactory.setAttribute("indent-number", 4);
							Transformer transformer = transformerFactory.newTransformer();
							transformer.setOutputProperty(OutputKeys.INDENT, "yes");
							
							StringWriter writer = new StringWriter();
							StreamResult result = new StreamResult(writer);
							DOMSource source = new DOMSource(root);
							transformer.transform(source, result);
							
							StringWriter sw = (StringWriter) result.getWriter();
							StringBuffer sb = sw.getBuffer();
							areaContent = sb.toString(); 
							
							System.out.println(areaContent);
							//rec.getMetadata().put("xmiContent", areaContent);
							rec.setAttachment("xmiContent", areaContent.getBytes());
							blackboard.setRecord(rec);
						}
					}
				}
				
				//blackboard.commit();
				
			} catch (Exception e){
				e.printStackTrace();
			}
		}
		nNewRecords = newRecordsIds.size();
		final String[] newRecordsIdsArray = new String[nNewRecords];
		newRecordsIds.toArray(newRecordsIdsArray);
		return newRecordsIdsArray;
	}
	
	
	public String getText(byte[] arr) {
	    StringBuilder sb = new StringBuilder(arr.length);
	    for (byte b: arr) {
	    	if (b != 32) {
	    		sb.append ((char) b);	
	    	}
	    }
	    return sb.toString ();
	}
	
	public String convertStreamToString(InputStream is) throws IOException {
        if (is != null) {
            StringWriter writer = new StringWriter();

            char[] buffer = new char[1024];
            try {
                BufferedReader reader = new BufferedReader(
                        new InputStreamReader(is, "UTF-8"));
                int n;
                while ((n = reader.read(buffer)) != -1) {
                    writer.write(buffer, 0, n);
                }
            } finally {
                is.close();
            }
            return writer.toString();
        } else {        
            return "";
        }
    }
	
	private Document generateNewDocInstance(String f) {
		Document doc = null;
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			InputSource is = new InputSource();
			is.setCharacterStream(new StringReader(f));
			doc = db.parse(is);
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return doc;
	}
	
	private class Header {
		private String id = "";
		private String name = "";
		private String type = "";
		
		public Header(String id, String name, String type) {
			this.id = id;
			this.name = name;
			this.type = type;
		}
		
		public String toXMLHeader() {
			return "<packagedElement name=\""+this.name+"\" xmi:id=\""+this.id+"\" xmi:type=\""+this.type+"\">";
		}
		
		public String getId() {
			return this.id;
		}
		
		public String getName() {
			return this.name;
		}
		
		public String getType() {
			return this.type;
		}
	}

}
