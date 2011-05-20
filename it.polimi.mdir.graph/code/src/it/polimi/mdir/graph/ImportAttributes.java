package it.polimi.mdir.graph;

import java.util.ArrayList;
import java.util.Iterator;

import it.polimi.mdir.graph.TranslateXMItoGraphML.RelationType;
import it.polimi.mdir.xquery.XQueryWrapper;


public class ImportAttributes extends OperationFunction {

	private static final String XQUERY_GRAPH_PATH = ConfigLoader.XQUERY_GRAPH_PATH;
	private static final String GRAPHML_PATH = ConfigLoader.GRAPHML_PATH;
	
	private static final String NO_RELATION_TYPE = "none";
	
	private static ArrayList<ImportCandidate> importedAttributes = new ArrayList<ImportCandidate>();
	private static ArrayList<ImportCandidate> importedClassNames = new ArrayList<ImportCandidate>();
	
	private ArrayList<ImportCandidate> importCandidateAttributes = new ArrayList<ImportCandidate>();
	private ArrayList<ImportCandidate> importCandidatesClassNames = new ArrayList<ImportCandidate>();
	
	float penalty = 1.0f;
	
	@Override
	public void importAttributes(String currentNode, String callerNode, int numHops, String fileName) {
		
		//Debug lines
		if (false) {
			//get currentNode Name
			XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getClassName.xquery");
			xq.bindVariable("document", GRAPHML_PATH + fileName);
			xq.bindVariable("id", currentNode);
			String className = xq.executeQuery().get(0);
			
			//get callernode Name
			XQueryWrapper xq2 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getClassName.xquery");
			xq2.bindVariable("document", GRAPHML_PATH + fileName);
			xq2.bindVariable("id", callerNode);
			String callerName = xq2.executeQuery().get(0);
			System.out.println("This is " + className + " called from: " + callerName);
		}
		
		/*************************************/
		//implementation begins
		
		//get relation type from callerNode to currentNode.
		// It's the one that has source=callerNode and target=currentNode
		// Then initialize the penalty, otherwise it is 1.0f by default.
		String callerRelationType = NO_RELATION_TYPE;
		if (!callerNode.equals(currentNode)) {
			XQueryWrapper xq3 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getCallerRelationType.xquery");
			xq3.bindVariable("document", GRAPHML_PATH + fileName);
			xq3.bindVariable("source", callerNode);
			xq3.bindVariable("target", currentNode);
			callerRelationType = xq3.executeQuery().get(0);
			penalty = WeightRules.penaltyMap.get(callerRelationType);
		}
		
		//These are of the current Node
		getClassName(currentNode, callerNode, fileName);
		getVanillaAttributes(currentNode, callerNode, fileName);
		getRelationAttributes(currentNode, callerNode, fileName);
		
		// penalty of this callerNode->currentNode relation has already been applied
		// to attributes (vanilla and imported) of this node.
		// Apply this penalty also to the attributes coming from nodes under this branch.
		// They are already in the imported attributes. 
		// To distinguish these nodes, we look at their callerNode.
		// If it is equal to the currentNode, than they come under this.
		// We also update their callerNode so that they will be seen as childs of 
		// this node up the tree.
		Iterator<ImportCandidate> importedAttributesItr = importedAttributes.iterator();
		while (importedAttributesItr.hasNext()) {
			ImportCandidate candidate = importedAttributesItr.next();
			if (candidate.getCallerNode().equals(currentNode)) {
				candidate.setWeight( candidate.getWeight() * penalty );
				candidate.setCallerNode(callerNode);
			}
		}
		Iterator<ImportCandidate> importedClassesItr = importedClassNames.iterator();
		while (importedClassesItr.hasNext()) {
			ImportCandidate candidate = importedClassesItr.next();
			if (candidate.getCallerNode().equals(currentNode)) {
				candidate.setWeight( candidate.getWeight() * penalty );
				candidate.setCallerNode(callerNode);
			}
		}
		
		
		// Apply relation type filter to decide what of this node import in other nodes
		// Also apply penalty of this node to attributes of the branches under this
		if (callerRelationType.equals(RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString()) 
				|| callerRelationType.equals(RelationType.GENERALIZATION_FATHER_CHILD.toString())) {
			//import just classNames
			Iterator<ImportCandidate> itr = importCandidatesClassNames.iterator();
			while (itr.hasNext()) {
				importedClassNames.add(itr.next());
			}
		} else {
			//import everything
			Iterator<ImportCandidate> itr = importCandidatesClassNames.iterator();
			while (itr.hasNext()) {
				importedClassNames.add(itr.next());
			}
			Iterator<ImportCandidate> itr2 = importCandidateAttributes.iterator();
			while (itr2.hasNext()) {
				importedAttributes.add(itr2.next());
			}
		}
		
		
		//Print final imported attributes and classes
		if (false && numHops == 1) {
			Iterator<ImportCandidate> itr = importedAttributes.iterator();
			while (itr.hasNext()) {
				System.out.print(itr.next().getNameWeight());
				System.out.print(" ");
			}
			
			System.out.println("");
			Iterator<ImportCandidate> itr2 = importedClassNames.iterator();
			while (itr2.hasNext()) {
				System.out.print(itr2.next().getNameWeight());
				System.out.print(" ");
			}
		}
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo è sbagliatissimo o cambia poco?

	}
	
	
	private void getRelationAttributes(String currentNode, String callerNode, String fileName) {
		//get relations of the current node (i.e, edges that have sorceId = currentNode)
		//But only the ones that have at least one attribute
		//This function DOESN'T doesn't get generalizations
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationIds.xquery");
		xq.bindVariable("document", GRAPHML_PATH + fileName);
		xq.bindVariable("source", currentNode);
		ArrayList<String> relationIdsList = xq.executeQuery();
		Iterator<String> relationIdsIterator = relationIdsList.iterator();
		while (relationIdsIterator.hasNext()) {
			//for every relation, given the relation id, we extract its attributes
			//they get returned in the format attributeName$relationType
			XQueryWrapper xq2 = new XQueryWrapper(XQUERY_GRAPH_PATH + "getRelationAttributes.xquery");
			xq2.bindVariable("document", GRAPHML_PATH + fileName);
			xq2.bindVariable("relationId", relationIdsIterator.next());
			ArrayList<String> relationAttributesList = xq2.executeQuery();
			Iterator<String> relationAttributesIterator = relationAttributesList.iterator();
			String[] relationAttributes = new String[2];
			String relationAttributeName = "";
			String relationAttributeType = "";
			while (relationAttributesIterator.hasNext()) {
				relationAttributes = relationAttributesIterator.next().split("\\$");
				relationAttributeName = relationAttributes[0];
				relationAttributeType = relationAttributes[1];
				String relType = null;
				if (relationAttributeType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString())) {
					relType = "composition";
				} else if (relationAttributeType.equals(RelationType.ASSOCIATION.toString())) {
					relType = "association";
				}
				float weight = WeightRules.weightMap.get(relType) * penalty;
				ImportCandidate relationAttributeCandidate = new ImportCandidate(relationAttributeName, weight, callerNode);
				importCandidateAttributes.add(relationAttributeCandidate);
			}
			
		}
	}


	//Importo attributi vanilla da "currentNode". 
	private void getVanillaAttributes(String currentNode, String callerNode, String fileName) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getVanillaAttributes.xquery");
		xq.bindVariable("document", GRAPHML_PATH + fileName);
		xq.bindVariable("id", currentNode);
		ArrayList<String> vanillaAttributes = xq.executeQuery();
		Iterator<String> vanillaAttributesIterator = vanillaAttributes.iterator();
		String attributeName = "";
		while (vanillaAttributesIterator.hasNext()) {
			attributeName = vanillaAttributesIterator.next();
			float weight = WeightRules.weightMap.get("attribute") * penalty;
			ImportCandidate attributeCandidate = new ImportCandidate(attributeName, weight, callerNode);
			importCandidateAttributes.add(attributeCandidate);
		}
	}
	
	//get className of the current node
	private void getClassName(String currentNode, String callerNode, String fileName) {
		XQueryWrapper xq = new XQueryWrapper(XQUERY_GRAPH_PATH + "getClassName.xquery");
		xq.bindVariable("document", GRAPHML_PATH + fileName);
		xq.bindVariable("id", currentNode);
		String className = xq.executeQuery().get(0);
		float weight = WeightRules.weightMap.get("class") * penalty;
		ImportCandidate classNameCandidate = new ImportCandidate(className, weight, callerNode);
		importCandidatesClassNames.add(classNameCandidate);
	}
	
	
	public static void clear() {
		importedAttributes.clear();
		importedClassNames.clear();
	}
	
	public ArrayList<String> getImportedAttributes() {
		ArrayList<String> importedAtt = new ArrayList<String>();
		Iterator<ImportCandidate> importedAttItr = importedAttributes.iterator();
		while (importedAttItr.hasNext()) {
			importedAtt.add(importedAttItr.next().getNameWeight());
		}
		return importedAtt;
	}
	
	public ArrayList<String> getImportedClassNames() {
		ArrayList<String> importedClasses = new ArrayList<String>();
		Iterator<ImportCandidate> importedClassesItr = importedClassNames.iterator();
		while (importedClassesItr.hasNext()) {
			importedClasses.add(importedClassesItr.next().getNameWeight());
		}
		return importedClasses;
	}
	
}