package it.polimi.mdir.experimentC;


import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


public class PayloadAdderPipelet implements Pipelet {

	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		for (final String id : recordIds) {
			try {
				Record record = blackboard.getRecord(id);
				String content = record.getMetadata().getStringValue("Content");
				content += "|20.0";
				
				record.getMetadata().put("Content", content);
				blackboard.setRecord(record);
				blackboard.commit();
			} catch (BlackboardAccessException e) {
				System.out.println("BlackboardAccessException: " + e.toString());
				e.printStackTrace();
			}
		}
		
		
		return recordIds;
	}

}
