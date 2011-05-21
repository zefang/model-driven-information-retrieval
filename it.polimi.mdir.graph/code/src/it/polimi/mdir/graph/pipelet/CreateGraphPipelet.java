package it.polimi.mdir.graph.pipelet;
import java.io.File;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.ConfigLoader;
import it.polimi.mdir.graph.processing.GraphCollection;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import edu.uci.ics.jung.graph.DirectedSparseMultigraph;
import edu.uci.ics.jung.graph.Graph;


/**
 * @author Lorenzo Furrer
 *
 *	This pipelet serves the purpose of creating an instance of a graph in memory.
 *  Given a record corresponding to a project it will create its graph with JUNG
 *  and the instance created will be added to the GraphCollection to store it.
 *	
 */
public class CreateGraphPipelet implements Pipelet {

	private HashMap<String, Node> nodeMap = new HashMap<String, Node>();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		for (String id : recordIds) {
			
			try {
				String fileName = blackboard.getRecord(id).getMetadata().getStringValue("FileName");
				fileName += ".xml";
				
				Graph<Node, Edge> g = new DirectedSparseMultigraph<Node, Edge>();
				
				try {
					File file = new File(ConfigLoader.GRAPHML_PATH + fileName);
					DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
					DocumentBuilder db = dbf.newDocumentBuilder();
					Document doc = db.parse(file);
					NodeList nodeList = doc.getElementsByTagName("node");
					for (int i = 0; i < nodeList.getLength(); i++) {
						Node n = new Node();
						org.w3c.dom.Node node = nodeList.item(i);
						if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
							Element el = (Element) node;
							n.setId(el.getAttribute("id")); //set class id
							
							//set class name
							NodeList childNodes = el.getElementsByTagName("className");
							for (int j = 0; j < childNodes.getLength(); j++) {
								org.w3c.dom.Node child = childNodes.item(j);
								if (child.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
									Element childElement = (Element) child;
									n.setClassName(childElement.getFirstChild().getNodeValue());
								}
							}
							
							//set attributes
							NodeList attributeNodes = el.getElementsByTagName("attribute");
							for (int j = 0; j < attributeNodes.getLength(); j++) {
								org.w3c.dom.Node child = attributeNodes.item(j);
								if (child.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
									Element childElement = (Element) child;
									n.addAttribute(childElement.getFirstChild().getNodeValue());
								}
							}
						}
						nodeMap.put(n.getId(), n);
						g.addVertex(n);
					}
					
					//get edges
					NodeList edgeList = doc.getElementsByTagName("edge");
					for (int i = 0; i < edgeList.getLength(); i++) {
						Edge e = new Edge();
						org.w3c.dom.Node node = edgeList.item(i);
						if (node.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
							Element elem = (Element) node;
							e.setId(elem.getAttribute("id"));
							e.setSourceId(elem.getAttribute("source"));
							e.setTargetId(elem.getAttribute("target"));
							
							//set relationtype
							NodeList childNodes = elem.getElementsByTagName("relType");
							for (int j = 0; j < childNodes.getLength(); j++) {
								org.w3c.dom.Node child = childNodes.item(j);
								if (child.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
									Element childElement = (Element) child;
									e.setRelationType(childElement.getFirstChild().getNodeValue());
								}
							}
							
							//set relationtype
							NodeList attributeNodes = elem.getElementsByTagName("attribute");
							for (int j = 0; j < attributeNodes.getLength(); j++) {
								org.w3c.dom.Node child = attributeNodes.item(j);
								if (child.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
									Element childElement = (Element) child;
									e.setAssociatedAttribute(childElement.getFirstChild().getNodeValue());
								}
							}
						}
						g.addEdge(e, nodeMap.get(e.getSourceId()), nodeMap.get(e.getTargetId()));
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				GraphCollection.graphMap.put(fileName, g);
				
			} catch (BlackboardAccessException e) {
				e.printStackTrace();
			}
			
		}
		
		return recordIds;
	}

}
