package it.polimi.mdir.text;

import java.util.ArrayList;
import java.util.Iterator;

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
				
				System.out.println("Start D " +  ++count + " -> " + className);
				
				ImportAttributes function = new ImportAttributes();
				nv.visitNode(projectId, fileName+".xml", classId, 0, classId, function);
				ArrayList<String> attributes = function.getImportedAttributes();
				ArrayList<String> classes = function.getImportedClassNames();
				String newAttributes = "";
				Iterator<String> itr = attributes.iterator();
				while (itr.hasNext()) {
					newAttributes += itr.next() + " ";
				}
				itr = classes.iterator();
				while (itr.hasNext()) {
					newAttributes += itr.next() + " ";
				}
				
				//copia tutto, anche gli importati,  nel campo attributeNames
				blackboard.getRecord(id).getMetadata().put("attributeNames", newAttributes.trim());
				
				blackboard.commit();
				System.out.println(newAttributes);
				System.out.println(className +": TUTTO OK");
				System.out.println("END: " + count);
				System.out.println("");
				
			} catch (BlackboardAccessException e) {
				e.printStackTrace();
			}
		}
		
		return recordIds;
	}

}
