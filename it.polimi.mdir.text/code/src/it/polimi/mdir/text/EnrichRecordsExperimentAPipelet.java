/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.text;


import java.util.ArrayList;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


public class EnrichRecordsExperimentAPipelet implements Pipelet {
		
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Enrich A: " + ++count);
		System.out.println("A -> recordids.length: " + recordIds.length);
		//This array will contain new id to pass through the framework
		ArrayList<String> newRecordsIds = new ArrayList<String>();
		int nNewRecords;
		String content = "";
		String attr = "";
		String attributeNames = "";
		for (final String id : recordIds) {
			try {
				System.out.println("A -> name: " + blackboard.getRecord(id).getMetadata().getStringValue("projectName"));
				
				//Extract attributes from record
				String classNames = blackboard.getRecord(id).getMetadata().getStringValue("classNames");
				String attributeNamesAndClassIds = blackboard.getRecord(id).getMetadata().getStringValue("attributeNames");
				String projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				
				//Split attributeNames into an string array
				String[] attributeNamesArray = attributeNamesAndClassIds.split("\\s");
				
				//Split attributeNamesArray into "classId attribute" to extract only attribute names
				for (int i=0; i<attributeNamesArray.length; i++) {
					
					attr = attributeNamesArray[i].split("\\$")[1].split("\\+")[0];
					
					if (i==0) {			
						attributeNames = attributeNames.concat(attr);
					}
					else {		
						attributeNames = attributeNames.concat(" " + attr);					
					}	
				}
				
				content = attributeNames.concat(" " + classNames);
				
				Record copy = blackboard.copyRecord(id, projectId);
					
				//Adding new id to newRecordsIds
				newRecordsIds.add(projectId);

				
				copy.getMetadata().put("content", content);

				//Apply record filter
				try {
					copy = blackboard.filterRecord(copy, "experimentA");
				} catch (RecordFilterNotFoundException e) {
					e.printStackTrace();
				}		
				blackboard.setRecord(copy);				
				blackboard.commit();	
				
			} catch (BlackboardAccessException e) {
				System.out.println("BlackboardAccessException: " + e.toString());
				e.printStackTrace();
			}
		}
		
		nNewRecords = newRecordsIds.size();
		String[] newRecordsIdsArray = new String[nNewRecords];
		newRecordsIds.toArray(newRecordsIdsArray);
		return newRecordsIdsArray;
	}

}
