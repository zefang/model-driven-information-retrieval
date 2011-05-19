package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;

import it.polimi.mdir.graph.TranslateXMItoGraphML.RelationType;
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
		
		 getVanillaAttributes(currentNode);
		 getRelationAttributes(currentNode);
		 
		 
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
	
	
	private void getRelationAttributes(String currentNode) {
		//get relations of the current node (i.e, edges that have sorceId = currentNode)
		//But only the ones that have at least one attribute
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationIds.xquery");
		xq.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq.bindVariable("source", currentNode);
		ArrayList<String> relationIdsList = xq.executeQuery();
		Iterator<String> relationIdsIterator = relationIdsList.iterator();
		while (relationIdsIterator.hasNext()) {
			//for every relation, given the relation id, we extract its attributes
			//they get returned in the format attributeName$relationType
			XQueryWrapper xq2 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationAttributes.xquery");
			xq2.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
			xq2.bindVariable("relationId", relationIdsIterator.next());
			ArrayList<String> relationAttributesList = xq2.executeQuery();
			Iterator<String> relationAttributesIterator = relationAttributesList.iterator();
			String[] relationAttributes = new String[2];
			String relationAttributeName = "";
			String relationAttributeType = "";
			while (relationAttributesIterator.hasNext()) {
				relationAttributes = relationAttributesIterator.next().split("\\$");
				relationAttributeName = relationAttributes[0];
				relationAttributeType = relationAttributes[1];
				String relType = null;
				if (relationAttributeType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString())) {
					relType = "composition";
				} else if (relationAttributeType.equals(RelationType.ASSOCIATION.toString())) {
					relType = "association";
				}
				float weight = WeightRules.weightMap.get(relType);
				relationAttributeName += "|" + weight;
				importedAttributes.add(relationAttributeName);
			}
			
		}
	}


	//1) importo attributi vanilla da "currentNode". 
	//pesarli in base al numero di hop
	//if numHop==1 -> no penalty perchè sono nel nodo di partenza
	//else multiply all normal weights by the penalty given by the type of relationship between currentNode and callerNode
	private void getVanillaAttributes(String currentNode) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getVanillaAttributes.xquery");
		xq.bindVariable("document", RESULTS_PATH + "PetriNet_extended.uml.xml");
		xq.bindVariable("id", currentNode);
		ArrayList<String> vanillaAttributes = xq.executeQuery();
		Iterator<String> vanillaAttributesIterator = vanillaAttributes.iterator();
		String attributeName = "";
		while (vanillaAttributesIterator.hasNext()) {
			attributeName = vanillaAttributesIterator.next();
			float weight = WeightRules.weightMap.get("attribute"); //get weight
			attributeName += "|" + weight;
			importedAttributes.add(attributeName);
		}
	}
	
}