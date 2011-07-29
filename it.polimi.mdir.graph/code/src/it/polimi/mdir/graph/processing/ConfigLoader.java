package it.polimi.mdir.graph.processing;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigLoader {

	public static String UML_PATH = "";
	public static String GRAPHML_PATH = "";
	public static String SERIALIZATION_PATH = "";
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			config.load(ConfigLoader.class.getClassLoader().getResourceAsStream("configuration.properties"));
			
			UML_PATH = config.getProperty("UML_PATH");
			GRAPHML_PATH = config.getProperty("GRAPHML_PATH");
			SERIALIZATION_PATH = config.getProperty("SERIALIZATION_PATH");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
