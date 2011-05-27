package it.polimi.mdir.graph.processing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
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
		Graph<Node, Edge> g = null;
		try {
			FileInputStream fileIn = new FileInputStream(ConfigLoader.SERIALIZATION_PATH + "PetriNet_extended" + ".ser");
			ObjectInputStream in = new ObjectInputStream(fileIn);
			g = (Graph<Node, Edge>) in.readObject();
			in.close();
				fileIn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String toWrite = "";
		NavigateGraph nv = new NavigateGraph();
		ImportAttributes tester = new ImportAttributes();
		Collection<Node> nodeCollection = g.getVertices();
		Iterator<Node> nodeCollectionItr = nodeCollection.iterator();
		while (nodeCollectionItr.hasNext()) {
			Node toVisit = nodeCollectionItr.next();
			nv.visitNode(g, 2, toVisit, tester);
			ArrayList<String> attributes = tester.getImportedAttributes();
			ArrayList<String> classes = tester.getImportedClassNames();
			HashMap<String, SumCount> hm = new HashMap<String, SumCount>();
			String newAttributes = "";
			newAttributes += constructHashMapAndNewAttributes(attributes, hm);
			newAttributes += constructHashMapAndNewAttributes(classes, hm);
			newAttributes = averageWeight(newAttributes.trim(), hm);
			
			toWrite += newAttributes +" ";
		}
		toWrite = toWrite.trim();
		
		boolean preparation = false;
		if (preparation) {
			//write file
			try {
				FileWriter fw = new FileWriter("C:/tester.txt");
				BufferedWriter out = new BufferedWriter(fw);
				out.write(toWrite);
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			//confront written file with output
			String toConfront = "";
			try {
			    BufferedReader in = new BufferedReader(new FileReader("C:/tester.txt"));
			    String str = "";
			    while ((str = in.readLine()) != null) {
			        toConfront += str;
			    }
			    in.close();
			} catch (IOException e) {
			}
			System.out.println(toConfront);
			System.out.println(toWrite);
			assertEquals(toConfront, toWrite);
		}
		
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
