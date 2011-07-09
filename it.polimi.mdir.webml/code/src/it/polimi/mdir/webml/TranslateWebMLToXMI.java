package it.polimi.mdir.webml;

import it.polimi.mdir.webml.ConfigLoader;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.apache.xerces.dom.ParentNode;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class TranslateWebMLToXMI {
	
	private static String PACKAGED_ELEMENT = "packagedElement";
	
	private static String WEBML_PATH = "";
	private static String OUTPUT_PATH = "";
	private static int numProjects = 0;
	
	private static Document outputDocument = null;
	private static Element webmlProject = null;
	
	private static void initialization() throws IOException {
		WEBML_PATH = ConfigLoader.WEBML_PATH;
		OUTPUT_PATH = ConfigLoader.OUTPUT_PATH;
		
		DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
		outputDocument = impl.createDocument(null, "webml", null);
		webmlProject = outputDocument.createElement("webml:Project");
		
		webmlProject.setAttribute("xmlns:xmi", "http://schema.omg.org/spec/XMI/2.1");
		webmlProject.setAttribute("xmlns:webml", "http://www.webml.org");
		webmlProject.setAttribute("xmi:version", "2.1");
			
	}
	
	public static void main(String[] args) throws IOException {
		
		initialization();
		
		File webmlPath = new File(WEBML_PATH);
		File[] projects = webmlPath.listFiles();
		numProjects = projects.length;
		
		for (int i = 0; i < numProjects; i++) {
			processProject(projects[i]);
		}
		
	}
	
	private static void processProject(File project) {
		String projectName = project.getName();
		
		webmlProject.setAttribute("xmi:id", projectName);
		webmlProject.setAttribute("name", projectName);
		
		processDataModel(projectName, webmlProject);
		processWebModel(projectName, webmlProject);
		
		writeToFile(webmlProject);
	}
	
	private static void processDataModel(String projectName, Element parentNode) {
		File dataModelProperties = new File(WEBML_PATH + projectName + "/Model/DataModel/Properties.wr");
		
		Element dataModelNode = outputDocument.createElement(PACKAGED_ELEMENT);
			dataModelNode.setAttribute("xmi:type", "webml:DataModel");
			dataModelNode.setAttribute("xmi:id", "DataModel");
			dataModelNode.setAttribute("name", "DataModel");
		parentNode.appendChild(dataModelNode);
		
		//I take Entity and their Attribute, 
		//I don't care about Relationships
		
		Document doc = generateNewDocInstance(dataModelProperties);
			
		NodeList entities = doc.getElementsByTagName("Entity");
		for (int i = 0; i < entities.getLength(); i++) {
			Node entity = entities.item(i);
				
			//get id and name attributes
			if (entity.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
				Element ent = (Element) entity;
				String id = ent.getAttribute("id");
				String name = ent.getAttribute("name");
					
				Element entityNode = addEntity(id, name, dataModelNode);
				
				//get the Attributes of the Entity
				NodeList attributes = ent.getElementsByTagName("Attribute");
				for (int j = 0; j < attributes.getLength(); j++) {
					Node attribute = attributes.item(j);
					if (attribute.getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
						Element att = (Element) attribute;
						String attrId = att.getAttribute("id");
						String attrName = att.getAttribute("name");
						
						addAttribute(attrId, attrName, entityNode);
					}
				}
			}
		}
		
		
	}
	
	private static Element addEntity(String id, String name, Element parentNode) {
		System.out.println("Added Entity id:"+ id + " name:" +name);
		Element entityNode = outputDocument.createElement(PACKAGED_ELEMENT);
			entityNode.setAttribute("xmi:type", "webml:Entity");
			entityNode.setAttribute("xmi:id", id);
			entityNode.setAttribute("name", name);
		parentNode.appendChild(entityNode);
		return entityNode;
	}

	private static void addAttribute(String id, String name, Element parentNode) {
		System.out.println("	Added Attribute id:"+ id + " name:" +name);
		Element attributeNode = outputDocument.createElement(PACKAGED_ELEMENT);
			attributeNode.setAttribute("xmi:type", "webml:Attribute");
			attributeNode.setAttribute("xmi:id", id);
			attributeNode.setAttribute("name", name);
		parentNode.appendChild(attributeNode);
	}
	
	private static Element addSiteView(String id, String name, Element parentNode) {
		System.out.println("Added SiteView id:"+ id + " name:" +name);
		Element siteViewNode = outputDocument.createElement(PACKAGED_ELEMENT);
			siteViewNode.setAttribute("xmi:type", "webml:SiteView");
			siteViewNode.setAttribute("xmi:id", id);
			siteViewNode.setAttribute("name", name);
		parentNode.appendChild(siteViewNode);
		return siteViewNode;
	}
	
	private static Element addOperationUnit(String id, String name, String type, String displayAttributes, String entity, Element parentNode) {
		System.out.println("Added OperationUnit id:"+ id + " name:" + name + " type: "+ type);
		Element operationUnitNode = outputDocument.createElement(PACKAGED_ELEMENT);
			operationUnitNode.setAttribute("xmi:type", "webml:"+type);
			operationUnitNode.setAttribute("xmi:id", id);
			operationUnitNode.setAttribute("name", name);
			if (!displayAttributes.equals("")) { //TODO attenzione
				operationUnitNode.setAttribute("displayAttributes", displayAttributes);	
			}
			if (!entity.equals("")) {
				operationUnitNode.setAttribute("entity", entity);
			}
		parentNode.appendChild(operationUnitNode);
		return operationUnitNode;
	}
	
	private static Element addPage(String id, String name, Element parentNode) {
		System.out.println("Added Page id:"+ id + " name:" +name);
		Element pageNode = outputDocument.createElement(PACKAGED_ELEMENT);
			pageNode.setAttribute("xmi:type", "webml:Page");
			pageNode.setAttribute("xmi:id", id);
			pageNode.setAttribute("name", name);
		parentNode.appendChild(pageNode);
		return pageNode;		
	}
	
	private static Element addContentUnit(String id, String name, String type, String displayAttributes, String entity, Element parentNode) {
		System.out.println("Added ContentUnit id:"+ id + " name:" + name + " type: "+ type);
		Element contentUnitNode = outputDocument.createElement(PACKAGED_ELEMENT);
			contentUnitNode.setAttribute("xmi:type", "webml:"+type);
			contentUnitNode.setAttribute("xmi:id", id);
			contentUnitNode.setAttribute("name", name);
			if (!displayAttributes.equals("")) { //TODO attenzione
				contentUnitNode.setAttribute("displayAttributes", displayAttributes);	
			}
			if (!entity.equals("")) {
				contentUnitNode.setAttribute("entity", entity);	
			}
		parentNode.appendChild(contentUnitNode);
		return contentUnitNode;
	}
	
	private static Element addArea(String id, String name, Element parentNode) {
		System.out.println("Added Area id:"+ id + " name:" +name);
		Element areaNode = outputDocument.createElement(PACKAGED_ELEMENT);
			areaNode.setAttribute("xmi:type", "webml:Area");
			areaNode.setAttribute("xmi:id", id);
			areaNode.setAttribute("name", name);
		parentNode.appendChild(areaNode);
		return areaNode;
	}
	
	private static void addLink(String id, String name, String type, String to, Element parentNode) {
		System.out.println("Added Link id:"+ id + " name:" + name + " type: "+ type + " to: "+to);
		Element linkNode = outputDocument.createElement(PACKAGED_ELEMENT);
			linkNode.setAttribute("xmi:type", "webml:"+type);
			linkNode.setAttribute("xmi:id", id);
			linkNode.setAttribute("name", name);
			linkNode.setAttribute("to", to); //TODO attenzione
		parentNode.appendChild(linkNode);
	}
	
	private static void processWebModel(String projectName, Element parentNode) {
		File webModelDirectory = new File(WEBML_PATH + projectName + "/Model/WebModel");
		
		Element webModelNode = outputDocument.createElement(PACKAGED_ELEMENT);
			webModelNode.setAttribute("xmi:type", "webml:WebModel");
			webModelNode.setAttribute("xmi:id", "WebModel");
			webModelNode.setAttribute("name", "WebModel");
		parentNode.appendChild(webModelNode);
		
		File[] siteViewList = webModelDirectory.listFiles();
		for (int i = 0; i < siteViewList.length; i++) {
			if (siteViewList[i].isDirectory() && 
				!siteViewList[i].getName().startsWith(".")) { //exclude .svn folders
				
				processSiteView(siteViewList[i], webModelNode);
			}
		}
		
	}
	
	private static void processSiteView(File siteViewDirectory, Element parentNode) {
		File siteViewProperties = new File(siteViewDirectory.getAbsolutePath()+"/Properties.wr");		
		Document doc = generateNewDocInstance(siteViewProperties);
		
		//get id and name of the SiteView
		NodeList siteviews = doc.getElementsByTagName("SiteView");
		Element siteview = (Element) siteviews.item(0);
		String id = siteview.getAttribute("id");
		String name = siteview.getAttribute("name");
		
		Element siteViewNode = addSiteView(id, name, parentNode);
		
		//get the OperationUnits
		processOperationUnits(siteview, siteViewNode);
		
		//get the pages in the root of this SiteView
		processPages(siteViewDirectory, siteViewNode);
		
		//get the areas in the root of this SiteView
		processAreas(siteViewDirectory, siteViewNode);
		
	}
	
	
	/**
	 * @param el
	 * It can be either a SiteView or an Area, 
	 * its real java type is org.w3c.dom.Element
	 */
	private static void processOperationUnits(Element el, Element parentNode) {
		NodeList opUnits = el.getElementsByTagName("OperationUnits");
		NodeList operationUnits = opUnits.item(0).getChildNodes();
		for (int i = 0; i < operationUnits.getLength(); i++) {
			if (operationUnits.item(i).getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
				Element unit = (Element) operationUnits.item(i);
				String id = unit.getAttribute("id");
				String name = unit.getAttribute("name");
				String type = unit.getTagName();
				String displayAttributes = unit.getAttribute("displayAttributes");
				String entity = unit.getAttribute("entity");
				
				Element operationUnitNode = addOperationUnit(id, name, type, displayAttributes, entity, parentNode);
				
				//process link
				if (unit.hasChildNodes()) {
					processLinks(unit, operationUnitNode);
				}	
			}
		}
	}
	
	/**
	 * @param root
	 * Process the Pages in the root given,
	 * the root can be either a SiteView or an Area. 
	 */
	private static void processPages(File rootDirectory, Element parentNode) {
		File[] pages = rootDirectory.listFiles(new WebRatioFileFilter());
		for (int i = 0; i < pages.length; i++) { 
			processPage(pages[i], parentNode);
		}
	}
	
	private static void processPage(File page, Element parentNode) {
		Document doc = generateNewDocInstance(page);
		//get id and name of the Page
		NodeList pageNode = doc.getElementsByTagName("Page");
		if (pageNode.getLength() > 0) {
			Element pageElement = (Element) pageNode.item(0);
			String id = pageElement.getAttribute("id");
			String name = pageElement.getAttribute("name");
			
			Element pageNodeElement = addPage(id, name, parentNode);
			
			//process Content Units
			NodeList contentUnitsNode = doc.getElementsByTagName("ContentUnits");
			NodeList contentUnits = contentUnitsNode.item(0).getChildNodes();
			for (int i = 0; i < contentUnits.getLength(); i++) {
				if (contentUnits.item(i).getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
					Element unit = (Element) contentUnits.item(i);
					String unitId = unit.getAttribute("id");
					String unitName = unit.getAttribute("name");
					String unitType = unit.getTagName();
					String displayAttributes = unit.getAttribute("displayAttributes");
					String entity = unit.getAttribute("entity");
					
					Element contentUnitNode = addContentUnit(unitId, unitName, unitType, displayAttributes, entity, pageNodeElement);
					
					//process link
					if (unit.hasChildNodes()) {
						processLinks(unit, contentUnitNode);
					}	
				}
			}
		}
		
	}
	
	/**
	 * @param root
	 * Process the Areas in the root given,
	 * the root can be either a SiteView or an Area. 
	 */
	private static void processAreas(File rootDirectory, Element parentNode) {
		File[] areaList = rootDirectory.listFiles();
		for (int i = 0; i < areaList.length; i++) {
			if (areaList[i].isDirectory() && 
					!areaList[i].getName().startsWith(".")) { //ignore .svn folders
				processArea(areaList[i], parentNode);
			}
		}
	}
	
	/**
	 * @param rootDirectory
	 * root directory of the area to process
	 */
	private static void processArea(File rootDirectory, Element parentNode) {
		File areaProperties = new File(rootDirectory.getAbsolutePath()+"/Properties.wr");		
		Document doc = generateNewDocInstance(areaProperties);
		
		//get id and name of the SiteView
		NodeList areas = doc.getElementsByTagName("Area");
		Element area = (Element) areas.item(0);
		String id = area.getAttribute("id");
		String name = area.getAttribute("name");
		
		Element areaNode = addArea(id, name, parentNode);
		
		//get the OperationUnits in this Area
		processOperationUnits(area, areaNode);
		
		//get the pages in the root of this Area
		processPages(rootDirectory, areaNode);
		
		//get the areas in the root of this Area
		processAreas(rootDirectory, areaNode);
	}
	
	/**
	 * @param el
	 * Given an Element (OperationUnit) processes its Links
	 */
	private static void processLinks(Element el, Element parentNode) {
		String[] linkTypes = {"Link", "OKLink", "KOLink"}; //TODO ci sono altri link types?
		for (int k = 0; k < linkTypes.length; k++) {
			NodeList links = el.getElementsByTagName(linkTypes[k]); 
			for (int i = 0; i < links.getLength(); i++) {
				if (links.item(i).getNodeType() == org.w3c.dom.Node.ELEMENT_NODE) {
					Element link = (Element) links.item(i);
					String id = link.getAttribute("id");
					String name = link.getAttribute("name");
					String type = link.getTagName();
					String to = link.getAttribute("to");
					
					addLink(id, name, type, to, parentNode);
					
				}
			}
		}
		
	}
	
	
	private static Document generateNewDocInstance(File f) {
		Document doc = null;
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			doc = db.parse(f);
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return doc;
	}
	
	private static void writeToFile(Element root) {
		try {
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			transformerFactory.setAttribute("indent-number", 4);
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			
			StringWriter writer = new StringWriter();
			StreamResult result = new StreamResult(writer);
			DOMSource source = new DOMSource(root);
			transformer.transform(source, result);
			
			String outputName = OUTPUT_PATH + root.getAttribute("xmi:id") + ".xmi";
			File resultFile = new File(outputName);
			FileWriter outputWriter = new FileWriter(resultFile);
			outputWriter.write(writer.toString());
			outputWriter.close();
			
			System.out.println(webmlProject.getAttribute("name")+"...DONE!");
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
