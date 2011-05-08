package it.polimi.mdir.text;


import java.util.ArrayList;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;




/**
 * This class constructs the attributeNames field
 */
public class EnrichRecordsExperimentBPipelet implements Pipelet {
	
	private final String CONCEPT_TYPE = "CLASS";
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		//This array will contain new id to pass through the framework
		ArrayList<String> newRecordsIds = new ArrayList<String>();
		int nNewRecords;	
		for (final String id : recordIds) {
			try {
				//construct attributeNames field
				String classIds = blackboard.getRecord(id).getMetadata().getStringValue("classIds");
				String classNames = blackboard.getRecord(id).getMetadata().getStringValue("classNames");
				String attributeNames = blackboard.getRecord(id).getMetadata().getStringValue("attributeNames");
				
				String[] classIdsArray = classIds.split("\\s");
				String[] classNamesArray = classNames.split("\\s");
				String[] attributeNamesArray = attributeNames.split("\\s");
				
				//For each class create a new record (a copied one)
				for (int i=0; i<classIdsArray.length; i++) {
					String classId = classIdsArray[i];
					String className = classNamesArray[i];
					Record copy = blackboard.copyRecord(id, classId);
					
					//Adding new id to newRecordsIds
					newRecordsIds.add(classId);
					
					copy.getMetadata().put("conceptType", CONCEPT_TYPE);
					copy.getMetadata().put("classId", classId);
					copy.getMetadata().put("className", className);
					
					//extract attribute names for each class
					//Every attributeNamesArray[j] is of the format classId$attribteName
					String attributesPerClass = "";
					for (int j=0; j < attributeNamesArray.length; j++) {
						String[] attrName = attributeNamesArray[j].split("\\$");
						if (attrName[0].equals(classId.toString())) {
							attributesPerClass += attrName[1] + " ";
						}
					}
					copy.getMetadata().put("attributeNames", attributesPerClass.trim());

					//Apply record filter
					try {
						copy = blackboard.filterRecord(copy, "experimentC");
					} catch (RecordFilterNotFoundException e) {
						e.printStackTrace();
					}		
					blackboard.setRecord(copy);				
				}
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
