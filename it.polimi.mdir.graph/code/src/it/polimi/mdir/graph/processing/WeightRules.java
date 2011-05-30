package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.processing.GraphUtils.RelationType;

import java.util.HashMap;

public class WeightRules {

	public final static HashMap<String, Float> weightMap = new HashMap<String, Float>();
	static
	{
		//weights for imported attributes
		weightMap.put("attribute", 1.0f); //vanilla attribute
		weightMap.put("composition_1-1", 2.0f);
		weightMap.put("composition_1-*", 1.5f);
		weightMap.put("association_1-1", 2.5f);
		weightMap.put("association_1-*", 2.0f);
		weightMap.put("class", 5.0f);
	}
	
	public final static HashMap<String, Float> penaltyMap = new HashMap<String, Float>();
	static
	{
		//penalties for relation types during navigation
		penaltyMap.put(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_1.toString(), 0.8f);
		penaltyMap.put(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_N.toString(), 0.7f);
		
		penaltyMap.put(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_1.toString(), 0.6f);
		penaltyMap.put(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_N.toString(), 0.5f);

		penaltyMap.put(RelationType.ASSOCIATION_1_1.toString(), 0.4f);
		penaltyMap.put(RelationType.ASSOCIATION_1_N.toString(), 0.3f);

		penaltyMap.put(RelationType.GENERALIZATION_FATHER_CHILD.toString(), 0.5f);
		penaltyMap.put(RelationType.GENERALIZATION_CHILD_FATHER.toString(), 0.75f);
	}
	
}
