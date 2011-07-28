package it.polimi.mdir.graph.processing;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;

/**
 * Class containing methods for navigating a graph.
 */
public class NavigateGraph {
	
	private LinkedList<String> _nodeQueue = new LinkedList<String>();
	
	public NavigateGraph() {
	}
	
	@Deprecated
	public void startNavigation() {
		//This method is deprecated 
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
		visitNode(g, numHops, rootNode, rootNode, rootNode, null, function);
	}
	
	/**
	 *  Visits recursively the node and its neighbours.<br />
	 *  Note that we look at the outgoing edges, so if a node is referenced by more than one 
	 *  outgoing edge, we will process that node more times.<br />
	 *  Note that the business logic is executed after visiting the neighbours so 
	 *  it is actually executed from the deepest nodes first, going upwards.
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
	 * @param followedEdge
	 * Edge followed to reach this node.
	 * @param function
	 * Reperesents the business logic that I have to do during the visit of the node.
	 */
	public void visitNode(Graph<Node, Edge> g, int numHops, Node nodeToVisit, Node callerNode, Node rootNode, Edge followeEdge, OperationFunction function) {
		if (numHops < 0) 
			return;
		
		//visit the neighbours
		numHops -= 1;
		
		Collection<Edge> outgoingEdgesList = g.getOutEdges(nodeToVisit);
		Collection<Edge> outgoingSortedEdgesList = GraphUtils.sortEdges(outgoingEdgesList);
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
				visitNode(g, numHops, nextNode, nodeToVisit, rootNode, nextEdge, function);	
			}
		}
		
		//Here a call to the business logic is performed 
		function.executeBusinessLogic(nodeToVisit, callerNode, followeEdge, numHops, g);
	}

}
