package it.polimi.mdir.graph.processing;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import edu.uci.ics.jung.graph.Graph;
import junit.framework.TestCase;

public class ImportAttributesTest extends TestCase {

	public void testImportAttributes() {
		NavigateGraph nv = new NavigateGraph();
		Graph<Node, Edge> g = null;
		try {
			FileInputStream fileIn = new FileInputStream(ConfigLoader.SERIALIZATION_PATH + "prova" + ".ser");
			ObjectInputStream in = new ObjectInputStream(fileIn);
			g = (Graph<Node, Edge>) in.readObject();
			in.close();
				fileIn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ImportAttributes tester = new ImportAttributes();
		
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
		nv.visitNode(g, 4, toVisit, tester);
		
		ArrayList<String> attributes = tester.getImportedAttributes();
		ArrayList<String> classes = tester.getImportedClassNames();
		
		HashMap<String, SumCount> hm = new HashMap<String, SumCount>();
		String newAttributes = "";
		newAttributes += constructHashMapAndNewAttributes(attributes, hm);
		//newAttributes += constructHashMapAndNewAttributes(classes, hm);
		newAttributes = averageWeight(newAttributes.trim(), hm);
		System.out.println(newAttributes);
		assertEquals("Result:", "attributoD|0.7739999 attributoC|0.765 attributoB|0.76449996 attributoA|1.0", newAttributes);
		
	}
	
	
	/**
	 * Prepares the valuesArray to be used by the averageWeight() function.
	 * @param valuesArray
	 * The ArrayList containing the values in the form name|weight.
	 * @param hm
	 * The HashMap to store the couples Name-count-sum.
	 * @return
	 * The string of the names of the values separated by a space.
	 */
	private String constructHashMapAndNewAttributes(ArrayList<String> valuesArray, HashMap<String, SumCount> hm) {
		String compositeValues = "";
		String[] nextValue = new String[2];
		Iterator<String> itr = valuesArray.iterator();
		while (itr.hasNext()) {
			nextValue = itr.next().split("\\|");
			if (hm.containsKey(nextValue[0])) {
				hm.get(nextValue[0]).incrementSum(Float.valueOf(nextValue[1]));
			} else {
				hm.put(nextValue[0], new SumCount(Float.valueOf(nextValue[1])));
				compositeValues += nextValue[0] + " ";
			}
		}
		return compositeValues;
	}
	
	/**
	 * Gets the name of the values and does the average along 
	 * the ones with the same name using the Hashmap constructed before.
	 * The string "x|2.0 x|10.0" will become "x|6.0" after this method is called. 
	 * @param values
	 * the string containing the names of the values to transform.
	 */
	private String averageWeight(String values, HashMap<String, SumCount> hm) {
		String newAttributes = "";
		String[] valuesArray = values.split("\\s");
		String name = "";
		float weight = 0;
		for (int i = 0; i < valuesArray.length; i++) {
			name = valuesArray[i];
			weight = hm.get(name).getAverage();
			newAttributes += name+"|"+weight + " ";
		}
		return newAttributes.trim();
	}
	
	/**
	 * This class stores the total sum and the number of repetition of one
	 * attribute. So if in importedAttributes there are "x|1.0 x|0.5 y|2.0 x|3.0",
	 * for x it will store sum = 4.5 and count = 3
	 */
	class SumCount {
		private float sum = 0;
		private int count = 0;
		
		public SumCount(float sum) {
			this.sum = sum;
			this.count++;
		}
		
		public void incrementSum(float increment) {
			this.sum += increment;
			this.count++;
		}
		
		public float getAverage() {
			return this.sum / this.count;
		}
		
	}

}
