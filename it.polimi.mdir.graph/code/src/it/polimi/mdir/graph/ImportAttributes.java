package it.polimi.mdir.graph;

public class ImportAttributes extends OperationFunction {

	@Override
	public void importAttributes(String from, String rootNode) {
		
		System.out.println("I'm importing the attributes from "+ from +" to: " + rootNode);
		
		if (from.equals(rootNode)) {
			//Sono nel nodo originale, 
			//importo gli attributi vanilla
		} else {
			//1)retrieve vanilla attributes from "from"
			
			//2)importo attributi "importati" di "from"
			// guardare nell'edge che ha souce=root e target=from
			// a seconda del tipo dare una penalità diversa agi attributi che importo
			
			//TODO attenzione! quello qui sopra non va bene!
			// magari from e root non sono connessi!!! 
			//										quindi rootNode non serve?
			//										usare una  variabile che si "ingrossa"?
			//
			// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
			// se non lo facciamo è sbagliatissimo o cambia poco?
		}
	}
	
}