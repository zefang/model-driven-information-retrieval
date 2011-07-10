package it.polimi.mdir.webml.pipelet;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


/**
 * This pipelet performs the dereferentiation of the ids contained in 
 * the "entity" and "displayAttributes" attributes of the OperationUnits and 
 * ContentUnits, (as well as the "to" attribute in the Links ???). 
 */
public class DereferencePipelet implements Pipelet {

	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		return recordIds;
	}

}
