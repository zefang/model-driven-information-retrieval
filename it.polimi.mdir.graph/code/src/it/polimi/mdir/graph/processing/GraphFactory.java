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
import edu.uci.ics.jung.graph.DirectedSparseMultigraph;
import edu.uci.ics.jung.graph.Graph;

public class GraphFactory {
	
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
		
		return g;
	}
	
}
