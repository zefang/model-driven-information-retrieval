package it.polimi.mdir.webml.pipelet;

import java.io.InputStream;
import java.util.Iterator;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.filter.ElementFilter;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;


/**
 * This pipelet will navigate the DOM tree of the records in input (Areas) extracting
 * and substituting the content of the "name", "displayAttributes" and "entities" attributes
 * with their analyzed version.
 * The original content will be kept inside the field following this format:
 * "orginal content"$"analyzed content"
 * without quotes.
 *
 */
public class AnalyzerSubstitutionPipelet implements Pipelet {

	private AnyMap _configuration;
	private String _fieldType = "";
	
	private final Log _log = LogFactory.getLog();
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		_fieldType = _configuration.getStringValue("fieldType");
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Analyzing: " + ++count);
		System.out.println("Analyzer -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String projectId = "";
			try {
				projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				System.out.println("Analyzer -> projectId: " + projectId);
				
				final InputStream xmiContentStream = blackboard.getAttachmentAsStream(id, "xmiContent");
				SAXBuilder builder = new SAXBuilder();
				Document doc = builder.build(xmiContentStream);
				Iterator<Element> packedElements = doc.getDescendants(new ElementFilter("packagedElement"));
				while (packedElements.hasNext()) {
					Element element = packedElements.next();
					element.setAttribute("name", callSolrAnalyzer(element.getAttributeValue("name"), _fieldType));
					element.setAttribute("displayAttributes", callSolrAnalyzer(element.getAttributeValue("displayAttributes"), _fieldType));
					element.setAttribute("entity", callSolrAnalyzer(element.getAttributeValue("entity"), _fieldType));
				}
				
				XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
			    String newXmiContent = outputter.outputString(doc);
			    
			    blackboard.getRecord(id).setAttachment("xmiContent", newXmiContent.getBytes());
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
			
		return recordIds;
	}
	
	private String callSolrAnalyzer(String toAnalyze, String fieldType) {
		//TODO send them to solr
		//TODO fetch the response (parse the output of the last analyzer)
		return null;
	}

}
