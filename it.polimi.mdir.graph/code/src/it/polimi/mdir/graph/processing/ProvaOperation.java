package it.polimi.mdir.graph.processing;

import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

class ProvaOperation extends ImportAttributes {

	@Override
	public void importAttributes(Node currentNode, Node callerNode,
			int numHops, Graph<Node, Edge> g) {
		super.importAttributes(currentNode, currentNode, 0, g);
		
		Iterator<ImportCandidate> itr = importedAttributes.iterator();
		while (itr.hasNext()) {
			System.out.println("Ho importato: " + itr.next().getNameWeight());
		}
		
	}
	
}