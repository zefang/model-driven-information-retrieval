package it.polimi.mdir.graph;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Properties;

import it.polimi.mdir.xquery.XQueryWrapper;


public class NavigateGraph {

	//TODO fare classe statica di inizializzazione comune dove tenere le variabili?
	
	private static String XQUERY_PATH = "";
	private static String RESULT_PATH = "";
	
	private static final String FILE_NAME = "/PetriNet_extended.uml.xml";//da usare solo per esempio
	
	private static final int MAX_HOPS = 2;
	
	private LinkedList<String> _nodeQueue = new LinkedList<String>();
	private String _graphId = "";
	
	
	private static void initialization() {
		// Configuration file
		Properties config = new Properties();
		FileInputStream in;
		try {
			in = new FileInputStream("configuration.properties");
			config.load(in);
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		XQUERY_PATH = config.getProperty("XQUERY_PATH");
		RESULT_PATH = config.getProperty("RESULT_PATH");	
	}
	
	public void startNavigation() {
		
		initialization();
		
		_nodeQueue = getAllNodes(FILE_NAME); 
		_graphId = getGraphId(FILE_NAME);
		
		while (!_nodeQueue.isEmpty()) {
			String nodeId = _nodeQueue.remove(); 
			//select node that I want to visit
			// LocatedElement _fvqyI-iaEd6gMtZRCjS81g
			// PetriNet _fvqyJeiaEd6gMtZRCjS81g
			// Element _fvqyJuiaEd6gMtZRCjS81g
			if (nodeId.equals("_fvqyJuiaEd6gMtZRCjS81g")) {
				visitNode(_graphId, nodeId, 0, nodeId, new ImportAttributes());
			}
		}
	}
	


	/**
	 * 	Visits recursively the node and its neighbours. 
	 *  Note that the business logic gets executed after visiting the neighbours so actually 
	 *  it gets executed for the furthest nodes first, going upwards.
	 * 
	 * @param graphId
	 * The id of the graph in which there is the node I'm processing. 
	 * @param nodeId
	 * the id of the node to visit.
	 * @param numHops
	 * Tells us how deep we are in the visiting. It's 0 when I just started and gets incremented
	 * as you get further from the initial node. 
	 * @param callerNode
	 * id of the node that "called" this one. In the case of the first node, starternode is 
	 * equal to nodeId.
	 * @param function
	 * Reperesent the business logic that I have to do during the visit of the node.
	 * 
	 */
	public void visitNode(String graphId, String nodeId, int numHops, String callerNode, OperationFunction function) {
		if (numHops > MAX_HOPS) 
			return;
		
		//visit the neighbours
		numHops += 1;
		LinkedList<String> neighboursQueue = getNeighbours(nodeId, FILE_NAME);
		try {
			while (!neighboursQueue.isEmpty()) {
				String nextNode = neighboursQueue.remove(); 
				if (!nextNode.equals(callerNode)) {
					visitNode(graphId, nextNode, numHops, nodeId, function.getClass().newInstance());
				}
			}
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
		//TODO Do ya thang here
		function.importAttributes(nodeId, callerNode, numHops);
	}
	
	/**
	 * Gets All the nodes. 
	 * The associated Xquery retrieves all the id attributes of the tag "node" 
	 * 
	 * @param filename
	 * name of the file from which extract all the nodes
	 * @return
	 * A queue containing all the nodes ids.
	 */
	private LinkedList<String> getAllNodes(String filename) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNodeIds.xquery");
		xq.bindVariable("document", RESULT_PATH + filename);
		ArrayList<String> nodesList = xq.executeQuery();
		LinkedList<String> nodesQueue = new LinkedList<String>();
		Iterator<String> itr = nodesList.iterator();
		while (itr.hasNext()) {
			nodesQueue.add(itr.next());
		}
		return nodesQueue;
	}
	
	
	/**
	 * 
	 * Gets the neighbours of a node. 
	 * The associated Xquery retrieves all the target attributes of edges
	 * that have the provided id as source attribute. 
	 * 
	 * @param nodeId
	 * The id of the node.
	 * @param filename
	 * name of the file of the graph.
	 * @return
	 * A queue of the neighbours of the node.
	 */
	private static LinkedList<String> getNeighbours(String nodeId, String filename) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNeighbours.xquery");
		xq.bindVariable("document", RESULT_PATH + filename);
		xq.bindVariable("nodeId", nodeId);
		ArrayList<String> neighboursList = xq.executeQuery();
		LinkedList<String> neighboursQueue = new LinkedList<String>();
		Iterator<String> itr = neighboursList.iterator();
		while (itr.hasNext()) {
			neighboursQueue.add(itr.next());
		}
		return neighboursQueue;
	}
	
	
	/**
	 * Returns the graphId that is also the project id.
	 * @param filename
	 * filename of the file containing the graph.
	 * @return
	 * The id of the graph.
	 */
	private String getGraphId(String filename) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getGraphId.xquery");
		xq.bindVariable("document", RESULT_PATH + filename);
		ArrayList<String> neighboursList = xq.executeQuery();
		return neighboursList.get(0);
	}

}
