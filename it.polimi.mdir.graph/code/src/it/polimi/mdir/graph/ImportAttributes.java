package it.polimi.mdir.graph;

import it.polimi.mdir.xquery.XQueryWrapper;


public class ImportAttributes extends OperationFunction {

	public static String attributes = "";
	
	@Override
	public void importAttributes(String currentNode, String callerNode) {
		
		XQueryWrapper xq = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquerytry/getClassName.xquery");
		xq.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/result/PetriNet_extended.uml.xml");
		xq.bindVariable("id", currentNode);
		System.out.println(currentNode);
		String className = xq.executeQuery().get(0);
		System.out.println("This is " + className + " called from: " + callerNode);
		attributes += "!";
		System.out.println(attributes);
		
		//la stringa attributes viene riempita mano a mano dagli attributi da importare
		
		//1) importo attributi vanilla da "currentNode". 
		//pesarli in base al numero di hop
		//if numHop==0 -> no penalty 
		//else multiply all normal weights by the penalty given by the type of relationship
		// To get the type of relationship check for the relationship that has
		// 	source = callerNode and target = currentNode
		//(same for following attributes)
		
		//2)importo attributi "importati" di "currentNode"
		// guardare nell'edge che ha source=from
		// non considerare il nodo da cui sono arrivato.
		// a seconda del tipo dare una penalità diversa agli attributi che importo
		//pesarli in base al numero di hop
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
}