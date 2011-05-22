package it.polimi.mdir.graph.visualization;

import java.awt.Dimension;
import java.awt.event.MouseEvent;
import java.io.File;
import java.util.HashMap;

import javax.swing.JFrame;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.ConfigLoader;
import edu.uci.ics.jung.algorithms.layout.KKLayout;
import edu.uci.ics.jung.algorithms.layout.Layout;
import edu.uci.ics.jung.graph.DirectedSparseMultigraph;
import edu.uci.ics.jung.graph.Graph;
import edu.uci.ics.jung.samples.PluggableRendererDemo;
import edu.uci.ics.jung.visualization.VisualizationViewer;
import edu.uci.ics.jung.visualization.control.CrossoverScalingControl;
import edu.uci.ics.jung.visualization.control.PluggableGraphMouse;
import edu.uci.ics.jung.visualization.control.RotatingGraphMousePlugin;
import edu.uci.ics.jung.visualization.control.ScalingGraphMousePlugin;
import edu.uci.ics.jung.visualization.control.TranslatingGraphMousePlugin;
import edu.uci.ics.jung.visualization.decorators.ToStringLabeller;
import edu.uci.ics.jung.visualization.renderers.Renderer.VertexLabel.Position;

public class GraphVisualizer {

	private static String GRAPHML_PATH = ConfigLoader.GRAPHML_PATH;
	
	//TODO un-static it
	private static HashMap<String, Node> nodeMap = new HashMap<String, Node>();
	
	public static void main(String[] args) {
		
		/*****************///TODO to condense
		String fileName = GRAPHML_PATH + "PluginEclipse.uml" + ".xml";
		
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
		/***************/
		
		//ok now I got g.
		Layout<Node, Edge> layout = new KKLayout<Node, Edge>(g);
		layout.setSize(new Dimension(600,600));
		VisualizationViewer<Node, Edge> v = new VisualizationViewer<Node, Edge>(layout);
		v.setPreferredSize(new Dimension(650,650));
		
		//change appearance
		v.getRenderContext().setVertexLabelTransformer(new ToStringLabeller<Node>());
		v.getRenderer().getVertexLabelRenderer().setPosition(Position.AUTO);
		
		//interaction
		//DefaultModalGraphMouse<Node, Edge> mouse = new DefaultModalGraphMouse<Node, Edge>();
		PluggableGraphMouse mouse = new PluggableGraphMouse();
		mouse.add(new TranslatingGraphMousePlugin(MouseEvent.BUTTON1_MASK));
		mouse.add(new RotatingGraphMousePlugin());
		mouse.add(new ScalingGraphMousePlugin(new CrossoverScalingControl(), 0, 1.1f, 0.9f));
		//mouse.setMode(ModalGraphMouse.Mode.TRANSFORMING);
		v.setGraphMouse(mouse);
		
		//draw JFrame
		JFrame frame = new JFrame("Visualizing: " + fileName);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().add(v);
		frame.pack();
		frame.setVisible(true);
	}
	
	class Popu extends PluggableRendererDemo {
		public PopupGraphMousePlugin p = new PopupGraphMousePlugin();
	}
	
}
