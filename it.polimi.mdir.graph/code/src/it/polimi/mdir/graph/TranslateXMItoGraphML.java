package it.polimi.mdir.graph;


import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import it.polimi.mdir.xquery.XQueryWrapper;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

public class TranslateXMItoGraphML {
	
	private static final String XQUERY_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/xquery";
	private static final String FILE_PATH = "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/exampledocs/";
	
	public enum RelationType {
	    GENERALIZATION_FATHER_CHILD, GENERALIZATION_CHILD_FATHER,
	    COMPOSITION_COMPOSITE_COMPONENT, COMPOSITION_COMPONENT_COMPOSITE, 
	    ASSOCIATION 
	}
	
	
	public static void main(String[] args) {
		
		final DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
		final Document document = impl.createDocument(null, "graph", null);
		Element graphml = document.createElement("graphml");
		
		//set namespaces
		graphml.setAttribute("xmlns", "http://graphml.graphdrawing.org/xmlns");
		graphml.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
		graphml.setAttribute("xsi:schemaLocation", "http://graphml.graphdrawing.org/xmlnshttp://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd");
		
		//create attributes for nodes and edges
		Element key = document.createElement("key");
		key.setAttribute("id", "relationType");
		key.setAttribute("for", "edge");
		key.setAttribute("attr.name", "relationType");
		key.setAttribute("attr.type", "string");
		graphml.appendChild(key);
		
		Element graph = document.createElement("graph");
		graph.setAttribute("id", "GRAPH"); //TODO usare projectName
		graph.setAttribute("edgedefault", "directed");
		graphml.appendChild(graph);
		
		//get Class Ids
		ArrayList<String> classIdList = new ArrayList<String>(); 
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getClassIds.xquery");
		xq.bindVariable("document", FILE_PATH + "PetriNet_extended.uml");
		classIdList = xq.executeQuery();
		
		for (int i = 0; i < classIdList.size(); i++) {
			Element node = document.createElement("node");
			node.setAttribute("id", classIdList.get(i));
			graph.appendChild(node);
		}
		
		//get edges
		// Compositions are returned in the format sourceId$targetId
		ArrayList<String> compositionList = new ArrayList<String>(); 
		XQueryWrapper xq2 = new XQueryWrapper(XQUERY_PATH + "/getCompositions.xquery");
		xq2.bindVariable("document", FILE_PATH + "PetriNet_extended.uml");
		compositionList = xq2.executeQuery();
		
		for (int i = 0; i < compositionList.size(); i++) {
			String[] split = compositionList.get(i).split("\\$");
			String sourceId = split[0]; 
			String targetId = split[1];
			Element edge = document.createElement("edge");
			edge.setAttribute("id", "composition"+i);
			edge.setAttribute("source", sourceId);
			edge.setAttribute("target", targetId);
				Element data = document.createElement("data");
				data.setAttribute("key", "relationType");
				Text text = document.createTextNode(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString());
				data.appendChild(text);
			edge.appendChild(data);
			graph.appendChild(edge);
		}
		
		//Associations
		// Associations are returned in the format sourceId$targetId
		
		ArrayList<String> associationList = new ArrayList<String>(); 
		XQueryWrapper xq3 = new XQueryWrapper(XQUERY_PATH + "/getAssociations.xquery");
		xq3.bindVariable("document", FILE_PATH + "PetriNet_extended.uml");
		associationList = xq3.executeQuery();
		
		for (int i = 0; i < associationList.size(); i++) {
			String[] split = associationList.get(i).split("\\$");
			String sourceId = split[0]; 
			String targetId = split[1];
			Element edge = document.createElement("edge");
			edge.setAttribute("id", "association"+i);
			edge.setAttribute("source", sourceId);
			edge.setAttribute("target", targetId);
				Element data = document.createElement("data");
				data.setAttribute("key", "relationType");
				Text text = document.createTextNode(RelationType.ASSOCIATION.toString());
				data.appendChild(text);
			edge.appendChild(data);
			graph.appendChild(edge);
		}
		
		
		//Generalizations
		// Generalizations are returned in the format child$father
		
		ArrayList<String> generalizationList = new ArrayList<String>(); 
		XQueryWrapper xq4 = new XQueryWrapper(XQUERY_PATH + "/getGeneralizations.xquery");
		xq4.bindVariable("document", FILE_PATH + "PetriNet_extended.uml");
		generalizationList = xq4.executeQuery();
		
		for (int i = 0; i < generalizationList.size(); i++) {
			String[] split = generalizationList.get(i).split("\\$");
			String sourceId = split[0]; 
			String targetId = split[1];
			Element edge = document.createElement("edge");
			edge.setAttribute("id", "generalization"+i);
			edge.setAttribute("source", sourceId);
			edge.setAttribute("target", targetId);
				Element data = document.createElement("data");
				data.setAttribute("key", "relationType");
				Text text = document.createTextNode(RelationType.GENERALIZATION_CHILD_FATHER.toString());
				data.appendChild(text);
			edge.appendChild(data);
			graph.appendChild(edge);
		}
		
		
		
      //Writes the file
		try {
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			transformerFactory.setAttribute("indent-number", 2);
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			
			StringWriter writer = new StringWriter();
			StreamResult result = new StreamResult(writer);
			DOMSource source = new DOMSource(graphml);
			transformer.transform(source, result);
			
			File file = new File(FILE_PATH + "result.xml");
			FileWriter outputWriter = new FileWriter(file);
			outputWriter.write(writer.toString());
			outputWriter.close();
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
        
	}
	
	
}
