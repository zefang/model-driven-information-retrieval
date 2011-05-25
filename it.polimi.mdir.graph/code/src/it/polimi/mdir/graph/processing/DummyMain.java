package it.polimi.mdir.graph.processing;

import java.util.Collection;
import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

public class DummyMain {

	public static void main(String[] args) {
		NavigateGraph nv = new NavigateGraph();
		
		Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(ConfigLoader.GRAPHML_PATH +"prova.uml.xml");
		Collection<Node> nodes = g.getVertices();
		Iterator<Node> nodeItr = nodes.iterator();
		Node toVisit = null;
		while (nodeItr.hasNext()) {
			Node nextNode = nodeItr.next();
			if (nextNode.getClassName().equals("A")) {
				toVisit = nextNode;
				break;
			}
		}

		nv.visitNode(g, 3, toVisit, new ProvaOperation());
	}
	
	

}
