package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

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


/**
 * This pipelet performs the dereferentiation of the ids contained in 
 * the "entity" and "displayAttributes" attributes of the OperationUnits and 
 * ContentUnits, (as well as the "to" attribute in the Links ???).
 *   
 * //TODO "to" attribute of Links vacant for now, because there are some links to the layout?
 */
public class DereferencePipelet implements Pipelet {

	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	private final static String PACKAGED_ELEMENT = "packagedElement";
	
	private static int count = 0;
	
	private final Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Dereferencing: " + ++count);
		System.out.println("Dereference -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String projectId = "";
			try {
				projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				System.out.println("Dereference -> projectId: " + projectId);
				
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				
				//Get all the Entities and the Attributes and put them in the HashMap
				HashMap<String, String> entitiesMap = new HashMap<String, String>();
				Element root = doc.getRootElement();
				List<Element> rootChildren = root.getChildren();
				Element dataModelElement = rootChildren.get(0); 
				Iterator<Element> packagedElements = dataModelElement.getDescendants(new ElementFilter(PACKAGED_ELEMENT));
				while (packagedElements.hasNext()) {
					Element element = packagedElements.next();
					if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Entity") ||
							element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Attribute")) {
						entitiesMap.put(element.getAttributeValue("id", XMI_NAMESPACE), element.getAttributeValue("name"));
					}
				}
				System.out.println("Dereference -> entitiesMap.size(): " + entitiesMap.size());
				
				Element webModelElement = rootChildren.get(1);
				
				/*
				//get all the other Elements and put them in the other map (Because they can be pointed to by Links)
				HashMap<String, String> linksMap = new HashMap<String, String>();
				Iterator<Element> webModelElements = webModelElement.getDescendants(new ElementFilter(PACKAGED_ELEMENT));
				while (webModelElements.hasNext()) {
					Element element = webModelElements.next();
					linksMap.put(element.getAttributeValue("id", XMI_NAMESPACE), element.getAttributeValue("name"));
				}
				*/
				
				//Navigate the dom and substitute the references with the names in the map
				Iterator<Element> webModelElements2 = webModelElement.getDescendants(new ElementFilter(PACKAGED_ELEMENT));
				while (webModelElements2.hasNext()) {
					Element element = webModelElements2.next();

					if (element.getAttributeValue("displayAttributes") != null &&
							element.getAttributeValue("entity") != null) {

						//Substitute entities
						element.setAttribute("entity", entitiesMap.get(element.getAttributeValue("entity")));

						//Substitute display attributes
						String displayAttributes = element.getAttributeValue("displayAttributes") ;
						String[] displayAttr = displayAttributes.split("\\s");
						displayAttributes = "";
						for (int i = 0; i < displayAttr.length; i++) {
							displayAttr[i] = entitiesMap.get(displayAttr[i]);
							displayAttributes += displayAttr[i] + " ";
						}
						element.setAttribute("displayAttributes", displayAttributes.trim());		
					} 
					
					/*
					else {
					
						//substitute "to" in Links
						if (element.getAttributeValue("type",XMI_NAMESPACE).contains("Link")) {
							System.out.println(element.getAttributeValue("to"));
							element.setAttribute("to", linksMap.get(element.getAttributeValue("to")));
						}
					}
					*/
				}
				
				XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
			    String newXmiContent = outputter.outputString(doc);
			    //System.out.println("areaContent: \n" + newXmiContent);
				
				blackboard.getRecord(id).setAttachment("xmiContent", newXmiContent.getBytes());
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
		return recordIds;
	}

}
