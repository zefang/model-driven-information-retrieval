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
private static int count = 0;
	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		NavigateGraph nv = new NavigateGraph();
		for (String id : recordIds)  {
			try {
				String projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				String className = blackboard.getRecord(id).getMetadata().getStringValue("className");
				String classId = blackboard.getRecord(id).getMetadata().getStringValue("classId");
				String fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				
				System.out.println(fileName);
				ImportAttributes function = new ImportAttributes();
				ImportAttributes.clear();
				nv.visitNode(projectId, fileName+".xml", classId, 0, classId, function);
				ArrayList<String> attributes = function.getImportedAttributes();
				ArrayList<String> classes = function.getImportedClassNames();
				System.out.println("");
				System.out.println(className +"TUTTO OK");
				System.out.println(++count);
				
			} catch (BlackboardAccessException e) {
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}

}
