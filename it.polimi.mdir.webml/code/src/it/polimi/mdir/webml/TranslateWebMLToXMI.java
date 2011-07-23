package it.polimi.mdir.webml;

import java.io.File;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class TranslateWebMLToXMI {
	
	private static String PACKAGED_ELEMENT = "packagedElement";
	
	private String _webmlPath = "";
	private Document _outputDocument = null;
	
	//TODO Transactions and OperationGroups are treated the same
	//TODO Pages and MasterPages are treated the same
	
	public TranslateWebMLToXMI(String webmlPath, Document outputDocument) {
		_webmlPath = webmlPath;
		_outputDocument = outputDocument;
	}
	
	public void processProject(File project, Element projectNode) {
		String projectName = project.getName();
		
		projectNode.setAttribute("xmi:id", projectName);
		projectNode.setAttribute("name", projectName);
		
		processDataModel(projectName, projectNode);
		processWebModel(projectName, projectNode);
		
	}
	
	private void processDataModel(String projectName, Element parentNode) {
		File dataModelProperties = new File(_webmlPath + projectName + "/Model/DataModel/Properties.wr");
		
		Element dataModelNode = _outputDocument.createElement(PACKAGED_ELEMENT);
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
	
	private Element addEntity(String id, String name, Element parentNode) {
		System.out.println("Added Entity id:"+ id + " name:" +name);
		Element entityNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			entityNode.setAttribute("xmi:type", "webml:Entity");
			entityNode.setAttribute("xmi:id", id);
			entityNode.setAttribute("name", name);
		parentNode.appendChild(entityNode);
		return entityNode;
	}

	private void addAttribute(String id, String name, Element parentNode) {
		System.out.println("	Added Attribute id:"+ id + " name:" +name);
		Element attributeNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			attributeNode.setAttribute("xmi:type", "webml:Attribute");
			attributeNode.setAttribute("xmi:id", id);
			attributeNode.setAttribute("name", name);
		parentNode.appendChild(attributeNode);
	}
	
	private Element addSiteView(String id, String name, Element parentNode) {
		System.out.println("Added SiteView id:"+ id + " name:" +name);
		Element siteViewNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			siteViewNode.setAttribute("xmi:type", "webml:SiteView");
			siteViewNode.setAttribute("xmi:id", id);
			siteViewNode.setAttribute("name", name);
		parentNode.appendChild(siteViewNode);
		return siteViewNode;
	}
	
	private Element addOperationUnit(String id, String name, String type, String displayAttributes, String entity, Element parentNode) {
		System.out.println("Added OperationUnit id:"+ id + " name:" + name + " type: "+ type);
		Element operationUnitNode = _outputDocument.createElement(PACKAGED_ELEMENT);
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
	
	private Element addPage(String id, String name, Element parentNode) {
		System.out.println("Added Page id:"+ id + " name:" +name);
		Element pageNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			pageNode.setAttribute("xmi:type", "webml:Page");
			pageNode.setAttribute("xmi:id", id);
			pageNode.setAttribute("name", name);
		parentNode.appendChild(pageNode);
		return pageNode;		
	}
	
	private Element addContentUnit(String id, String name, String type, String displayAttributes, String entity, Element parentNode) {
		System.out.println("Added ContentUnit id:"+ id + " name:" + name + " type: "+ type);
		Element contentUnitNode = _outputDocument.createElement(PACKAGED_ELEMENT);
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
	
	private Element addOperationGroup(String id, String name, Element parentNode) {
		System.out.println("Added OperationGroup id:"+ id + " name:" +name);
		Element opgNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			opgNode.setAttribute("xmi:type", "webml:OperationGroup");
			opgNode.setAttribute("xmi:id", id);
			opgNode.setAttribute("name", name);
		parentNode.appendChild(opgNode);
		return opgNode;
	}
	
	private Element addArea(String id, String name, Element parentNode) {
		System.out.println("Added Area id:"+ id + " name:" +name);
		Element areaNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			areaNode.setAttribute("xmi:type", "webml:Area");
			areaNode.setAttribute("xmi:id", id);
			areaNode.setAttribute("name", name);
		parentNode.appendChild(areaNode);
		return areaNode;
	}
	
	private void addLink(String id, String name, String type, String to, Element parentNode) {
		System.out.println("Added Link id:"+ id + " name:" + name + " type: "+ type + " to: "+to);
		Element linkNode = _outputDocument.createElement(PACKAGED_ELEMENT);
			linkNode.setAttribute("xmi:type", "webml:"+type);
			linkNode.setAttribute("xmi:id", id);
			linkNode.setAttribute("name", name);
			linkNode.setAttribute("to", to); //TODO attenzione
		parentNode.appendChild(linkNode);
	}
	
	private void processWebModel(String projectName, Element parentNode) {
		File webModelDirectory = new File(_webmlPath + projectName + "/Model/WebModel");
		
		Element webModelNode = _outputDocument.createElement(PACKAGED_ELEMENT);
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
	
	private void processSiteView(File siteViewDirectory, Element parentNode) {
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
		
		//get the Pages in the root of this SiteView
		processPages(siteViewDirectory, siteViewNode);
		
		//get the OperationGroups in the root of this SiteView
		processOperationGroups(siteViewDirectory, siteViewNode);
		
		//get the Transactions in the root of this SiteView
		processTransactions(siteViewDirectory, siteViewNode);
		
		//get the Areas in the root of this SiteView
		processAreas(siteViewDirectory, siteViewNode);
		
	}
	
	
	/**
	 * @param el
	 * It can be either a SiteView or an Area, 
	 * its real java type is org.w3c.dom.Element
	 */
	private void processOperationUnits(Element el, Element parentNode) {
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
	private void processPages(File rootDirectory, Element parentNode) {
		File[] pages = rootDirectory.listFiles(new PageFileFilter());
		for (int i = 0; i < pages.length; i++) { 
			processPage(pages[i], parentNode);
		}
	}
	
	private void processPage(File page, Element parentNode) {
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
	 * Process the OperationGroups in the root given,
	 * the root can be either a SiteView or an Area. 
	 */
	private void processOperationGroups(File rootDirectory, Element parentNode) {
		File[] opgs = rootDirectory.listFiles(new OperationGroupsFileFilter());
		for (int i = 0; i < opgs.length; i++) { 
			processOperationGroup(opgs[i], parentNode);
		}
	}
	
	private void processOperationGroup(File opg, Element parentNode) {
		Document doc = generateNewDocInstance(opg);
		//get id and name of the OperationGroup
		NodeList opgNode = doc.getElementsByTagName("OperationGroup");
		if (opgNode.getLength() > 0) {
			Element opgElement = (Element) opgNode.item(0);
			String id = opgElement.getAttribute("id");
			String name = opgElement.getAttribute("name");
			
			Element opgNodeElement = addOperationGroup(id, name, parentNode);
			
			//process OperationUnits
			processOperationUnits(opgElement, opgNodeElement);
			
		}
		
	}
	
	/**
	 * @param root
	 * Process the Transactions in the root given,
	 * the root can be either a SiteView or an Area. 
	 */
	private void processTransactions(File rootDirectory, Element parentNode) {
		File[] trans = rootDirectory.listFiles(new TransactionsFileFilter());
		for (int i = 0; i < trans.length; i++) { 
			//here we treat the Transactions as OperationGroups
			processOperationGroup(trans[i], parentNode); 
		}
	}
	
	/**
	 * @param root
	 * Process the Areas in the root given,
	 * the root can be either a SiteView or an Area. 
	 */
	private void processAreas(File rootDirectory, Element parentNode) {
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
	private void processArea(File areaDirectory, Element parentNode) {
		File areaProperties = new File(areaDirectory.getAbsolutePath()+"/Properties.wr");		
		Document doc = generateNewDocInstance(areaProperties);
		
		//get id and name of the SiteView
		NodeList areas = doc.getElementsByTagName("Area");
		Element area = (Element) areas.item(0);
		String id = area.getAttribute("id");
		String name = area.getAttribute("name");
		
		Element areaNode = addArea(id, name, parentNode);
		
		//get the OperationUnits in this Area
		processOperationUnits(area, areaNode);
		
		//get the Pages in the root of this Area
		processPages(areaDirectory, areaNode);
		
		//get the OperationGroups in the root of this Area
		processOperationGroups(areaDirectory,areaNode);
		
		//get the Transactions in the root of this Area
		processTransactions(areaDirectory, areaNode);
		
		//get the Areas in the root of this Area
		processAreas(areaDirectory, areaNode);
	}
	
	/**
	 * @param el
	 * Given an Element (OperationUnit) processes its Links
	 */
	private void processLinks(Element el, Element parentNode) {
		String[] linkTypes = {"Link", "OKLink", "KOLink"}; //TODO are there any other link types?
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
	
	
	private Document generateNewDocInstance(File f) {
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
	
	
}
