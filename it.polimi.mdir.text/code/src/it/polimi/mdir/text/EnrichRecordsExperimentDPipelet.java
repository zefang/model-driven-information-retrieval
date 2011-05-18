package it.polimi.mdir.text;

import it.polimi.mdir.graph.ImportAttributes;
import it.polimi.mdir.graph.NavigateGraph;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

public class EnrichRecordsExperimentDPipelet implements Pipelet {

	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		NavigateGraph nv = new NavigateGraph();
		
		System.out.println(ImportAttributes.attributes); 
		
		return null;
	}

}
