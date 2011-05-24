package it.polimi.mdir.graph.visualization;

import java.awt.Dimension;
import java.awt.event.MouseEvent;
import javax.swing.JFrame;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.ConfigLoader;
import it.polimi.mdir.graph.processing.GraphFactory;
import edu.uci.ics.jung.algorithms.layout.KKLayout;
import edu.uci.ics.jung.algorithms.layout.Layout;
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
	
	public static void main(String[] args) {
		
		String fileName = "prova.uml.xml";
		
		Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(GRAPHML_PATH + fileName);
		
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
