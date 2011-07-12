/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.uml;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import java.util.ArrayList;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


//TODO: DA MERGIARE CON EXPERIMENTS B


/**
 * This class constructs the attributeNames field
 */
public class SplitCPipelet implements Pipelet {
	
	private final String CONCEPT_TYPE = "CLASS";
	
	private static int count = 0;
	
	private final Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		System.out.println("Start Enrich C: " + ++count);
		System.out.println("C -> recordids.length: " + recordIds.length);
		//This array will contain new id to pass through the framework
		final ArrayList<String> newRecordsIds = new ArrayList<String>();
		final int nNewRecords;	
		for (final String id : recordIds) {
			String fileName = "";
			try {
				fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				System.out.println("C -> name: " + fileName);
				
				//Construct attributeNames field
				final String classIds = blackboard.getRecord(id).getMetadata().getStringValue("classIds");
				final String classNames = blackboard.getRecord(id).getMetadata().getStringValue("classNames");
				final String attributeNames = blackboard.getRecord(id).getMetadata().getStringValue("attributeNames");
				
				final String[] classIdsArray = classIds.split("\\s");
				final String[] classNamesArray = classNames.split("\\s");
				final String[] attributeNamesArray = attributeNames.split("\\s");
				
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
					
					/*
					* Extract attribute names for each class
					* Every attributeNamesArray[j] is of the format classId$attribteName+conceptType:value
					* conceptType value can be: association, composition or attribute.
					* Only in case of associations and compositions the format is
					* 'classIdVALUE'$'attributeNameVALUE'+'conceptType:relTypeVALUE'+'lowerValue'-'upperValue'.
					* In ExperimentC we do need payloads, so we keep them for PayloadAdderPipelet
					* attrName[0] -> classId
					* attrName[1] -> attributeName+conceptType
					*/
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
				
			} catch (Exception e) {
				_log.write("C -> Exception at project " + fileName);
				e.printStackTrace();
			}
		}
		
		nNewRecords = newRecordsIds.size();
		final String[] newRecordsIdsArray = new String[nNewRecords];
		newRecordsIds.toArray(newRecordsIdsArray);
		return newRecordsIdsArray;
	}

}
