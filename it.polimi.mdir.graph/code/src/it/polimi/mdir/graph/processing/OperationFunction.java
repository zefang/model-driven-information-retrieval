package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

/**
 * Abstract class representing a business logic operation.<br />
 * Derived classes will implement the business logic to execute.
 */
public abstract class OperationFunction {

	abstract public void executeBusinessLogic(Node currentNode, Node callerNode, Edge followedEdge, int numHops, Graph<Node, Edge> g);
	
}


