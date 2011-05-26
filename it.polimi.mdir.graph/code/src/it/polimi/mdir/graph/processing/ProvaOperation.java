package it.polimi.mdir.graph.processing;

import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

class ProvaOperation extends ImportAttributes {

	@Override
	public void importAttributes(Node currentNode, Node callerNode,
			int numHops, Graph<Node, Edge> g) {
		super.importAttributes(currentNode, callerNode, 0, g);
		
		Iterator<ImportCandidate> itr = importedAttributes.iterator();
		//Iterator<ImportCandidate> itr = importedClassNames.iterator();
		System.out.print("ho importato: ");
		while (itr.hasNext()) {
			System.out.print(itr.next().getNameWeight() + " ");
			//System.out.print(itr.next().getName() + " ");
		}
		System.out.println(" ");
	}
	
}