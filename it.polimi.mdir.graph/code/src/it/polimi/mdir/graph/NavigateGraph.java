package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

import it.polimi.mdir.xquery.XQueryWrapper;

public class NavigateGraph {

	
	private static final String XQUERY_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery";
	private static final String FILE_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/exampledocs/"; 
	
	private static final int MAX_HOPS = 1;
	
	public static void main(String[] args) {
		
		//Get all nodes
		ArrayList<String> nodeList = new ArrayList<String>();
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNodeIds.xquery");
		xq.bindVariable("document", FILE_PATH + "result.xml"); //TODO ciclare
		nodeList = xq.executeQuery();
		
		// for each node get its neighbours
		for (String nodeId : nodeList)  {
			//adding in the queue
			LinkedList<String> neighboursQueue = new LinkedList<String>();
			ArrayList<String> neighboursList = getNeighbours(nodeId);
			Iterator<String> itr = neighboursList.iterator();
			while (itr.hasNext()) {
				neighboursQueue.add(itr.next());
			}

			//TODO visit the node
			
			//visit the neighbours
			for (String neighbourId : neighboursQueue) {
				//TODO import attributes in the starting node
			}
			
			
		}
	}
	
	private static ArrayList<String> getNeighbours(String nodeId) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getNeighbours.xquery");
		xq.bindVariable("document", FILE_PATH + "result.xml"); //TODO ciclare
		xq.bindVariable("nodeId", nodeId);
		return xq.executeQuery();
	}

}
