package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import java.util.HashMap;

import edu.uci.ics.jung.graph.Graph;

/**
 * This class is deprecated for now. Use serialization to store a new graph. 
 * At least until a method for cloning/copying a Graph object does show up.
 */
@Deprecated
public class GraphCollection {

	public static HashMap<String, Graph<Node, Edge>> graphMap = new HashMap<String, Graph<Node,Edge>>();
	
}
