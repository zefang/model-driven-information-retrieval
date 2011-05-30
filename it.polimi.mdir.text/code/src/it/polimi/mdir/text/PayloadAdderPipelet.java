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
import it.polimi.mdir.graph.processing.*;

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
				className += "|" + WeightRules.weightMap.get("class");
				record.getMetadata().put("className", className);
				
				/*
				* Format: classId$attribteName+conceptType:value
				* conceptType value can be: association, composition or attribute.
				* Only in case of associations and compositions the format is
				* 'classIdVALUE'$'attributeNameVALUE'+'conceptType:relTypeVALUE'+'lowerValue'-'upperValue'.
				*/				
				String attributeNamesString = record.getMetadata().getStringValue("attributeNames");
				
				if(!attributeNamesString.isEmpty()) {
				
					String[] attributeNamesArray = attributeNamesString.split("\\s");
					attributeNamesString = "";
					
					for (int i = 0; i < attributeNamesArray.length; i++) {
						
						String[] attributeAndConceptTypeArray = attributeNamesArray[i].split("\\+");
						attributeName = attributeAndConceptTypeArray[0];
						conceptType = attributeAndConceptTypeArray[1];
						
						//TODO: factorize it better! Switch case?
						//Simple attribute
						if (conceptType.contains("attribute")) {
							attributeNamesString += attributeName.concat("|" + WeightRules.weightMap.get("attribute") + " ");	
						//Association or composition attributes
						} else {
							//Split cardinalities
							String[] cardinalities = attributeAndConceptTypeArray[2].split("\\-");
							//TODO: it seems that, for now, we do not need need lowerValue?
							String lowerValue = cardinalities[0];
							String upperValue = cardinalities[1];
							//Association
							if (conceptType.contains("association")) {				
								if (upperValue.equals("*")) {
									attributeNamesString += attributeName.concat("|" + WeightRules.weightMap.get("association_1-*") + " ");
								} else {
									attributeNamesString += attributeName.concat("|" + WeightRules.weightMap.get("association_1-1") + " ");
								}	
							//Composition
							} else {
								if (upperValue.equals("*")) {
									attributeNamesString += attributeName.concat("|" + WeightRules.weightMap.get("composition_1-*") + " ");
								} else {
									attributeNamesString += attributeName.concat("|" + WeightRules.weightMap.get("composition_1-1") + " ");
								}
							}
						}
					}
					attributeNamesString = attributeNamesString.trim();
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
