package it.polimi.mdir.text;

import java.util.ArrayList;

import it.polimi.mdir.graph.ImportAttributes;
import it.polimi.mdir.graph.NavigateGraph;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
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
		for (String id : recordIds)  {
			try {
				String projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				String classId = blackboard.getRecord(id).getMetadata().getStringValue("classId");
				String fileName = blackboard.getRecord(id).getMetadata().getStringValue("fileName");
				
				
				ImportAttributes function = new ImportAttributes();
				ImportAttributes.clear();
				nv.visitNode(projectId, fileName, classId, 0, classId, function);
				ArrayList<String> attributes = function.getImportedAttributes();
				ArrayList<String> classes = function.getImportedClassNames();
				System.out.println("Tutto ok");
				
			} catch (BlackboardAccessException e) {
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}

}
