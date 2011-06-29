/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.text;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


public class EnrichRecordsExperimentAPipelet implements Pipelet {
		
	private static int count = 0;
	
	private final Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Enrich A: " + ++count);
		System.out.println("A -> recordids.length: " + recordIds.length);
		for (final String id : recordIds) {
			String fileName = "";
			try {
				fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				System.out.println("A -> name: " + fileName);
				
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

				//Apply record filter
				try {
					rec = blackboard.filterRecord(rec, "experimentA");
				} catch (RecordFilterNotFoundException e) {
					e.printStackTrace();
				}		
				blackboard.setRecord(rec);				
				blackboard.commit();	
				
			} catch (Exception e) {
				_log.write("A -> Exception at project " + fileName);
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}

}
