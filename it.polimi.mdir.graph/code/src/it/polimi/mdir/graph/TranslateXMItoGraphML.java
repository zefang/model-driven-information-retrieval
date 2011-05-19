package it.polimi.mdir.graph;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Properties;

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
	
	private static String XQUERY_PATH = "";
	private static String FILE_PATH = "";
	private static String RESULT_PATH = "";
	private static int	  nDocs;
	private static File	  currentFile;
	private static String currentDoc = "";
	
	public enum RelationType {
	    GENERALIZATION_FATHER_CHILD, GENERALIZATION_CHILD_FATHER,
	    COMPOSITION_COMPOSITE_COMPONENT, COMPOSITION_COMPONENT_COMPOSITE, 
	    ASSOCIATION 
	}
	
	private static void initialization() throws IOException {
		
		// Configuration file
		Properties config = new Properties();
		FileInputStream in = new FileInputStream("configuration.properties");
		config.load(in);
		in.close();

		XQUERY_PATH = config.getProperty("XQUERY_PATH");
		FILE_PATH = config.getProperty("FILE_PATH");
		RESULT_PATH = config.getProperty("RESULT_PATH");
		
		
	}
	
	public static void main(String[] args) throws IOException {
		
		initialization();
		
		File f = new File(FILE_PATH);
		nDocs = f.listFiles().length;
		File[] files = f.listFiles();
		
        for (int docCount=0; docCount<nDocs; docCount++) {      	
        	
        	currentFile = files[docCount];
        	                  
        	if (!currentFile.isFile()) { 		
        		docCount++;
        		currentFile = files[docCount];
        	}
        	
        	currentDoc = currentFile.getName();
			
			final DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
			final Document document = impl.createDocument(null, "graph", null);
			Element graphml = document.createElement("graphml");
			
			//Set namespaces
			//graphml.setAttribute("xmlns", "http://graphml.graphdrawing.org/xmlns");
			//graphml.setAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
			//graphml.setAttribute("xsi:schemaLocation", "http://graphml.graphdrawing.org/xmlnshttp://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd");
				
			//Get Project (Model) Id and Project (Model) Name (format: projectId$projectName)
			ArrayList<String> projectIdAndName = new ArrayList<String>(); 
			XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "/getProjectIdAndName.xquery");
			xq.bindVariable("document", FILE_PATH + "/" + currentDoc);
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
			
			//Get Ids, Name and Attributes ot the class (format: classId$className$attributeName)
			ArrayList<String> complexList = new ArrayList<String>(); 
			XQueryWrapper xq1 = new XQueryWrapper(XQUERY_PATH + "/getClassIdsNamesAttributes.xquery");
			xq1.bindVariable("document", FILE_PATH + "/" + currentDoc);
			complexList = xq1.executeQuery();
			String complexString = "";
			String classId = "";
			String className = "";	
			String attributeString = "";
			
			int countAttributes = 0;
			while(countAttributes < complexList.size()) {
				Element node = document.createElement("node");
				complexString = complexList.get(countAttributes);
				classId = complexString.split("\\$")[0]; 
				className = complexString.split("\\$")[1];
				node.setAttribute("id", classId);		
					Element classNameElement = document.createElement("className");
					classNameElement.appendChild(document.createTextNode(className));
					node.appendChild(classNameElement);
				//Adding attributes to node
				while(countAttributes < complexList.size() && complexString.contains(classId)) {
					attributeString = complexString.split("\\$")[2];
					
					Element attribute = document.createElement("attribute");
					Text attributeText = document.createTextNode(attributeString);
					attribute.appendChild(attributeText);
					node.appendChild(attribute);
					
					countAttributes++;
					if(countAttributes < complexList.size())
						complexString = complexList.get(countAttributes);
				}		
				graph.appendChild(node);
			}
			
			//Get edges
			
			//Compositions are returned in the format sourceId$targetId
			ArrayList<String> compositionList = new ArrayList<String>(); 
			XQueryWrapper xq2 = new XQueryWrapper(XQUERY_PATH + "/getCompositions.xquery");
			xq2.bindVariable("document", FILE_PATH + "/" + currentDoc);
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
				
				//Create the opposite edge
				Element edgeOpposite = document.createElement("edge");
				edgeOpposite.setAttribute("id", "composition"+i+"-opposite");
				edgeOpposite.setAttribute("source", targetId);
				edgeOpposite.setAttribute("target", sourceId);
					Element dataOpposite = document.createElement("data");
					dataOpposite.setAttribute("key", "relationType");
					Text textOpposite = document.createTextNode(RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString());
					dataOpposite.appendChild(textOpposite);
				edgeOpposite.appendChild(dataOpposite);
				
				graph.appendChild(edge);
				graph.appendChild(edgeOpposite);
			}
			
			//Associations
			//Associations are returned in the format sourceId$targetId
			ArrayList<String> associationList = new ArrayList<String>(); 
			XQueryWrapper xq3 = new XQueryWrapper(XQUERY_PATH + "/getAssociations.xquery");
			xq3.bindVariable("document", FILE_PATH + "/" + currentDoc);
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
		
				//Create the opposite edge
				Element edgeOpposite = document.createElement("edge");
				edgeOpposite.setAttribute("id", "association"+i+"-opposite");
				edgeOpposite.setAttribute("source", targetId);
				edgeOpposite.setAttribute("target", sourceId);
					Element dataOpposite = document.createElement("data");
					dataOpposite.setAttribute("key", "relationType");
					Text textOpposite = document.createTextNode(RelationType.ASSOCIATION.toString());
					dataOpposite.appendChild(textOpposite);
				edgeOpposite.appendChild(dataOpposite);				
					
					
				graph.appendChild(edge);
				graph.appendChild(edgeOpposite);
	
			}
			
			
			//Generalizations
			//Generalizations are returned in the format child$father
			ArrayList<String> generalizationList = new ArrayList<String>(); 
			XQueryWrapper xq4 = new XQueryWrapper(XQUERY_PATH + "/getGeneralizations.xquery");
			xq4.bindVariable("document", FILE_PATH + "/" + currentDoc);
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
				
				//Create the opposite edge
				Element edgeOpposite = document.createElement("edge");
				edgeOpposite.setAttribute("id", "generalization"+i+"-opposite");
				edgeOpposite.setAttribute("source", targetId);
				edgeOpposite.setAttribute("target", sourceId);
					Element dataOpposite = document.createElement("data");
					dataOpposite.setAttribute("key", "relationType");
					Text textOpposite = document.createTextNode(RelationType.GENERALIZATION_FATHER_CHILD.toString());
					dataOpposite.appendChild(textOpposite);
				edgeOpposite.appendChild(dataOpposite);
				
				graph.appendChild(edge);
				graph.appendChild(edgeOpposite);
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
				
				File resultFile = new File(RESULT_PATH + "/" + currentDoc + ".xml");
				FileWriter outputWriter = new FileWriter(resultFile);
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
	
	
}
