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

	private HashMap<String, String> map = new HashMap<String, String>();
	private HashMap<String, String> map2 = new HashMap<String, String>();
	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	
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
				projectId = blackboard.getMetadata(id).getStringValue(projectId);
				System.out.println("Dereference -> projectId: " + projectId);
				
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				
				//Get all the Entities and the Attributes and put them in the HashMap
				Element root = doc.getRootElement();
				List<Element> rootChildren = root.getChildren();
				Element dataModelElement = rootChildren.get(0); 
				Iterator<Element> packagedElements = dataModelElement.getDescendants(new ElementFilter("packagedElement"));
				while (packagedElements.hasNext()) {
					Element element = packagedElements.next();
					if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Entity") ||
							element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Attribute")) {
						map.put(element.getAttributeValue("id", XMI_NAMESPACE), element.getAttributeValue("name"));
					}
				}
				
				//get all the other stuff and put them in the other map
				Element webModelElement = rootChildren.get(1);
				
				/*
				Iterator<Element> webModelElements = webModelElement.getDescendants(new ElementFilter("packagedElement"));
				while (webModelElements.hasNext()) {
					Element element = webModelElements.next();
					map2.put(element.getAttributeValue("id", XMI_NAMESPACE), element.getAttributeValue("name"));
				}
				*/
				
				//Navigate the dom and substitute the references with the names in the map
				Iterator<Element> webModelElements2 = webModelElement.getDescendants(new ElementFilter("packagedElement"));
				while (webModelElements2.hasNext()) {
					Element element = webModelElements2.next();

					if (element.getAttributeValue("displayAttributes") != null &&
							element.getAttributeValue("entity") != null) {

						//Substitute display attributes and entities
						element.setAttribute("entity", map.get(element.getAttributeValue("entity")));
						
						String displayAttributes = element.getAttributeValue("displayAttributes") ;
						String[] displayAttr = displayAttributes.split("\\s");
						displayAttributes = "";
						for (int i = 0; i < displayAttr.length; i++) {
							displayAttr[i] = map.get(displayAttr[i]);
							displayAttributes += displayAttr[i] + " ";
						}
						element.setAttribute("displayAttributes", displayAttributes.trim());		
					} 
					
					/*
					else {
					
						//substitute "to" in Links
						if (element.getAttributeValue("type",XMI_NAMESPACE).contains("Link")) {
							System.out.println(element.getAttributeValue("to"));
							element.setAttribute("to", map2.get(element.getAttributeValue("to")));
						}
					}
					*/
				}
				
				XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
			    String newXmiContent = outputter.outputString(doc);
			    System.out.println("areaContent: \n" + newXmiContent);
				
				blackboard.getRecord(id).setAttachment("xmiContent", newXmiContent.getBytes());
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
		return recordIds;
	}

}
