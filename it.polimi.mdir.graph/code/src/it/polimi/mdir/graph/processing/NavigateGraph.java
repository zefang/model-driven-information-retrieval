package it.polimi.mdir.graph.processing;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;


public class NavigateGraph {
	
	private static final int MAX_HOPS = 2;
	
	private LinkedList<String> _nodeQueue = new LinkedList<String>();
	
	public NavigateGraph() {
	}
	
	@Deprecated
	public void startNavigation() {
		//TODO this method is deprecated 
		//Need to load graph in memory first. decouple process method in CreateGraphPipelet.
		
		//_nodeQueue = getAllNodes(FILE_NAME); deprecated: use the methods of Graph 
		
		while (!_nodeQueue.isEmpty()) {
			String nodeId = _nodeQueue.remove(); 
			//select node that I want to visit
			// LocatedElement _fvqyI-iaEd6gMtZRCjS81g
			// PetriNet _fvqyJeiaEd6gMtZRCjS81g
			// Element _fvqyJuiaEd6gMtZRCjS81g
			if (nodeId.equals("_fvqyJuiaEd6gMtZRCjS81g")) {
		//		visitNode(FILE_NAME, nodeId, 0, nodeId, new ImportAttributes());
			}
		}
	}
	
	/**
	 *  Visits recursively the node and its neighbours. 
	 *  Note that the business logic gets executed after visiting the neighbours so actually 
	 *  it gets executed for the furthest nodes first, going upwards.
	 *  
	 * @param g
	 * The graph to which the node to visit belongs.
	 * @param nodeToVisit
	 * The node to visit.
	 * @param numHops
	 * Tells us how deep we are in the visiting. It's 0 when I just started and gets incremented
	 * as you get further from the initial node. 
	 * @param callerNode
	 * Node that "called" this one. In the case of the first node, callerNode is 
	 * equal to nodeToVisit.
	 * @param function
	 * Reperesents the business logic that I have to do during the visit of the node.
	 */
	public void visitNode(Graph<Node, Edge> g, Node nodeToVisit, int numHops, Node callerNode, OperationFunction function) {
		if (numHops > MAX_HOPS) 
			return;
		
		//visit the neighbours
		numHops += 1;
		LinkedList<Node> neighboursQueue = getNeighbours(nodeToVisit, g);
		
		while (!neighboursQueue.isEmpty()) {
			Node nextNode = neighboursQueue.remove(); 
			if (!nextNode.equals(callerNode)) {
				visitNode(g, nextNode, numHops, nodeToVisit, function);
			}
		}
		
		//TODO Do ya thang here
		function.importAttributes(nodeToVisit, callerNode, numHops, g);
	}
	
	
	/**
	 * 
	 * Gets the neighbours of a node and puts them in a queue. 
	 * 
	 * @param n
	 * The node which I want to retrieve the neighbours of.
	 * @param g
	 * The graph in which the node is in.
	 * @return
	 * A queue of the neighbours of the node.
	 */
	private static LinkedList<Node> getNeighbours(Node n, Graph<Node, Edge> g) {
		Collection<Node> neighbours = g.getNeighbors(n);
		LinkedList<Node> neighboursQueue = new LinkedList<Node>();
		Iterator<Node> itr = neighbours.iterator();
		while (itr.hasNext()) {
			neighboursQueue.add(itr.next());
		}
		return neighboursQueue;
	}
	

}
