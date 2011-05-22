package it.polimi.mdir.graph.pipelet;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.ConfigLoader;
import it.polimi.mdir.graph.processing.GraphCollection;
import it.polimi.mdir.graph.processing.GraphFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import edu.uci.ics.jung.graph.Graph;


/**
 * @author Lorenzo Furrer
 *
 *	This pipelet serves the purpose of creating an instance of a graph in memory.
 *  Given a record corresponding to a project it will create its graph with JUNG
 *  and the instance created will be added to the GraphCollection to store it.
 *	
 */
public class CreateGraphPipelet implements Pipelet {
	
	private static String GRAPHML_PATH = ConfigLoader.GRAPHML_PATH;
	
	private static int count = 0;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		for (String id : recordIds) {
			
			try {
				String fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				fileName += ".xml";
			
				System.out.println(++count + "-> Creating graph: " + fileName);
				
				Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(GRAPHML_PATH + fileName);
				GraphCollection.graphMap.put(fileName, g);
				
			} catch (BlackboardAccessException e) {
				e.printStackTrace();
			}
			
		}
		
		return recordIds;
	}

}
