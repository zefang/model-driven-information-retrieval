package it.polimi.mdir.webml;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class ConfigLoader {

	public static String WEBML_PATH = "";
	public static String OUTPUT_PATH = "";
	
	private static Properties config;
	static {
		try {
			config = new Properties();
			config.load(ConfigLoader.class.getClassLoader().getResourceAsStream("configuration.properties"));
			
			WEBML_PATH = config.getProperty("WEBML_PATH");
			OUTPUT_PATH = config.getProperty("OUTPUT_PATH");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
