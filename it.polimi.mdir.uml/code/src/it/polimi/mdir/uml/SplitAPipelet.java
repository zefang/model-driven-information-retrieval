/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.uml;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

/**
 * This pipelet will construct a record for the experiment A, by processing
 * the ouput of the crawler.
 */
public class SplitAPipelet implements Pipelet {
		
	private static int count = 0;
	
	private final Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Splitting A: " + ++count);
		System.out.println("Split A -> recordids.length: " + recordIds.length);
		for (final String id : recordIds) {
			String projectName = "";
			try {
				projectName = blackboard.getRecord(id).getMetadata().getStringValue("projectName");
				System.out.println("Split A -> projectName: " + projectName);
				
				//Extract attributes from record
				Record rec = blackboard.getRecord(id);
				final String classNames = rec.getMetadata().getStringValue("classNames");
				final String attributeNamesAndClassIds = rec.getMetadata().getStringValue("attributeNames");
				
				//Split attributeNames into an string array
				final String[] attributeNamesArray = attributeNamesAndClassIds.split("\\s");
				
				String attr = "";
				String attributeNames = "";
				//Split attributeNamesArray into "classId attribute" to extract only attribute names
				for (int i=0; i<attributeNamesArray.length; i++) {
					attr = attributeNamesArray[i].split("\\$")[1].split("\\+")[0];
					attributeNames = attributeNames.concat(attr + " ");
				}
				final String content = attributeNames.concat(classNames);
				
				rec.getMetadata().put("content", content);

				blackboard.setRecord(rec);				
				blackboard.commit();	
				
			} catch (Exception e) {
				_log.write("SplitAPipelet -> Exception at project " + projectName);
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}

}
