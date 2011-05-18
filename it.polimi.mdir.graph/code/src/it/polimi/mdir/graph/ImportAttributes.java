package it.polimi.mdir.graph;


public class ImportAttributes extends OperationFunction {

	public static String attributes = "";
	
	@Override
	public void importAttributes(String from, String rootNode) {
		
		System.out.println("I'm importing the attributes from "+ from +" to: " + rootNode);
		attributes += "!";
		System.out.println(attributes);
		
		//la stringa attributes viene riempita mano a mano dagli attributi da importare
		
		//1) importo attributi vanilla da "from". 
		//pesarli in base al numero di hop
		//if numHop==0 -> no penalty 
		//else multiply all normal weights by the penalty given by the type of relationship
		//(same for following attributes)
		
		//2)importo attributi "importati" di "from"
		// guardare nell'edge che ha source=from
		// a seconda del tipo dare una penalità diversa agli attributi che importo
		//pesarli in base al numero di hop
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
}