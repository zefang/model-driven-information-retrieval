package it.polimi.mdir.graph;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigLoader {

	public static String XQUERY_PATH = "";
	public static String UML_PATH = "";
	public static String RESULT_PATH = "";
	public static String GRAPHML_PATH = "";
	public static String XQUERY_GRAPH_PATH = "";
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			//FileInputStream in = new FileInputStream("configuration.properties"); //TODO trovare un modo di parametrizzare sta cosa!!!
			FileInputStream in = new FileInputStream("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.graph/configuration.properties");
			config.load(in);
			in.close();
			
			XQUERY_PATH = config.getProperty("XQUERY_PATH");
			UML_PATH = config.getProperty("UML_PATH");
			RESULT_PATH = config.getProperty("RESULT_PATH");
			GRAPHML_PATH = config.getProperty("GRAPHML_PATH");
			XQUERY_GRAPH_PATH = config.getProperty("XQUERY_GRAPH_PATH");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
