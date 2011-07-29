package it.polimi.mdir.webml.pipelet;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Properties;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

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
	
	private float SITEVIEW_WEIGHT;
	private float AREA_WEIGHT;
	private float PAGE_WEIGHT;
	private float UNIT_WEIGHT;
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) {
		try {
			Properties config = new Properties();
			config.load(this.getClass().getClassLoader().getResourceAsStream("configuration.properties"));
			
			SITEVIEW_WEIGHT = Float.valueOf(config.getProperty("siteview"));
			AREA_WEIGHT = Float.valueOf(config.getProperty("area"));
			PAGE_WEIGHT = Float.valueOf(config.getProperty("page"));
			UNIT_WEIGHT = Float.valueOf(config.getProperty("unit"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
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
					if (element.getAttributeValue("type",XMI_NAMESPACE).contains("SiteView")) {
						payload = SITEVIEW_WEIGHT;
					} else if (element.getAttributeValue("type",XMI_NAMESPACE).contains("Area")) {
						payload = AREA_WEIGHT;
					} else if (element.getAttributeValue("type",XMI_NAMESPACE).contains("Page")) {
						payload = PAGE_WEIGHT;
					} else if (element.getAttributeValue("type",XMI_NAMESPACE).contains("Unit")) {
						payload = UNIT_WEIGHT;
					}
					// get analyzed content
					String nameValue = element.getAttributeValue("name");
					
					String[] splittedValue = nameValue.split("\\$");
					if (splittedValue.length > 1) {
						String originalValue = splittedValue[0];
						String analyzedValue = splittedValue[1];
						//put the payloads
						String[] content = analyzedValue.split("\\s");
						analyzedValue = "";
						for (int i = 0; i < content.length; i++) {
							analyzedValue += content[i]+"|"+payload + " ";	
						}
						element.setAttribute("name", originalValue+"$"+analyzedValue.trim());	
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
