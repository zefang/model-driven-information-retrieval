package it.polimi.mdir.graph.processing;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigLoader {

	public static String XQUERY_PATH = "";
	public static String UML_PATH = "";
	public static String RESULT_PATH = "";
	public static String GRAPHML_PATH = "";
	public static String XQUERY_GRAPH_PATH = ""; //TODO This has become obsolete.
	public static String SERIALIZATION_PATH = "";
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			config.load(ConfigLoader.class.getClassLoader().getResourceAsStream("configuration.properties"));
			
			XQUERY_PATH = config.getProperty("XQUERY_PATH");
			UML_PATH = config.getProperty("UML_PATH");
			RESULT_PATH = config.getProperty("RESULT_PATH");
			GRAPHML_PATH = config.getProperty("GRAPHML_PATH");
			XQUERY_GRAPH_PATH = config.getProperty("XQUERY_GRAPH_PATH");
			SERIALIZATION_PATH = config.getProperty("SERIALIZATION_PATH");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
