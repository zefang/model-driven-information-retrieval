package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;

/**
 * 
 * This Pipelet gets the SMILA record containing information on 
 * a whole WebML project and splits them to an Area granularity 
 * generating one record per Area.
 * Siteviews containing no other Areas, (so containing just Units) are treated as Areas too.
 * 
 */
public class SplitPipelet implements Pipelet {

	private static int count = 0; 
	private static final String CONCEPT_TYPE = "Area";
	
	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	private final static Namespace WEBML_NAMESPACE = Namespace.getNamespace("webml", "http://www.webml.org");
	
	private static final String PACKAGED_ELEMENT = "packagedElement";
	
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
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				//final String xmiContentStream = blackboard.getMetadata(id).getStringValue("xmiContent");
				//InputStream is = new ByteArrayInputStream(xmiContentStream.getBytes("UTF-8"));
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter(PACKAGED_ELEMENT));
				while (packedElements.hasNext()) {
					Element element = packedElements.next();
						
					if (checkEligibility(element)) {
						Element areaElement = element;
						String areaId = areaElement.getAttributeValue("id", XMI_NAMESPACE); //get Area id
						String newIdRec = projectId + "$" + areaId;
						Record rec = blackboard.create(newIdRec);
						rec.getMetadata().put("areaId", newIdRec);
						rec.getMetadata().put("areaName", areaElement.getAttributeValue("name"));
						newRecordsIds.add(newIdRec);
						
						String areaContent = "";
						//Save ancestors' nodes in a stack plus the area node itself
						//parents nodes will be stripped of their content
						Stack<Element> parents = new Stack<Element>();
						parents.push(constructNewElement(PACKAGED_ELEMENT, areaElement.getAttributeValue("id",XMI_NAMESPACE), areaElement.getAttributeValue("name"), areaElement.getAttributeValue("type", XMI_NAMESPACE)));
						Element parent = areaElement.getParentElement(); 
						while (parent != null) {
							parents.push(constructNewElement(PACKAGED_ELEMENT, parent.getAttributeValue("id",XMI_NAMESPACE), parent.getAttributeValue("name"), parent.getAttributeValue("type",XMI_NAMESPACE)));
							parent = parent.getParentElement();
						}
						
						//Save all the internal nodes (OperationUnits and Pages) as they are,
						//but strip subAreas of their content 
						ArrayList<Element> internalNodes = new ArrayList<Element>();
						List<Element> childs = areaElement.getChildren();
						Iterator<Element> childsIterator = childs.iterator();
						while (childsIterator.hasNext()) {
							Element nextChild = childsIterator.next();
							if (nextChild.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
								//It's an Area
								Element toAdd = constructNewElement(PACKAGED_ELEMENT, nextChild.getAttributeValue("id",XMI_NAMESPACE), 
															nextChild.getAttributeValue("name"), 
															nextChild.getAttributeValue("type",XMI_NAMESPACE));
								internalNodes.add(toAdd);
							} else {
								//it's an OperationUnit or a Page
								//clones the Element to detach it from the original Document
								internalNodes.add((Element) nextChild.clone());
							}
						
						}
						
						//Put everything in the areaContent, then reverse in xmiContent field
						Element root = new Element("Project", WEBML_NAMESPACE);
						Element rootTemp = parents.pop();
							root.setNamespace(XMI_NAMESPACE);
							root.setNamespace(WEBML_NAMESPACE);
							root.setAttribute("version", "2.1", XMI_NAMESPACE);
							root.setAttribute("id", rootTemp.getAttributeValue("id", XMI_NAMESPACE), XMI_NAMESPACE);
							root.setAttribute("name", rootTemp.getAttributeValue("name"));
						
						//Put the parents
						Element justAdded = root;
						while (parents.size() > 0) {
							Element toAdd = parents.pop();
							justAdded.addContent(toAdd);
							justAdded = toAdd;
						}
						//At the end justAdded is the original Area
						
						//Put the other internalNodes (OperationUnits, Pages and Stripped Areas)
						Iterator<Element> itr = internalNodes.iterator();
						while (itr.hasNext()) {
							justAdded.addContent(itr.next());
						}
						
						XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
					    areaContent = outputter.outputString(new Document(root));
					    //System.out.println("areaContent: \n" + areaContent);
					    
					    //Put areaContent in the xmiContent attachment field
					    //rec.getMetadata().put("xmiContent", areaContent);
						rec.setAttachment("xmiContent", areaContent.getBytes());
						blackboard.setRecord(rec);
					}
					
				}
				blackboard.commit();
				
			} catch (Exception e){
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
		nNewRecords = newRecordsIds.size();
		System.out.println("Split -> Total new records: "+nNewRecords);
		final String[] newRecordsIdsArray = new String[nNewRecords];
		newRecordsIds.toArray(newRecordsIdsArray);
		return newRecordsIdsArray;
	}
	
	
	private String getText(byte[] arr) {
	    StringBuilder sb = new StringBuilder(arr.length);
	    for (byte b: arr) {
	    	if (b != 32) {
	    		sb.append ((char) b);	
	    	}
	    }
	    return sb.toString ();
	}
	
	private String convertStreamToString(InputStream is) throws IOException {
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
	
	private Element constructNewElement(String elementName, String id, String name, String type) {
		Element newEl = new Element(elementName);
			newEl.setAttribute("id", id, XMI_NAMESPACE);
			newEl.setAttribute("name", name);
			if (type != null) {
				newEl.setAttribute("type", type, XMI_NAMESPACE);	
			}
		return newEl;
	}
	
	/**
	 * Checks if this element is eligible to become a new record, according to the Area granularity.
	 * Normal Areas are eligible (Areas containing something besides possibly other Areas).
	 * Areas containing only other subAreas are NOT eligible.
	 * Siteviews that contain something besides Areas are also eligible, they will be treated as fake Areas.
	 * SiteViews containing only Areas are NOT eligible.  
	 * All other elements are not eligible.
	 * Note that basically we treat Areas and SiteViews as the same thing.
	 * @param element
	 * The element to check
	 */
	private boolean checkEligibility(Element element) {
		//check Areas
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area"))  {
			//check if they have just subareas (e.g. if their children are only Areas)
			Iterator<Element> childrenItr = element.getChildren().iterator();
			boolean justAreas = true;
			while (childrenItr.hasNext()) {
				if (!childrenItr.next().getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
					justAreas = false;
				}
			}
			return !justAreas;
		}
		
		//check Siteviews
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:SiteView")) {
			//check if they have just subareas (e.g. if their children are only Areas)
			Iterator<Element> childrenItr = element.getChildren().iterator(); //if there is an Area then it must at least be a children of the SiteView 
			boolean justAreas = true;
			while (childrenItr.hasNext()) {
				if (!childrenItr.next().getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
					justAreas = false;
				}
			}
			return !justAreas;
		}
		
		return false;
	}

}
