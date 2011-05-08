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
		
		for (String id : recordIds) {
			try {
				Record record = blackboard.getRecord(id);
				String className = record.getMetadata().getStringValue("className");
				className += "|100.0";
				record.getMetadata().put("className", className);
				
				String attributeNamesString = record.getMetadata().getStringValue("attributeNames");
				String[] attributeNamesArray = attributeNamesString.split("\\s");
				attributeNamesString = "";
				for (int i = 0; i < attributeNamesArray.length; i++) {
					attributeNamesArray[i] += "|10.0";
					attributeNamesString += attributeNamesArray[i] + " ";
				}
				attributeNamesString.trim();
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
