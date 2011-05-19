package it.polimi.mdir.graph;

import it.polimi.mdir.graph.TranslateXMItoGraphML.RelationType;

import java.util.HashMap;

public class WeightRules {

	public final static HashMap<String, Float> weightMap = new HashMap<String, Float>();
	static
	{
		//weights for imported attributes
		weightMap.put("attribute", 1.0f); //vanilla attribute
		weightMap.put("composition", 2.0f);
		weightMap.put("association", 2.5f);
	}
	
	public final static HashMap<RelationType, Float> penaltyMap = new HashMap<RelationType, Float>();
	static
	{
		//penalties for relation types during navigation
		penaltyMap.put(RelationType.COMPOSITION_COMPOSITE_COMPONENT, 0.5f);
		penaltyMap.put(RelationType.COMPOSITION_COMPONENT_COMPOSITE, 0.5f);
		penaltyMap.put(RelationType.ASSOCIATION, 0.5f);
		penaltyMap.put(RelationType.GENERALIZATION_FATHER_CHILD, 1.0f);
		penaltyMap.put(RelationType.GENERALIZATION_CHILD_FATHER, 0.75f);
	}
	
}
