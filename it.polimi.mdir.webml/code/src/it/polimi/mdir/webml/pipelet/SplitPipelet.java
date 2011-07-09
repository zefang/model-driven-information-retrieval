package it.polimi.mdir.webml.pipelet;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


/**
 * 
 * This Pipelet gets the SMILA record containing information on 
 * a whole WebML project and splits them to an Area granularity 
 * generating one record per Area.
 * 
 */
public class SplitPipelet implements Pipelet {

	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		// TODO Auto-generated method stub
		return null;
	}
	

}
