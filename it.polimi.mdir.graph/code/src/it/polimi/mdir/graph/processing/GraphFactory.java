package it.polimi.mdir.graph.processing;

import java.io.File;
import java.util.HashMap;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.GraphUtils.RelationType;
import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;
import edu.uci.ics.jung.graph.DirectedSparseMultigraph;
import edu.uci.ics.jung.graph.Graph;

/**
 * Provides methods for creating graphs.
 */
public class GraphFactory {
	
	private static final Log _log = LogFactory.getLog();
	
	/**
	 * This method creates a graph in memory using the JUNG libraries
	 * starting from a .gml in the GraphML format.
	 * 
	 * @param fileName
	 * The path of the file to convert.
	 * @return
	 * The edu.uci.ics.jung.graph.Graph<Node, Edge> instance. 
	 */
	public static Graph<Node, Edge> createGraphFromGraphML(String fileName) {
		
		HashMap<String, Node> nodeMap = new HashMap<String, Node>();
		Graph<Node, Edge> g = new DirectedSparseMultigraph<Node, Edge>();
		
		try {
			File file = new File(fileName);
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
					n.setClassName(el.getAttribute("className"));					
					
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
					e.setRelationType(elem.getAttribute("relType"));
					
					/*
					 * We need to retrieve also cardinalities stored
					 * in opposite edges. These cardinalities are stored
					 * as attributes of edge elements. Opposite edges for
					 * generalization relations are not considered since
					 * they have no cardinalities at all.
					 */
					if(elem.getAttribute("id").contains("opposite") && !(elem.getAttribute("relType").equals(RelationType.GENERALIZATION_FATHER_CHILD.toString()))) {
						e.setUpperValue(elem.getAttribute("upperValue"));
						e.setLowerValue(elem.getAttribute("lowerValue"));
					} else {
						//set Associated attribute
						NodeList attributeNodes = elem.getElementsByTagName("attribute");
						for (int j = 0; j < attributeNodes.getLength(); j++) {
							org.w3c.dom.Node child = attributeNodes.item(j);
							if (child.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
								Element childElement = (Element) child;
								e.setLowerValue(childElement.getAttribute("lowerValue"));
								e.setUpperValue(childElement.getAttribute("upperValue"));
								e.setAssociatedAttribute(childElement.getFirstChild().getNodeValue());
							}
						}
					}
				}
				g.addEdge(e, nodeMap.get(e.getSourceId()), nodeMap.get(e.getTargetId()));
			}
		} catch (Exception e) {
			_log.write("GraphFactory -> Exception at project: " + fileName);
			e.printStackTrace();
		}
		
		return g;
	}
	
}
