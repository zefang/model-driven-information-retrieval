package it.polimi.mdir.webml;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Properties;

public class WeightRules {

	private static float SITEVIEW_WEIGHT = 0.0f;
	private static float AREA_WEIGHT = 0.0f;
	private static float PAGE_WEIGHT = 0.0f;
	private static float UNIT_WEIGHT = 0.0f;
	private static float LINK_WEIGHT = 0.0f;
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			config.load(ConfigLoader.class.getClassLoader().getResourceAsStream("configuration.properties"));
			
			SITEVIEW_WEIGHT = Float.valueOf(config.getProperty("siteview"));
			AREA_WEIGHT = Float.valueOf(config.getProperty("area"));
			PAGE_WEIGHT = Float.valueOf(config.getProperty("page"));
			UNIT_WEIGHT = Float.valueOf(config.getProperty("unit"));
			LINK_WEIGHT = Float.valueOf(config.getProperty("link"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public final static HashMap<String, Float> weightMap = new HashMap<String, Float>();
	static
	{
		weightMap.put("siteview", SITEVIEW_WEIGHT);
		weightMap.put("area", AREA_WEIGHT);
		weightMap.put("page", PAGE_WEIGHT);
		weightMap.put("unit", UNIT_WEIGHT);
		weightMap.put("link", LINK_WEIGHT);
	}
}