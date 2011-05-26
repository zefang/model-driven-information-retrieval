package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class GraphUtils {

	public static Collection<Edge> sortEdges(Collection<Edge> edgesList) {
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
	
	private static void swap(Edge[] edgeArray, int loc1, int loc2) {
		Edge temp = null;
		temp = edgeArray[loc1];
		edgeArray[loc1] = edgeArray[loc2];
		edgeArray[loc2] = temp;
	}
	
}
