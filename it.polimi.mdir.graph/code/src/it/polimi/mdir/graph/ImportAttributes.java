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
		
		//2)importo attributi "importati" di "from"
		// guardare nell'edge che ha souce=from
		// a seconda del tipo dare una penalità diversa agi attributi che importo
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
}