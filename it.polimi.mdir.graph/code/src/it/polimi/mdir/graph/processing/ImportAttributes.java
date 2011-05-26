package it.polimi.mdir.graph.processing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.TranslateXMItoGraphML.RelationType;


public class ImportAttributes extends OperationFunction {

	private static final String NO_RELATION_TYPE = "none";
	
	protected ArrayList<ImportCandidate> importedAttributes = new ArrayList<ImportCandidate>();
	protected ArrayList<ImportCandidate> importedClassNames = new ArrayList<ImportCandidate>();
	
	private ArrayList<ImportCandidate> importCandidateAttributes = new ArrayList<ImportCandidate>();
	private ImportCandidate importCandidateClassName = null;
	
	private float penalty = 1.0f;
	
	@Override
	public void importAttributes(Node currentNode, Node callerNode, int numHops, Graph<Node, Edge> g) {
		
		//Debug lines
		if (false) {
			System.out.println("This is " + currentNode.getClassName() + " called from: " + callerNode.getClassName());
		}
		int numAttributes = currentNode.getAttributes().size();
		
		/*************************************/
		//implementation begins
		
		//reset variables
		penalty = 1.0f;
		importCandidateAttributes.clear();
		importCandidateClassName = null;
		
		//get relation type from callerNode to currentNode.
		// It's the one that has source=callerNode and target=currentNode
		// Then initialize the penalty, otherwise it is 1.0f by default.
		String callerRelationType = NO_RELATION_TYPE;
		if (!callerNode.equals(currentNode)) {
			Collection<Edge> edgeCollection = g.getEdges();
			Iterator<Edge> itr = edgeCollection.iterator();
			Edge thisRelation = null;  //TODO provare g.findEdgeSet();
			while (itr.hasNext()) {
				Edge e = itr.next();
				if (e.getSourceId().equals(callerNode.getId()) && 
						e.getTargetId().equals(currentNode.getId())) {
					thisRelation = e;
				} 
			} 
			callerRelationType = thisRelation.getRelationType();
			penalty = WeightRules.penaltyMap.get(callerRelationType);
		}
		
		//These are of the current Node
		getVanillaAttributes(currentNode, callerNode, g);
		getClassName(currentNode, callerNode, g);
		getRelationAttributes(currentNode, callerNode, g);
		
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
			if (candidate.getCallerNode().equals(currentNode.getId())) {
				candidate.setWeight( candidate.getWeight() * penalty );
				candidate.setCallerNode(callerNode.getId()); //TODO forse questo va fuoru dall'IF?
			}
		}
		Iterator<ImportCandidate> importedClassesItr = importedClassNames.iterator();
		while (importedClassesItr.hasNext()) {
			ImportCandidate candidate = importedClassesItr.next();
			if (candidate.getCallerNode().equals(currentNode.getId())) {
				candidate.setWeight( candidate.getWeight() * penalty );
				candidate.setCallerNode(callerNode.getId());
			}
		}
		
		// Apply relation type filter to decide what of this node import in other nodes
		if (callerRelationType.equals(RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString()) 
				|| callerRelationType.equals(RelationType.GENERALIZATION_FATHER_CHILD.toString())) {
			//import just the className
			importedClassNames.add(importCandidateClassName);
			importedAttributes.clear();
		} else {
			//import everything
			importedClassNames.add(importCandidateClassName);
			Iterator<ImportCandidate> itr = importCandidateAttributes.iterator();
			while (itr.hasNext()) {
				importedAttributes.add(itr.next());
			}
		}
		
		// TODO attenzione!!! bisogna prima risolverre i cicli! o forse no? 
		// se non lo facciamo � sbagliatissimo o cambia poco?

	}
	
	
	/**
	 * Gets relations of the current node (i.e, edges that have source = currentNode).
	 * Considers only the ones that have at least one attribute.
	 * This function DOESN'T consider generalizations.
	 * @param currentNode
	 * Node of which we want the attributes of the relations.
	 * @param callerNode
	 * It's needed to mark the imported attributes. To tell that they come from this branch.
	 * @param g
	 * The graph this node is in.
	 */
	private void getRelationAttributes(Node currentNode, Node callerNode, Graph<Node, Edge> g) {
		Collection<Edge> relationCollection = g.getOutEdges(currentNode);
		Iterator<Edge> relationCollectionIterator = relationCollection.iterator();
		while (relationCollectionIterator.hasNext()) {
			//Il relationAttribute � sempre e solo 1.
			Edge e = relationCollectionIterator.next();
			String relationAttributeName = e.getAssociatedAttribute();
			String relationAttributeType = e.getRelationType();
			
			if (relationAttributeName != null && 
					!relationAttributeType.equals(RelationType.GENERALIZATION_CHILD_FATHER.toString()) &&
					!relationAttributeType.equals( RelationType.GENERALIZATION_FATHER_CHILD.toString())
				) {
				String relType = null;
				if (relationAttributeType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString())) {
					relType = "composition";
				} else if (relationAttributeType.equals(RelationType.ASSOCIATION.toString())) {
					relType = "association";
				}
				float weight = WeightRules.weightMap.get(relType) * penalty;
				ImportCandidate relationAttributeCandidate = new ImportCandidate(relationAttributeName, weight, callerNode.getId());
				importCandidateAttributes.add(relationAttributeCandidate);
			}
		}
	}


	/**
	 * Import vanilla attributes from current node
	 * @param currentNode
	 * The node of which we want the vanilla attributes.
	 * @param callerNode
	 * It's needed to mark the imported attributes. To tell that they come from this branch.
	 * @param g
	 * The graph this node is in.
	 */
	private void getVanillaAttributes(Node currentNode, Node callerNode, Graph<Node, Edge> g) {
		ArrayList<String> vanillaAttributes = currentNode.getAttributes();
		Iterator<String> vanillaAttributesIterator = vanillaAttributes.iterator();
		String attributeName = "";
		while (vanillaAttributesIterator.hasNext()) {
			attributeName = vanillaAttributesIterator.next();
			float weight = WeightRules.weightMap.get("attribute") * penalty;
			ImportCandidate attributeCandidate = new ImportCandidate(attributeName, weight, callerNode.getId());
			importCandidateAttributes.add(attributeCandidate);
		}
	}
	
	/**
	 * Gets className of the current node
	 * @param currentNode
	 * The node of which we want the className.
	 * @param callerNode
	 * It's needed to mark the imported attributes. To tell that they come from this branch.
	 * @param g
	 * The graph this node is in.
	 */
	private void getClassName(Node currentNode, Node callerNode, Graph<Node, Edge> g) {
		String className = currentNode.getClassName();
		float weight = WeightRules.weightMap.get("class") * penalty;
		importCandidateClassName = new ImportCandidate(className, weight, callerNode.getId());
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