package it.polimi.mdir.webml.pipelet;

import java.io.InputStream;
import java.util.Iterator;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;
import it.polimi.mdir.webml.WeightRules;

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
 * This pipelet will add the payloads to the analyzed content to be correctly indexed.
 * Used only in experiment C (for webml).
 *
 */
public class WebmlPayloadAdderPipelet implements Pipelet {

	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	
	private final Log _log = LogFactory.getLog();
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) {

	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Payload Adding: " + ++count);
		System.out.println("PayloadAdder -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			try {
				final String areaId = blackboard.getRecord(id).getMetadata().getStringValue("areaId");
				System.out.println("WebmlPayloadAdder -> areaId: " + areaId);
				
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				final SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					Element element = packedElements.next();
					float payload = 0.0f;
					String typeValue = element.getAttributeValue("type", XMI_NAMESPACE);
					if (typeValue.contains("SiteView")) {
						payload = WeightRules.weightMap.get("siteview");
					} else if (typeValue.contains("Area")) {
						payload = WeightRules.weightMap.get("area");
					} else if (typeValue.contains("Page")) {
						payload = WeightRules.weightMap.get("page");
					} else if (typeValue.contains("Unit")) {
						payload = WeightRules.weightMap.get("unit");
					} else if (typeValue.contains("Link")) {
						payload = WeightRules.weightMap.get("link");
					}
					
					// get analyzed content
					String value = "";
					if (typeValue.contains("Link")) {
						value = element.getAttributeValue("name");
					} else {
						value = element.getAttributeValue("to");
					}
					
					String[] splittedValue = value.split("\\$");
					if (splittedValue.length > 1) {
						String originalValue = splittedValue[0];
						String analyzedValue = splittedValue[1];
						//put the payloads
						String[] content = analyzedValue.split("\\s");
						analyzedValue = "";
						for (int i = 0; i < content.length; i++) {
							analyzedValue += content[i]+"|"+payload + " ";	
						}
						
						if (typeValue.contains("Link")) {
							element.setAttribute("to", originalValue+"$"+analyzedValue.trim());
						} else {
							element.setAttribute("name", originalValue+"$"+analyzedValue.trim());	
						}
					}
				}
				XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
			    String newXmiContent = outputter.outputString(doc);
			    
			    blackboard.getRecord(id).setAttachment("xmiContent", newXmiContent.getBytes());
				
			} catch (Exception e) {
				_log.write("Error in WebmlPayloadAdderPipelet -> areaId: "+ id +"\n" + e.toString());
				e.printStackTrace();
			}
		}
			
		return recordIds;
	}

}
