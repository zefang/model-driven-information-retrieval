package it.polimi.mdir.webml.pipelet.search;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.Iterator;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;

/**
 * This pipelet extracts the keywords to submit as a text query 
 * from the webml projects saved in XMI format
 * 
 * It also appends to a txt file the extracted keywords. 
 *
 */
public class KeywordExtractorPipelet implements Pipelet {

	private final static Namespace XMI_NAMESPACE = Namespace.getNamespace("xmi", "http://schema.omg.org/spec/XMI/2.1");
	private final static Namespace WEBML_NAMESPACE = Namespace.getNamespace("webml", "http://www.webml.org");
	
	private Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		String keywordString = "";
		
		try {
			//final InputStream xmiContentStream = blackboard.getAttachmentAsStream(recordIds[0], "xmiContent");
			final String xmiContentStream = blackboard.getMetadata(recordIds[0]).getStringValue("xmiContent");
			if (xmiContentStream != null) {
				InputStream is = new ByteArrayInputStream(xmiContentStream.getBytes("UTF-8"));
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(is);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					Element nextElement = packedElements.next();
					if (checkEligibility(nextElement)) {
						keywordString += nextElement.getAttributeValue("name") + " ";
					}
				}
				
				blackboard.getRecord(recordIds[0]).getMetadata().put("keywords", keywordString.trim());
				
				System.out.println("keywordString = " + keywordString);
				
				//Append keywords to file
				//Disabled by default
				/*
				File f = new File("C:/keywords.txt");
				FileWriter fw = new FileWriter(f, true);
				PrintWriter pw = new PrintWriter(fw);
				pw.println(keywordString);
				pw.close();
				*/	
			}
			
		} catch (Exception e) {
			_log.write("Error in KeywordExtractorPipelet: " + e.toString());
			e.printStackTrace();
		}
		
		return recordIds;
	}
	
	
	/**
	 * Checks if the elements is eligible to have the name extracted as a keyword.
	 * Discard SiteView and Areas that contain only other areas 
	 * in order to be comparable with the Graph matching algorithm.
	 * In general in the query case it would be better to keep them
	 */
	private boolean checkEligibility(Element element) {
		if (element.getAttributeValue("type", XMI_NAMESPACE) == null) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:DataModel")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Entity")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Attribute")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:WebModel")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:OperationGroup")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Link")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:OKLink")) {
			return false;
		}
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:KOLink")) {
			return false;
		}
		
		if (element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:SiteView") 
			|| element.getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
			//check if they have just subareas (e.g. if their children are only Areas)
			//if there are only Areas as children then it is not eligible
			boolean justAreas = true;
			Iterator<Element> childrenItr = element.getChildren().iterator();  
			while (childrenItr.hasNext()) {
				if (!childrenItr.next().getAttributeValue("type", XMI_NAMESPACE).equals("webml:Area")) {
					justAreas = false;
				}
			}
			return !justAreas;
		}
		
		return true;
	}

}
