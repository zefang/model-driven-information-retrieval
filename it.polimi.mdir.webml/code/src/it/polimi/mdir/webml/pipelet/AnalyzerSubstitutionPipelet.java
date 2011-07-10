package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


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

	private final Log _log = LogFactory.getLog();
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
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
				
				//TODO Navigate the DOM tree
					//TODO extract attributes
					//TODO send them to solr
					//TODO fetch the response
					//TODO reinsert the new value keeping the original content
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
			
		return recordIds;
	}

}
