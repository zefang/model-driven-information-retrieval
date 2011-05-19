package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;

import it.polimi.mdir.xquery.XQueryWrapper;


public class ImportAttributes extends OperationFunction {

	private static final String XQUERY_GRAPH_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/";
	private static final String RESULTS_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/";
	
	private static ArrayList<String> importedAttributes = new ArrayList<String>();
	
	@Override
	public void importAttributes(String currentNode, String callerNode, int numHops) {
		
		//Debug lines
		
		//get currentNode Name
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getClassName.xquery");
		xq.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq.bindVariable("id", currentNode);
		String className = xq.executeQuery().get(0);
		
		//get callernode Name
		XQueryWrapper xq2 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getClassName.xquery");
		xq2.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq2.bindVariable("id", callerNode);
		String callerName = xq2.executeQuery().get(0);
		System.out.println("This is " + className + " called from: " + callerName);
		
		
		/*************************************/
		//implementation begins
		
		//1) importo attributi vanilla da "currentNode". 
		//pesarli in base al numero di hop
		//if numHop==1 -> no penalty perchè sono nel nodo di partenza
		//else multiply all normal weights by the penalty given by the type of relationship between currentNode and callerNode
		//(same for attributes at number 2) )
		XQueryWrapper xq3 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getAttributes.xquery");
		xq3.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq3.bindVariable("id", currentNode);
		ArrayList<String> vanillaAttributes = xq3.executeQuery();
		Iterator<String> vanillaAttributesIterator = vanillaAttributes.iterator();
		String[] attribute = new String[2];
		String attributeName = "";
		String attributeType = "";
		while (vanillaAttributesIterator.hasNext()) {
			attribute = vanillaAttributesIterator.next().split("\\$");
			attributeName = attribute[0];
			attributeType = attribute[1];
			float weight = WeightRules.weightMap.get(attributeType); //get weight
			attributeName += "|" + weight;
			importedAttributes.add(attributeName);
		}

		//get relations of the current node (i.e, edges that have sorceId = currentNode)
		XQueryWrapper xq4 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationIds.xquery");
		xq4.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq4.bindVariable("source", currentNode);
		ArrayList<String> relationIdsList = xq4.executeQuery();
		Iterator<String> relationIdsIterator = relationIdsList.iterator();
		while (relationIdsIterator.hasNext()) {
			//for every relation, given the relation id, we extract its attributes
			XQueryWrapper xq5 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationAttributes.xquery");
			xq5.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
			xq5.bindVariable("relationId", relationIdsIterator.next());
			ArrayList<String> relationAttributesList = xq5.executeQuery();
			Iterator<String> relationAttributesIterator = relationAttributesList.iterator();
			while (relationAttributesIterator.hasNext()) {
				importedAttributes.add(relationAttributesIterator.next()); //TODO weights
			}
			
		}
		
		//get relation type and its attributes
		//  To get the type of relationship check for the relationship that has
		// 	source = callerNode and target = currentNode
		/*
		XQueryWrapper xq6 = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/getRelationType.xquery");
		xq6.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
		xq6.bindVariable("source", callerNode);
		xq6.bindVariable("target", currentNode);
		String relType = xq6.executeQuery().get(0);
		if (relType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT)) {
			attributeType = "composition";
		} else if (relType.equals(RelationType.ASSOCIATION)) {
			attributeType = "association";
		}
		//getWeights
		float weight = WeightRules.weightMap.get(attributeType);
		System.out.println(weight);
*/
		
		if (numHops == 1) {
			Iterator<String> itr = importedAttributes.iterator();
			while (itr.hasNext()) {
				System.out.println(itr.next());	
			}
			
		}
		
		//2)importo attributi "importati" di "currentNode"
		// guardare nell'edge che ha source=from
		// a seconda del tipo dare una penalità diversa agli attributi che importo
		//pesarli in base al numero di hop
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
}