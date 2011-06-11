package it.polimi.mdir.graph.processing;

import it.polimi.mdir.graph.processing.GraphUtils.RelationType;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;

public class WeightRules {

	private static float ATTRIBUTE_WEIGHT = 0;
	private static float COMPOSITION_1_1_WEIGHT = 0;
	private static float COMPOSITION_1_N_WEIGHT = 0;
	private static float ASSOCIATION_1_1_WEIGHT = 0;
	private static float ASSOCIATION_1_N_WEIGHT = 0;
	private static float CLASS_WEIGHT = 0;
	
	private static float COMPOSITION_COMPOSITE_COMPONENT_1_1_PENALTY = 0;
	private static float COMPOSITION_COMPOSITE_COMPONENT_1_N_PENALTY = 0;
	private static float COMPOSITION_COMPONENT_COMPOSITE_1_1_PENALTY = 0;
	private static float COMPOSITION_COMPONENT_COMPOSITE_1_N_PENALTY = 0;
	private static float ASSOCIATION_1_1_PENALTY = 0;
	private static float ASSOCIATION_1_N_PENALTY = 0;
	private static float GENERALIZATION_FATHER_CHILD_PENALTY = 0;
	private static float GENERALIZATION_CHILD_FATHER_PENALTY = 0;
	
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			//FileInputStream in = new FileInputStream("configuration.properties"); //TODO trovare un modo di parametrizzare sta cosa!!!
			FileInputStream in = new FileInputStream("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/configuration.properties");
			config.load(in);
			in.close();
			
			ATTRIBUTE_WEIGHT = Float.valueOf(config.getProperty("attribute"));
			COMPOSITION_1_1_WEIGHT = Float.valueOf(config.getProperty("composition_1-1"));
			COMPOSITION_1_N_WEIGHT = Float.valueOf(config.getProperty("composition_1-*"));
			ASSOCIATION_1_1_WEIGHT = Float.valueOf(config.getProperty("association_1-1"));
			ASSOCIATION_1_N_WEIGHT = Float.valueOf(config.getProperty("association_1-*"));
			CLASS_WEIGHT = Float.valueOf(config.getProperty("class"));
			
			COMPOSITION_COMPOSITE_COMPONENT_1_1_PENALTY = Float.valueOf(config.getProperty("COMPOSITION_COMPOSITE_COMPONENT_1_1"));
			COMPOSITION_COMPOSITE_COMPONENT_1_N_PENALTY = Float.valueOf(config.getProperty("COMPOSITION_COMPOSITE_COMPONENT_1_N"));
			COMPOSITION_COMPONENT_COMPOSITE_1_1_PENALTY = Float.valueOf(config.getProperty("COMPOSITION_COMPONENT_COMPOSITE_1_1"));
			COMPOSITION_COMPONENT_COMPOSITE_1_N_PENALTY = Float.valueOf(config.getProperty("COMPOSITION_COMPONENT_COMPOSITE_1_N"));
			ASSOCIATION_1_1_PENALTY = Float.valueOf(config.getProperty("ASSOCIATION_1_1"));
			ASSOCIATION_1_N_PENALTY = Float.valueOf(config.getProperty("ASSOCIATION_1_N"));
			GENERALIZATION_FATHER_CHILD_PENALTY = Float.valueOf(config.getProperty("GENERALIZATION_FATHER_CHILD"));
			GENERALIZATION_CHILD_FATHER_PENALTY = Float.valueOf(config.getProperty("GENERALIZATION_CHILD_FATHER"));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public final static HashMap<String, Float> weightMap = new HashMap<String, Float>();
	static
	{
		//weights for imported attributes
		weightMap.put("attribute", ATTRIBUTE_WEIGHT); //vanilla attribute
		weightMap.put("composition_1-1", COMPOSITION_1_1_WEIGHT);
		weightMap.put("composition_1-*", COMPOSITION_1_N_WEIGHT);
		weightMap.put("association_1-1", ASSOCIATION_1_1_WEIGHT);
		weightMap.put("association_1-*", ASSOCIATION_1_N_WEIGHT);
		weightMap.put("class", CLASS_WEIGHT);
	}
	
	public final static HashMap<String, Float> penaltyMap = new HashMap<String, Float>();
	static
	{
		//penalties for relation types during navigation
		penaltyMap.put(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_1.toString(), COMPOSITION_COMPOSITE_COMPONENT_1_1_PENALTY);
		penaltyMap.put(RelationType.COMPOSITION_COMPOSITE_COMPONENT_1_N.toString(), COMPOSITION_COMPOSITE_COMPONENT_1_N_PENALTY);
		
		penaltyMap.put(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_1.toString(), COMPOSITION_COMPONENT_COMPOSITE_1_1_PENALTY);
		penaltyMap.put(RelationType.COMPOSITION_COMPONENT_COMPOSITE_1_N.toString(), COMPOSITION_COMPONENT_COMPOSITE_1_N_PENALTY);

		penaltyMap.put(RelationType.ASSOCIATION_1_1.toString(), ASSOCIATION_1_1_PENALTY);
		penaltyMap.put(RelationType.ASSOCIATION_1_N.toString(), ASSOCIATION_1_N_PENALTY);

		penaltyMap.put(RelationType.GENERALIZATION_FATHER_CHILD.toString(), GENERALIZATION_FATHER_CHILD_PENALTY);
		penaltyMap.put(RelationType.GENERALIZATION_CHILD_FATHER.toString(), GENERALIZATION_CHILD_FATHER_PENALTY);
	}
	
	
}
