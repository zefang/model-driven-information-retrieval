package it.polimi.mdir.graph.processing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;


public class NavigateGraph {
	
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
		//		visitNode(FILE_NAME, 2, nodeId, new ImportAttributes());
			}
		}
	}
	
	
	public void visitNode(Graph<Node, Edge> g, int numHops, Node rootNode, OperationFunction function) {
		visitNode(g, numHops, rootNode, rootNode, rootNode, function);
	}
	
	/**
	 *  Visits recursively the node and its neighbours.
	 *  Note that we look at the outgoing edges, so if a node is reference by more than one 
	 *  outgoing edge, we will process that node more times.
	 *  Note that the business logic gets executed after visiting the neighbours so actually 
	 *  it gets executed for the furthest nodes first, going upwards.
	 *  
	 * @param g
	 * The graph to which the node to visit belongs.
	 * @param numHops
	 * Tells us how many hops are left to finish the navigation. 
	 * @param nodeToVisit
	 * The node to visit.
	 * @param callerNode
	 * Node that "called" this one. In the case of the first node, callerNode is 
	 * equal to nodeToVisit.
	 * @param rootNode
	 * The starting node.
	 * @param function
	 * Reperesents the business logic that I have to do during the visit of the node.
	 */
	public void visitNode(Graph<Node, Edge> g, int numHops, Node nodeToVisit, Node callerNode, Node rootNode, OperationFunction function) {
		if (numHops < 0) 
			return;
		
		//visit the neighbours
		numHops -= 1;
		
		Collection<Edge> outgoingEdgesList = g.getOutEdges(nodeToVisit);
		Collection<Edge> outgoingSortedEdgesList = sortEdges(outgoingEdgesList);
		Iterator<Edge> outgoingSortedEdgesItr = outgoingSortedEdgesList.iterator();
		while (outgoingSortedEdgesItr.hasNext()) {
			Edge nextEdge = outgoingSortedEdgesItr.next();
			if (!nextEdge.hasBeenFollowed() &&
				!nextEdge.getTargetId().equals(callerNode.getId()) &&
				!nextEdge.getTargetId().equals(rootNode.getId()) &&
				!nextEdge.getTargetId().equals(nodeToVisit.getId())
				) {
				
				nextEdge.setFollowed(true);
				Collection<Node> nodesList = g.getVertices();
				Iterator<Node> nodeItr = nodesList.iterator();
				Node nextNode = null;
				while (nodeItr.hasNext()) {
					Node nextNodeCandidate = nodeItr.next();
					if (nextNodeCandidate.getId().equals(nextEdge.getTargetId())) {
						nextNode = nextNodeCandidate;
					}
				}
				visitNode(g, numHops, nextNode, nodeToVisit, rootNode, function);	
			}
		}
		
		//TODO Do ya thang here
		function.importAttributes(nodeToVisit, callerNode, numHops, g);
	}

	private Collection<Edge> sortEdges(Collection<Edge> edgesList) {
		if (edgesList.isEmpty())
			return edgesList;
		
		int numEdges = edgesList.size();
		Edge[] edgeArray = new Edge[numEdges];
		Iterator<Edge> itr = edgesList.iterator();
		int i = 0;
		while (itr.hasNext()) {
			edgeArray[i++] = itr.next();
		}
		ArrayList<Edge> toReturn = new ArrayList<Edge>();
		boolean swapped = true;
		while (swapped) {
			swapped = false;
			for (i = 1; i < numEdges; i++) {
				if (edgeArray[i-1].getId().compareTo(edgeArray[i].getId()) > 0) {
					swap(edgeArray, i-1, i);
					swapped = true;
				}
			}	
		}
		for (i = 0; i < numEdges; i++) {
			toReturn.add(edgeArray[i]);
		}
		return toReturn;
	}
	
	private void swap(Edge[] edgeArray, int loc1, int loc2) {
		Edge temp = null;
		temp = edgeArray[loc1];
		edgeArray[loc1] = edgeArray[loc2];
		edgeArray[loc2] = temp;
	}

}
