package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import it.polimi.mdir.xquery.XQueryWrapper;

public class NavigateGraph {

	
	private static final String XQUERY_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery";
	private static final String FILE_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/exampledocs/"; 
	
	private static final int MAX_HOPS = 1;
	
	private LinkedList<String> _nodeQueue = new LinkedList<String>();

	public void startNavigation() {
		
		int residualHops = MAX_HOPS;
		_nodeQueue = getAllNodes();
		
		while (!_nodeQueue.isEmpty()) {
			visitNode(_nodeQueue.remove(), --residualHops); 
			//TODO aggiungere parametro per dire a quale nodo fare riferimento 
			// (eg, a quale nodo passare gli attributi raccolti)
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
	 * 
	 */
	private void visitNode(String nodeId, int residualHops) {
		if (residualHops == 0) 
			return;
		
		residualHops -= 1;
		LinkedList<String> neighboursQueue = getNeighbours(nodeId);
		
		//TODO visit this node
		
		//visit the neighbours
		while (!neighboursQueue.isEmpty()) {
			visitNode(neighboursQueue.remove(), residualHops);
		}
	}
	
	/**
	 * Gets All the nodes. 
	 * The associated Xquery retrieves all the id attributes of the tag "node" 
	 * 
	 * @return
	 * A queue containing all the nodes ids.
	 */
	private LinkedList<String> getAllNodes() {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNodeIds.xquery");
		xq.bindVariable("document", FILE_PATH + "result.xml"); //TODO ciclare
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
	 * @return
	 * A queue of the neighbours of the node.
	 */
	private static LinkedList<String> getNeighbours(String nodeId) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNeighbours.xquery");
		xq.bindVariable("document", FILE_PATH + "result.xml"); //TODO ciclare
		xq.bindVariable("nodeId", nodeId);
		ArrayList<String> neighboursList = xq.executeQuery();
		LinkedList<String> neighboursQueue = new LinkedList<String>();
		Iterator<String> itr = neighboursList.iterator();
		while (itr.hasNext()) {
			neighboursQueue.add(itr.next());
		}
		return neighboursQueue;
	}

}
