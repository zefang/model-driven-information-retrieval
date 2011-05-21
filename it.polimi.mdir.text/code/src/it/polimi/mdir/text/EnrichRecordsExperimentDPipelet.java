package it.polimi.mdir.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.GraphCollection;
import it.polimi.mdir.graph.processing.ImportAttributes;
import it.polimi.mdir.graph.processing.NavigateGraph;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

import edu.uci.ics.jung.graph.Graph;

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
				
				String className = blackboard.getRecord(id).getMetadata().getStringValue("className");
				String classId = blackboard.getRecord(id).getMetadata().getStringValue("classId");
				String fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				
				System.out.println("Start D " +  ++count + " -> " + className);
				
				Graph<Node, Edge> g = GraphCollection.graphMap.get(fileName + ".xml");
				Collection<Node> nodes = g.getVertices();
				Iterator<Node> nodeItr = nodes.iterator();
				boolean found = false;
				Node toVisit = null;
				while (nodeItr.hasNext() && !found) {
					Node n = nodeItr.next();
					if (n.getId().equals(classId)) {
						found = true;
						toVisit = n;
					}
				}
				ImportAttributes function = new ImportAttributes();
				nv.visitNode(g, toVisit, 0, toVisit, function);
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
