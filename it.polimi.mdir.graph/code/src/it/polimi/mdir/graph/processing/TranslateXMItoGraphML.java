package it.polimi.mdir.graph.processing;


import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

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

public class TranslateXMItoGraphML {
	
	private static String XQUERY_PATH = "";
	private static String UML_PATH = "";
	private static String GRAPHML_PATH = "";
	private static int	  nDocs;
	private static File	  currentFile;
	private static String currentDoc = "";
	
	private static void initialization() throws IOException {
		XQUERY_PATH = ConfigLoader.XQUERY_PATH;
		UML_PATH = ConfigLoader.UML_PATH;
		GRAPHML_PATH = ConfigLoader.GRAPHML_PATH;
	}
	
	public static void main(String[] args) throws IOException {
		
		initialization();
		
		File f = new File(UML_PATH);
		File[] files = f.listFiles(new UmlFileFilter());
		nDocs = files.length;
		
        for (int docCount=0; docCount<nDocs; docCount++) {      	
        	currentFile = files[docCount];
        	currentDoc = currentFile.getName();
        	
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
			getEdges("composition", graph, document);
			getEdges("association", graph, document);
			getEdges("generalization", graph, document);
			
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
			//TODO
			//DEBUG CODE --> TO DELETE
			Graph<Node, Edge> g = GraphFactory.createGraphFromGraphML(GRAPHML_PATH + removeExtension(currentDoc)+".gml");
			Collection<Edge> edges = g.getEdges();
			Iterator<Edge> it = edges.iterator();
			while(it.hasNext()) {
				Edge edge = it.next();		
				if(edge.getRelationType().contains("ASSOCIATION") || edge.getRelationType().contains("COMPOSITION")) {
					System.out.println("EDGE ID: " + edge.getId() + " LOWER VALUE: " + edge.getLowerValue() + " UPPER VALUE: " + edge.getUpperValue());
				}
			}
			
			
			//Serialize GraphML file
			try {
				FileOutputStream fileOut = new FileOutputStream(ConfigLoader.SERIALIZATION_PATH + removeExtension(currentDoc)+".ser");
				ObjectOutputStream out = new ObjectOutputStream(fileOut);
				out.writeObject(g);
				out.close();
					fileOut.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
					
        }
        
	}
	
	
	/**
	 * 	Compositions are returned in the format relationId$sourceId$targetId$upperValue-lowerValue
	 * 		if there is NO lowerValue (e.g. "1-" and NOT "1-1") then loweValue = 0
	 *  Associations are returned in the format relationId$sourceId$targetId.
	 *  Generalizations are returned in the format relationId$child$father.
	 *  
	 * @param relation
	 * can be either "composition", "association" or "generalization"
	 * @param graph
	 * @param document
	 */
	private static void getEdges(String relation, Element graph, Document document) {
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
	
	private static String removeExtension(String fileName) {
		return fileName.substring(0,fileName.length()-4);
	}
	
}
