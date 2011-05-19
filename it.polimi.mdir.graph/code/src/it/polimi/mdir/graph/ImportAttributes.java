package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;

import it.polimi.mdir.graph.TranslateXMItoGraphML.RelationType;
import it.polimi.mdir.xquery.XQueryWrapper;


public class ImportAttributes extends OperationFunction {

	public static String allAttributes = "";
	
	@Override
	public void importAttributes(String currentNode, String callerNode, int numHops) {
		
		//Debug lines
		
		//get currentNode Name
		XQueryWrapper xq = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/getClassName.xquery");
		xq.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
		xq.bindVariable("id", currentNode);
		String className = xq.executeQuery().get(0);
		
		//get callernode Name
		XQueryWrapper xq2 = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/getClassName.xquery");
		xq2.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
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
		XQueryWrapper xq3 = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/getAttributes.xquery");
		xq3.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
		xq3.bindVariable("id", currentNode);
		ArrayList<String> vanillaAttributes = xq3.executeQuery();
		Iterator<String> vanillaAttributesIterator = vanillaAttributes.iterator();
		String[] attribute = new String[2];
		String attributeName = "";
		String attributeType = "";
		float weight = 0;
		while (vanillaAttributesIterator.hasNext()) {
			attribute = vanillaAttributesIterator.next().split("\\$");//TODO mettere pesi
			attributeName = attribute[0];
			attributeType = attribute[1];
			weight = WeightRules.weightMap.get(attributeType); //get weight
			
			//get relation type
			//  To get the type of relationship check for the relationship that has
			// 	source = callerNode and target = currentNode
			if (!"attribute".equals(attributeType)) {
				XQueryWrapper xq4 = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery-graph/getRelationType.xquery");
				xq4.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
				xq4.bindVariable("source", callerNode);
				xq4.bindVariable("target", currentNode);
				String relType = xq4.executeQuery().get(0);
			//	scale weight with respect to relation type
				weight = weight * WeightRules.penaltyMap.get(RelationType.valueOf(relType));
				System.out.println(weight);
				attributeName += "|" + weight;
				
				allAttributes += attributeName + " ";
			}
		}
		
		if (numHops == 1) {
			System.out.println(allAttributes);
		}
		
		//2)importo attributi "importati" di "currentNode"
		// guardare nell'edge che ha source=from
		// a seconda del tipo dare una penalità diversa agli attributi che importo
		//pesarli in base al numero di hop
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
}