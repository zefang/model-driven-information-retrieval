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
				className += "|2.0";
				record.getMetadata().put("className", className);
				
				blackboard.setRecord(record);
				blackboard.commit();
			} catch (BlackboardAccessException e) {
				e.printStackTrace();	
			}
		}
		
		return recordIds;
	}

}
