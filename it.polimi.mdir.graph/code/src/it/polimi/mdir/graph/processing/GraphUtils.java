package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.Edge;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/**
 * Provides utility variables and methods to manipulate graphs.
 */
public class GraphUtils {
	
	public enum RelationType {
	    GENERALIZATION_FATHER_CHILD, GENERALIZATION_CHILD_FATHER,
	    COMPOSITION_COMPOSITE_COMPONENT, COMPOSITION_COMPONENT_COMPOSITE, 
	    ASSOCIATION,
	    
	    COMPOSITION_COMPOSITE_COMPONENT_1_1, COMPOSITION_COMPOSITE_COMPONENT_1_N,
	    COMPOSITION_COMPONENT_COMPOSITE_1_1, COMPOSITION_COMPONENT_COMPOSITE_1_N,
	    ASSOCIATION_1_1, ASSOCIATION_1_N
	}

	/**
	 * Sorts a collecton of edges with respect to their id. 
	 * @param edgesList
	 * The list of edges to sort.
	 * @return
	 * A new sorted list.
	 */
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
	
	/**
	 * Swaps two edges in an array.
	 * @param edgeArray
	 * the array containing the two edges to swap.
	 * @param loc1
	 * The index of the first item to swap.
	 * @param loc2
	 * The index of the second item to swap.
	 */
	private static void swap(Edge[] edgeArray, int loc1, int loc2) {
		Edge temp = null;
		temp = edgeArray[loc1];
		edgeArray[loc1] = edgeArray[loc2];
		edgeArray[loc2] = temp;
	}
	
}
