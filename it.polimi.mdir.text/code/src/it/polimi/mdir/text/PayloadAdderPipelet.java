/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.text;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

public class PayloadAdderPipelet implements Pipelet {
		
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		//For each class
		for (String id : recordIds) {
			try {
				String conceptType = "";
				String attributeName = "";
				Record record = blackboard.getRecord(id);
				String className = record.getMetadata().getStringValue("className");
				className += "|5.0";
				System.out.println(className);
				record.getMetadata().put("className", className);
				
				String attributeNamesString = record.getMetadata().getStringValue("attributeNames");
				
				if(!attributeNamesString.isEmpty()) {
				
					String[] attributeNamesArray = attributeNamesString.split("\\s");
					attributeNamesString = "";
					
					for (int i = 0; i < attributeNamesArray.length; i++) {
						
						String[] attributeAndConceptTypeArray = attributeNamesArray[i].split("\\+");
						attributeName = attributeAndConceptTypeArray[0];
						conceptType = attributeAndConceptTypeArray[1];
					
						if (conceptType.contains("attribute")) {
							attributeNamesString += attributeName.concat("|1.0 ");	
						} else if (conceptType.contains("association")) {
							attributeNamesString += attributeName.concat("|2.5 ");
						} else attributeNamesString += attributeName.concat("|2.0 ");
					}
					attributeNamesString = attributeNamesString.trim();
					System.out.println(attributeNamesString);
				}
				record.getMetadata().put("attributeNames", attributeNamesString);
				
				
				blackboard.setRecord(record);
				blackboard.commit();
			} catch (BlackboardAccessException e) {
				e.printStackTrace();	
			}
		}
		
		return recordIds;
	}

}
