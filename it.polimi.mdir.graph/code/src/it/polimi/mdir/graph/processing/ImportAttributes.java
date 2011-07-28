package it.polimi.mdir.graph.processing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import edu.uci.ics.jung.graph.Graph;

import it.polimi.mdir.graph.Edge;
import it.polimi.mdir.graph.Node;
import it.polimi.mdir.graph.processing.GraphUtils.RelationType;


public class ImportAttributes extends OperationFunction {
	
	private ArrayList<ImportCandidate> importedAttributes = new ArrayList<ImportCandidate>();
	private ArrayList<ImportCandidate> importedClassNames = new ArrayList<ImportCandidate>();
	
	private ArrayList<ImportCandidate> importCandidateAttributes = new ArrayList<ImportCandidate>();
	private ImportCandidate importCandidateClassName = null;
	
	private float penalty = 1.0f;
	
	/**
	 * this method overrides the generic executeBusiessLogic method of operationFunction.<br />
	 * In this case our business logic is importing the attributes of the neighbours of a Node
	 * into the node itself.
	 */
	@Override
	public void executeBusinessLogic (Node currentNode, Node callerNode, Edge followedEdge, int numHops, Graph<Node, Edge> g) {
		importAttributes(currentNode, callerNode, followedEdge, numHops, g);
	}
	
	private void importAttributes(Node currentNode, Node callerNode, Edge followedEdge, int numHops, Graph<Node, Edge> g) {
		
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
		
		//Assign penalty
		if (followedEdge != null) {
			String relationType = followedEdge.getRelationType();
			if (!(relationType.equals(RelationType.GENERALIZATION_CHILD_FATHER.toString())) && !(relationType.equals(RelationType.GENERALIZATION_FATHER_CHILD.toString()))) {
				
				if (relationType.equals(RelationType.ASSOCIATION.toString())) {
					if (followedEdge.getUpperValue().equals("*"))
						penalty = WeightRules.penaltyMap.get(RelationType.ASSOCIATION_1_N.toString());
					else penalty = WeightRules.penaltyMap.get(RelationType.ASSOCIATION_1_1.toString());
					
				} else if (relationType.equals(RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString())) {
					if (followedEdge.getUpperValue().equals("*"))
						penalty = WeightRules.penaltyMap.get(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_N.toString());
					else penalty = WeightRules.penaltyMap.get(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_1.toString());
					
				} else if (relationType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString())) {
					if (followedEdge.getUpperValue().equals("*"))
						penalty = WeightRules.penaltyMap.get(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_N.toString());
					else penalty = WeightRules.penaltyMap.get(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_1.toString());
				}
				
			} else penalty = WeightRules.penaltyMap.get(followedEdge.getRelationType());
		}
		
		//These are of the current Node
		getVanillaAttributes(currentNode, callerNode, g);
		getClassName(currentNode, callerNode, g);
		getRelationAttributes(currentNode, callerNode, g);
		
		// penalty of this callerNode->currentNode relation has already been applied
		// to attributes (vanilla and imported) of this node.
		// Now, apply this penalty also to the attributes coming from nodes under this branch.
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
				candidate.setCallerNode(callerNode.getId());
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
		if (followedEdge != null && (followedEdge.getRelationType().equals(RelationType.COMPOSITION_COMPONENT_COMPOSITE.toString()) 
										|| followedEdge.getRelationType().equals(RelationType.GENERALIZATION_FATHER_CHILD.toString()))) {
			//import just the className
			importedClassNames.add(importCandidateClassName);
			//remove from importedAttributes the ones with this callerNode
			ArrayList<ImportCandidate> removeList = new ArrayList<ImportCandidate>();
			Iterator<ImportCandidate> itr = importedAttributes.iterator();
			while (itr.hasNext()) {
				ImportCandidate removalCandidate = itr.next();
				if (removalCandidate.getCallerNode().equals(callerNode.getId())) {
					removeList.add(removalCandidate);	
				}
			}
			importedAttributes.removeAll(removeList);
		} else {
			//import everything
			importedClassNames.add(importCandidateClassName);
			Iterator<ImportCandidate> itr = importCandidateAttributes.iterator();
			while (itr.hasNext()) {
				importedAttributes.add(itr.next());
			}
		}
		
		// TODO Warning! Do we have to resolve cycles? 
		
		/*************/ //debug code
		if (false) {
			Iterator<ImportCandidate> itr = importedAttributes.iterator();
			//Iterator<ImportCandidate> itr = importedClassNames.iterator();
			System.out.print("ho importato: ");
			while (itr.hasNext()) {
				System.out.print(itr.next().getNameWeight() + " ");
				//System.out.print(itr.next().getName() + " ");
			}
			System.out.println(" ");
		}

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
		Collection<Edge> relationCollection = GraphUtils.sortEdges(g.getOutEdges(currentNode));
		
		Iterator<Edge> relationCollectionIterator = relationCollection.iterator();
		while (relationCollectionIterator.hasNext()) {
			//Il relationAttribute è sempre e solo 1.
			Edge e = relationCollectionIterator.next();
			String relationAttributeName = e.getAssociatedAttribute();
			String relationAttributeType = e.getRelationType();
			
			if (relationAttributeName != null && 
					!relationAttributeType.equals(RelationType.GENERALIZATION_CHILD_FATHER.toString()) &&
					!relationAttributeType.equals( RelationType.GENERALIZATION_FATHER_CHILD.toString())
				) {
				String relType = null;
				if (relationAttributeType.equals(RelationType.COMPOSITION_COMPOSITE_COMPONENT.toString())) {

					//Consider upper cardinality
					if(e.getUpperValue().equals("*")) {
						relType = "composition_1-*";
					} else relType = "composition_1-1";
				
				} else if (relationAttributeType.equals(RelationType.ASSOCIATION.toString())) {

					//Consider upper cardinality
					if(e.getUpperValue().equals("*")) {
						relType = "association_1-*";
					} else relType = "association_1-1";
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
	
	/**
	 * @return
	 * The ArrayList<String> containing the imported attributes
	 */
	public ArrayList<String> getImportedAttributes() {
		ArrayList<String> importedAtt = new ArrayList<String>();
		Iterator<ImportCandidate> importedAttItr = importedAttributes.iterator();
		while (importedAttItr.hasNext()) {
			importedAtt.add(importedAttItr.next().getNameWeight());
		}
		return importedAtt;
	}
	
	/**
	 * The ArrayList<String> containing the imported class names
	 */
	public ArrayList<String> getImportedClassNames() {
		ArrayList<String> importedClasses = new ArrayList<String>();
		Iterator<ImportCandidate> importedClassesItr = importedClassNames.iterator();
		while (importedClassesItr.hasNext()) {
			importedClasses.add(importedClassesItr.next().getNameWeight());
		}
		return importedClasses;
	}
	
}