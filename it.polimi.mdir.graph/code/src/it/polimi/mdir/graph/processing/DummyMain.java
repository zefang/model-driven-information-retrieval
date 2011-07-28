package it.polimi.mdir.graph.processing;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.Collection;
import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;

/**
 * This is just a test class to see if navigation is performed correctly.
 */
public class DummyMain {
	
	private static String fileName = "PetriNet_extended.gml";
	
	public static void main(String[] args) {
		
		NavigateGraph nv = new NavigateGraph();
		fileName = fileName.substring(0, fileName.length()-4);
		/*
		Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(ConfigLoader.GRAPHML_PATH + fileName+".gml");
		//serializing graph
		try {
			FileOutputStream fileOut = new FileOutputStream(ConfigLoader.SERIALIZATION_PATH + fileName+".ser");
			ObjectOutputStream out = new ObjectOutputStream(fileOut);
			out.writeObject(g);
			out.close();
				fileOut.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		*/
		//deserialize
		Graph<Node, Edge> g = retrieve();
		Collection<Node> nodes = g.getVertices();
		Iterator<Node> nodeItr = nodes.iterator();
		Node toVisit = null;
		while (nodeItr.hasNext()) {
			Node nextNode = nodeItr.next();
			if (nextNode.getClassName().equals("Marking")) {
				toVisit = nextNode;
				break;
			}
		}
		nv.visitNode(g, 1, toVisit, new ImportAttributes());
		/*
		g = retrieve();
		Collection<Node> nodes2 = g.getVertices();
		Iterator<Node> nodeItr2 = nodes2.iterator();
		while (nodeItr2.hasNext()) {
			Node nextNode = nodeItr2.next();
			if (nextNode.getClassName().equals("B")) {
				toVisit = nextNode;
				break;
			}
		}
		nv.visitNode(g, 2, toVisit, new ProvaOperation());
		*/
	}
	
	/**
	 * Return a graph through deserialization
	 */
	@SuppressWarnings("unchecked")
	private static Graph<Node, Edge> retrieve() {
		Graph<Node, Edge> graph = null;
		try {
			FileInputStream fileIn = new FileInputStream(ConfigLoader.SERIALIZATION_PATH +fileName + ".ser");
			ObjectInputStream in = new ObjectInputStream(fileIn);
			graph = (Graph<Node, Edge>) in.readObject();
			in.close();
				fileIn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return graph;
	}
	

}
