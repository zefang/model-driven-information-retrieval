package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import java.util.HashMap;

import edu.uci.ics.jung.graph.Graph;

/**
 * This class is deprecated for now. It is better to use serialization to store a new graph. 
 * At least until a method for cloning/copying a Graph object shows up.
 */
@Deprecated
public class GraphCollection {

	public static HashMap<String, Graph<Node, Edge>> graphMap = new HashMap<String, Graph<Node,Edge>>();
	
}
