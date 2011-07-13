package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


/**
 * This pipelet will add the payloads to the analyzed content to be correctly indexed.
 * Used only in experiment C (for webml).
 *
 */
public class WebmlPayloadAdderPipelet implements Pipelet {

	private final Log _log = LogFactory.getLog();
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Payload Adding: " + ++count);
		System.out.println("PayloadAdder -> recordids.length: " + recordIds.length);
		
		for (final String id : recordIds) {
			String projectId = "";
			try {
				projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				System.out.println("PayloadAdder -> projectId: " + projectId);
				
				//TODO navigate tree
					//TODO get analyzed content
					//TODO add payloads
				
				
			} catch (Exception e) {
				_log.write(e.toString());
				e.printStackTrace();
			}
		}
			
		return recordIds;
	}

}
