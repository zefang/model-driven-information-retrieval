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
	
	private static final String FILE_NAME = "/result.xml";//TODO ciclare
	
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
			visitNode(_graphId, nodeId, 0, nodeId, new ImportAttributes()); 
		}
	}
	


	/**
	 * 	Visits recursively the node and its neighbours. 
	 *  
	 * @param nodeId
	 * the id of the node to visit.
	 * @param residualHops
	 * Tells us how much hops are left before stopping. 
	 * It's how deep we are in the visiting.
	 * @param rootNode
	 * id of the node that started it all. Used to copy the attributes to the right node.
	 * 
	 */
	public String visitNode(String graphId, String nodeId, int numHops, String rootNode, OperationFunction function) {
		if (numHops > MAX_HOPS) 
			return "";
		
		//visit the neighbours
		numHops += 1;
		LinkedList<String> neighboursQueue = getNeighbours(nodeId, FILE_NAME);
		try {
			
			while (!neighboursQueue.isEmpty()) {
				visitNode(graphId, neighboursQueue.remove(), numHops, rootNode, function.getClass().newInstance());
			}
			
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
		//TODO Do ya thang here
		return function.importAttributes(nodeId, rootNode);
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
	 * Returns the graphId that is also the project id 
	 * @param filename
	 * @return
	 */
	private String getGraphId(String filename) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getGraphId.xquery");
		xq.bindVariable("document", RESULT_PATH + filename);
		ArrayList<String> neighboursList = xq.executeQuery();
		return neighboursList.get(0);
	}

}
