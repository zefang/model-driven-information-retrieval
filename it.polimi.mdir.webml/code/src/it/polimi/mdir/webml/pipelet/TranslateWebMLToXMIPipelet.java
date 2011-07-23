package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;
import it.polimi.mdir.webml.TranslateWebMLToXMI;

import java.io.File;
import java.util.List;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.search.api.helper.QueryParameterAccessor;
import org.jdom.input.DOMBuilder;
import org.jdom.output.DOMOutputter;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * This is the Pipelet version of it.polimi.mdir.webml.TranslateWebMLToXMI.java
 * It processes a request containing the name of the Query in WebML format.
 * Differently from its standalone counterpart it translate only one query/project at a time.
 * In the configuration file it is possible to specify the folder where the queries are kept
 */
public class TranslateWebMLToXMIPipelet implements Pipelet {

	private final String QUERY_PATH = "queryPath";
	
	private String _queryPath = "";
	
	private AnyMap _configuration;
	
	private Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		if (_configuration.containsKey(QUERY_PATH)) {
			_queryPath = _configuration.getStringValue(QUERY_PATH);
		}
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		final QueryParameterAccessor parameters = new QueryParameterAccessor(blackboard, recordIds[0]);
	      final String query = parameters.getQuery();
	      final int resultSize = parameters.getMaxCount();
	      final int resultOffset = parameters.getOffset();
	      final List<String> resultAttributes = parameters.getResultAttributes();

		File webmlQueryProject = new File(_queryPath, query); //TODO prendere nome query dal record
		
		//webmlQueryProject MUST be a directory
		if (!webmlQueryProject.isDirectory()) {
			_log.write("Error in TranslateWebMLToXMIPipelet: "+
						webmlQueryProject.getAbsolutePath() + " is not a directory");
		} else {
			DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
			Document outputDocument = impl.createDocument(null, "webml", null);
			Element webmlProject = outputDocument.createElement("webml:Project");
			
			webmlProject.setAttribute("xmlns:xmi", "http://schema.omg.org/spec/XMI/2.1");
			webmlProject.setAttribute("xmlns:webml", "http://www.webml.org");
			webmlProject.setAttribute("xmi:version", "2.1");
			
			TranslateWebMLToXMI translate = new TranslateWebMLToXMI(_queryPath, outputDocument);
			translate.processProject(webmlQueryProject, webmlProject);
			
			//converting from w3c.dom to jdom
			DOMBuilder builder = new DOMBuilder();
			org.jdom.Element jdomRoot = builder.build(webmlProject);
			org.jdom.Document jdomDoc = new org.jdom.Document((org.jdom.Element) jdomRoot.clone());
			XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
		    String xmiContent = outputter.outputString(jdomDoc);
		    try {
		    	//blackboard.getRecord(recordIds[0]).setAttachment("xmiContent", xmiContent.getBytes());
		    	blackboard.getRecord(recordIds[0]).getMetadata().put("xmiContent", xmiContent);
		    } catch (BlackboardAccessException e) {
		    	e.printStackTrace();
		    }
		}
			
		return recordIds;
	}

}
