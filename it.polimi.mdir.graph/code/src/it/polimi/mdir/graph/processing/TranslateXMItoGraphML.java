package it.polimi.mdir.graph.processing;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Properties;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.xquery.XQueryWrapper;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.processing.GraphUtils.RelationType;

/**
 * This class Translates an UML Graph in the XMI format (.uml) to 
 * a file in GraphML format (.gml).<br />
 * It also creates the graph with the JUNG API and serializes it (.ser files) 
 * for future use.
 */
public class TranslateXMItoGraphML {
	
	private static final String XQUERY_PATH = "../it.polimi.mdir.graph/xquery/";
	private static String UML_PATH = "";
	private static String GRAPHML_PATH = "";
	private static String SERIALIZATION_PATH = "";
	
	private static void initialization() throws IOException {
		Properties config = new Properties();
		FileInputStream in = new FileInputStream("../it.polimi.mdir.graph/configuration.properties");
		config.load(in);
		UML_PATH = config.getProperty("UML_PATH");
		GRAPHML_PATH = config.getProperty("GRAPHML_PATH");
		SERIALIZATION_PATH = config.getProperty("SERIALIZATION_PATH");
		in.close();
	}
	
	public static void main(String[] args) throws IOException {
		
		initialization();
		
		File f = new File(UML_PATH);
		File[] files = f.listFiles(new UmlFileFilter());
		int nDocs = files.length;
		
        for (int docCount=0; docCount<nDocs; docCount++) {      	
        	File currentFile = files[docCount];
        	String currentDoc = currentFile.getName();
        	
        	System.out.print(docCount + "-> Processing: " + currentDoc);
			
			final DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
			final Document document = impl.createDocument(null, "graph", null);
			Element graphml = document.createElement("graphml");
			
			//Set namespaces
			//graphml.setAttribute("xmlns", "http://graphml.graphdrawing.org/xmlns");
			//graphml.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
			//graphml.setAttribute("xsi:schemaLocation", "http://graphml.graphdrawing.org/xmlnshttp://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd");
				
			//Get Project (Model) Id and Project (Model) Name (format: projectId$projectName)
			ArrayList<String> projectIdAndName = new ArrayList<String>(); 
			XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "getProjectIdAndName.xquery");
			xq.bindVariable("document", UML_PATH + currentDoc);
			projectIdAndName = xq.executeQuery();		
			String projectIdAndNameString  = projectIdAndName.get(0);
			String projectId = projectIdAndNameString.split("\\$")[0];
			String projectName = projectIdAndNameString.split("\\$")[1];
				
			//Create graph element to append to the root element
			Element graph = document.createElement("graph");
			graph.setAttribute("id", projectId);
			graph.setAttribute("edgedefault", "directed");
			graph.setAttribute("projectName", projectName);
			graphml.appendChild(graph);
			
			
			//Get Ids and Names the classes (format: classId$className)
			ArrayList<String> classList = new ArrayList<String>(); 
			XQueryWrapper xq1 = new XQueryWrapper(XQUERY_PATH + "getClassIdsNames.xquery");
			xq1.bindVariable("document", UML_PATH + currentDoc);
			classList = xq1.executeQuery();
			String classId = "";
			String className = "";	
			String attributeName = "";
			
			Iterator<String> itr = classList.iterator();
			while (itr.hasNext()) {
				String classIdName = itr.next();
				classId = classIdName.split("\\$")[0]; 
				className = classIdName.split("\\$")[1];
				Element node = document.createElement("node");
				node.setAttribute("id", classId);
				node.setAttribute("className", className);
				
				// Adding vanilla attributes to node
				XQueryWrapper xq2 = new XQueryWrapper(XQUERY_PATH + "getVanillaAttributes.xquery");
				xq2.bindVariable("document", UML_PATH + currentDoc);
				xq2.bindVariable("classId", classId);
				ArrayList<String> attrList = xq2.executeQuery();
				
				Iterator<String> attrItr = attrList.iterator();
				while (attrItr.hasNext()) {
					attributeName = attrItr.next();					
					Element attribute = document.createElement("attribute");
					attribute.appendChild(document.createTextNode(attributeName));
					node.appendChild(attribute);
				}
				
				graph.appendChild(node);
			}

			//Get edges
			getEdges(currentDoc, "composition", graph, document);
			getEdges(currentDoc, "association", graph, document);
			getEdges(currentDoc, "generalization", graph, document);
			
			writeGMLFile(currentDoc, graphml);
			
			serializeGraph(currentDoc);
				
        }
        
	}
	
	
	/**
	 * 	Compositions are returned in the format relationId$sourceId$targetId$upperValue-lowerValue<br />
	 * 	if there is NO lowerValue (e.g. "1-" and NOT "1-1") then lowerValue = 0 <br />
	 *  Associations are returned in the format relationId$sourceId$targetId.<br />
	 *  Generalizations are returned in the format relationId$child$father.<br />
	 *  
	 * @param currentDoc
	 * the name of the current .uml file. 
	 * @param relation
	 * The type of relationship to retrieve.<br />
	 * It can be either "composition", "association" or "generalization"
	 * @param graph
	 * An Element to which to append the edges.
	 * @param document
	 * An instance of Document to create the Elements
	 */
	private static void getEdges(String currentDoc, String relation, Element graph, Document document) {
		String xquery ="";
		String relationType = "";
		String oppositeRelationType = "";
		if ("composition".equals(relation)) {
			xquery = "getCompositions.xquery";
			relationType = RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString();
			oppositeRelationType = RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString();
		} else
		if ("association".equals(relation)) {
			xquery = "getAssociations.xquery";
			relationType = RelationType.ASSOCIATION.toString();
			oppositeRelationType = RelationType.ASSOCIATION.toString();
		} else
		if ("generalization".equals(relation)) {
			xquery = "getGeneralizations.xquery";
			relationType = RelationType.GENERALIZATION_CHILD_FATHER.toString();
			oppositeRelationType = RelationType.GENERALIZATION_FATHER_CHILD.toString();
		}		
		
		ArrayList<String> relationList = new ArrayList<String>(); 
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + xquery);
		xq.bindVariable("document", UML_PATH + currentDoc);
		relationList = xq.executeQuery();
		
		Iterator<String> relationIterator = relationList.iterator();
		while (relationIterator.hasNext()) {
			String[] split = relationIterator.next().split("\\$");
			String relationId = split[0];
			String sourceId = split[1]; 
			String targetId = split[2];
			// Cardinalities
			String upperValue = "";
			String lowerValue = "";
			if(relation != "generalization") {
				/*
				 * The length of the array containing cardinalities can be:
				 * - 1 (lowerValue = 0)
				 * - 2 (lowerValue = cardinalities[1])
				 */
				String[] cardinalities = split[3].split("\\-");
				
				upperValue = cardinalities[0];
				lowerValue = "";
				if(cardinalities.length == 1) {
					lowerValue = "0";
				} else {
					lowerValue = cardinalities[1];
				}	
			}
			
			Element edge = document.createElement("edge");
			edge.setAttribute("id", relationId);
			edge.setAttribute("source", sourceId);
			edge.setAttribute("target", targetId);
			edge.setAttribute("relType", relationType);
			//get attributes of that relation
			XQueryWrapper xq2 = new XQueryWrapper(XQUERY_PATH + "getRelationAttributes.xquery");
			xq2.bindVariable("document", UML_PATH + currentDoc);
			xq2.bindVariable("relationId", relationId);
			ArrayList<String> relationAttributesList = xq2.executeQuery();
			Iterator<String> itr = relationAttributesList.iterator();
			while (itr.hasNext()) {
				Element attribute = document.createElement("attribute");
				if (relation != "generalization") {
					attribute.setAttribute("lowerValue", lowerValue);
					attribute.setAttribute("upperValue", upperValue);
				}
				attribute.appendChild(document.createTextNode(itr.next()));
				edge.appendChild(attribute);
			}
			
			//Retrieving "opposite cardinalities"
			String oppositeUpperValue = "";
			String oppositeLowerValue = "";
			
			if(relation != "generalization") {
				XQueryWrapper xq3 = new XQueryWrapper(XQUERY_PATH + "getOppositeCardinalities.xquery");
				xq3.bindVariable("document", UML_PATH + currentDoc);
				xq3.bindVariable("relationId", relationId);
				String[] oppositeCardinalities = xq3.executeQuery().get(0).split("\\-");

				if(relation != "generalization") {
					/*
					 * The length of the array containing opposite cardinalities can be:
					 * - 1 (lowerValue = 0)
					 * - 2 (lowerValue = cardinalities[1])
					 */
					
					oppositeUpperValue = oppositeCardinalities[0];
					oppositeLowerValue = "";
					if(oppositeCardinalities.length == 1) {
						oppositeLowerValue = "0";
					} else {
						oppositeLowerValue = oppositeCardinalities[1];
					}	
				}
			}
			//Create the opposite edge
			Element edgeOpposite = document.createElement("edge");
			edgeOpposite.setAttribute("id", relationId + "-opposite");
			edgeOpposite.setAttribute("source", targetId);
			edgeOpposite.setAttribute("target", sourceId);
			edgeOpposite.setAttribute("relType", oppositeRelationType);
			if (relation != "generalization") {
				edgeOpposite.setAttribute("lowerValue", oppositeLowerValue);
				edgeOpposite.setAttribute("upperValue", oppositeUpperValue);
			}
			
			graph.appendChild(edge);
			graph.appendChild(edgeOpposite);
			
		}
	}
	
	/**
	 * Writes the correctly indentated .gml file on disk
	 * @param currentDoc
	 * the name of the current .uml file.
	 * @param root
	 * The root Element of the document
	 */
	private static void writeGMLFile(String currentDoc, Element root) {
		try {
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			transformerFactory.setAttribute("indent-number", 2);
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			
			StringWriter writer = new StringWriter();
			StreamResult result = new StreamResult(writer);
			DOMSource source = new DOMSource(root);
			transformer.transform(source, result);
			
			String outputName = GRAPHML_PATH + removeExtension(currentDoc) + ".gml";
			File resultFile = new File(outputName);
			FileWriter outputWriter = new FileWriter(resultFile);
			outputWriter.write(writer.toString());
			outputWriter.close();
			
			System.out.println("...DONE!");
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
	
	/**
	 * First it creates a graph in memory with the JUNG libraries.<br /> 
	 * Then it serializes it.
	 * @param currentDoc
	 * the name of the current .uml file.
	 */
	private static void serializeGraph(String currentDoc) {
		Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(GRAPHML_PATH + removeExtension(currentDoc)+".gml");
		
		try {
			FileOutputStream fileOut = new FileOutputStream(SERIALIZATION_PATH + removeExtension(currentDoc)+".ser");
			ObjectOutputStream out = new ObjectOutputStream(fileOut);
			out.writeObject(g);
			out.close();
			fileOut.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * This method removes 3 letter extensions (including the dot) from a string.
	 * @param fileName
	 * The string to which the extension will be removed
	 * @return
	 * The string without its extension.
	 */
	private static String removeExtension(String fileName) {
		return fileName.substring(0,fileName.length()-4);
	}
	
}
