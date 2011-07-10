package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
import org.jdom.Attribute;
import org.jdom.Namespace;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
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
				//final String xmiContent = convertStreamToString(blackboard.getAttachmentAsStream(id, "xmiContent"));
				//final String xmiContent = blackboard.getRecord(id).getMetadata().getStringValue("xmiContent");
				//System.out.println(xmiContent.substring(0,100));
				Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
				Namespace WEBML_NAMESPACE = Namespace.getNamespace("webml", "http://www.webml.org");
				SAXBuilder builder = new SAXBuilder();
				org.jdom.Document doc = builder.build(blackboard.getAttachmentAsStream(id, "xmiContent"));
				Iterator<org.jdom.Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					org.jdom.Element areaElement = packedElements.next();
					if (areaElement.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
						String areaId = areaElement.getAttributeValue("id", XMI_NAMESPACE); //get Area id
						Record rec = blackboard.create(projectId + "#" + areaId);
						newRecordsIds.add(areaId);
						
						String areaContent = "";
						//Save parents' nodes in a stack plus the area node itself
						Stack<Header> parents = new Stack<Header>();
						parents.push(new Header(areaElement.getAttributeValue("id",XMI_NAMESPACE), areaElement.getAttributeValue("name"), areaElement.getAttributeValue("type", XMI_NAMESPACE)));
						org.jdom.Element parent = areaElement.getParentElement(); 
						while (parent != null) {
							parents.push(new Header(parent.getAttributeValue("id",XMI_NAMESPACE), parent.getAttributeValue("name"), parent.getAttributeValue("type",XMI_NAMESPACE)));
							parent = parent.getParentElement();
						}
						
						
						//Save all the internal nodes (OperationUnits and Pages) as they are,
						//but strips subAreas of their content 
						ArrayList<org.jdom.Element> internalNodes = new ArrayList<org.jdom.Element>();
						List<org.jdom.Element> childs = areaElement.getChildren();
						Iterator<org.jdom.Element> it = childs.iterator();
						while (it.hasNext()) {
							org.jdom.Element elChild = it.next();
							if (elChild.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
								//It's an Area
								org.jdom.Element toAdd = new org.jdom.Element("packagedElement");
									toAdd.setAttribute("id", elChild.getAttributeValue("id",XMI_NAMESPACE), XMI_NAMESPACE);
									toAdd.setAttribute("name", elChild.getAttributeValue("name"));
									toAdd.setAttribute("type", elChild.getAttributeValue("type",XMI_NAMESPACE), XMI_NAMESPACE); 
								internalNodes.add(toAdd);
							} else {
								//it's an OperationUnit or a Page
								internalNodes.add((org.jdom.Element) elChild.clone());
							}
						
						}
						
						//Put everything in the areaContent, then reverse in xmiContent field
						org.jdom.Element root = new org.jdom.Element("Project", WEBML_NAMESPACE);
							Header r = parents.pop();
							//root.setAttribute("xmlns:xmi", "http://schema.omg.org/spec/XMI/2.1");
							//root.setAttribute("xmlns:webml", "http://www.webml.org");
							root.setNamespace(XMI_NAMESPACE);
							root.setNamespace(WEBML_NAMESPACE);
							root.setAttribute("version", "2.1", XMI_NAMESPACE);
							root.setAttribute("id", r.getId(), XMI_NAMESPACE);
							root.setAttribute("name", r.getName());
						
						//Put the parents
						org.jdom.Element justAdded = root;
						while (parents.size() > 0) {
							org.jdom.Element toAdd = new org.jdom.Element("packagedElement");
								Header ta = parents.pop();
								toAdd.setAttribute("id", ta.getId(),XMI_NAMESPACE);
								toAdd.setAttribute("name", ta.getName());
								toAdd.setAttribute("type", ta.getType(),XMI_NAMESPACE);
							justAdded.addContent(toAdd);
							justAdded = toAdd;
						}
						//At the end justAdded is the original Area
						
						//Put the other internalNodes (OperationUnits, Pages and Stripped Areas)
						Iterator<org.jdom.Element> itr = internalNodes.iterator();
						while (itr.hasNext()) {
							justAdded.addContent(itr.next());
						}
						
						TransformerFactory transformerFactory = TransformerFactory.newInstance();
						transformerFactory.setAttribute("indent-number", 4);
						Transformer transformer = transformerFactory.newTransformer();
						transformer.setOutputProperty(OutputKeys.INDENT, "yes");
						
						
						XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
					    areaContent = outputter.outputString(new org.jdom.Document(root));
					    System.out.println("areaContent: \n" + areaContent);
					    
					    
						//rec.getMetadata().put("xmiContent", areaContent);
						rec.setAttachment("xmiContent", areaContent.getBytes());
						blackboard.setRecord(rec);
					}
				}
				System.out.println("finished");
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
