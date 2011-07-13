package it.polimi.mdir.uml;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.ConfigLoader;
import it.polimi.mdir.graph.processing.GraphFactory;
import it.polimi.mdir.graph.processing.ImportAttributes;
import it.polimi.mdir.graph.processing.NavigateGraph;
import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

import edu.uci.ics.jung.graph.Graph;

public class GraphNavigationPipelet implements Pipelet {

	private static final String MAX_HOPS = "maxHops";
	private int _maxHops = 2; //Default MAX_HOP value
	
	private final Log _log = LogFactory.getLog();
	
	private AnyMap _configuration;
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		if (_configuration.containsKey(MAX_HOPS)) {
			_maxHops = Integer.valueOf(_configuration.getStringValue(MAX_HOPS));
		}
	}
	
	
	private static int count = 0;
	
	@SuppressWarnings("unchecked")
	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		for (String id : recordIds)  {
			String className = "";
			String fileName = "";
			try {
				Record rec = blackboard.getRecord(id);
				className = rec.getMetadata().getStringValue("className");
				String classId = rec.getMetadata().getStringValue("classId");
				fileName = rec.getMetadata().getStringValue("FileName");
				fileName = fileName.substring(0, fileName.length()-4);
				
				System.out.println("Start D " +  ++count + " -> " + className);
				
				//Graph<Node, Edge> g = GraphCollection.graphMap.get(fileName + ".gml");
				//g.clone() sarebbe l'ideale però  non c'è quindi...
				Graph<Node, Edge> g = null;
				try {
					FileInputStream fileIn = new FileInputStream(ConfigLoader.SERIALIZATION_PATH +fileName + ".ser");
					ObjectInputStream in = new ObjectInputStream(fileIn);
					g = (Graph<Node, Edge>) in.readObject();
					in.close();
						fileIn.close();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				Collection<Node> nodes = g.getVertices();
				Iterator<Node> nodeItr = nodes.iterator();
				Node toVisit = null;
				while (nodeItr.hasNext()) {
					Node n = nodeItr.next();
					if (n.getId().equals(classId)) {
						toVisit = n;
						break;
					}
				}
				
				NavigateGraph nv = new NavigateGraph();
				ImportAttributes function = new ImportAttributes();
				nv.visitNode(g, _maxHops, toVisit, function);
				ArrayList<String> attributes = function.getImportedAttributes();
				ArrayList<String> classes = function.getImportedClassNames();
				HashMap<String, SumCount> hm = new HashMap<String, SumCount>();
				String newAttributes = "";
				newAttributes += constructHashMapAndNewAttributes(attributes, hm);
				newAttributes += constructHashMapAndNewAttributes(classes, hm);
				newAttributes = averageWeight(newAttributes.trim(), hm);
				
				//copia tutto, anche gli importati,  nel campo attributeNames
				rec.getMetadata().put("attributeNames", newAttributes.trim());
				blackboard.setRecord(rec);
				
				//blackboard.commit();
				System.out.println(className +": TUTTO OK");
				System.out.println("END: " + count);
				
			} catch (Exception e) { //BlackboardAccessException
				_log.write("D -> Exception at record: " + className + "of project "+ fileName);
				e.printStackTrace();
			}
		}
		
		return recordIds;
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
