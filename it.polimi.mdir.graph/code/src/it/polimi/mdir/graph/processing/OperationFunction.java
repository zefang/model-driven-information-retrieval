package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

public abstract class OperationFunction {

	
	abstract public void importAttributes(Node currentNode, Node callerNode, int numHops, Graph<Node, Edge> g);
	
}


