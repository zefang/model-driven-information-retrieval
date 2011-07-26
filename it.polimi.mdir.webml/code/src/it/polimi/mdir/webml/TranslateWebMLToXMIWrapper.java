package it.polimi.mdir.webml;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Properties;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class TranslateWebMLToXMIWrapper {

	private static String WEBML_PATH = "";
	private static String OUTPUT_PATH = "";
	private static int numProjects = 0;
	private static Document outputDocument = null;
	
	private static void initialization(String configFilePath){
		Properties config = new Properties();
		FileInputStream in;
		try {
			in = new FileInputStream(configFilePath);
			config.load(in);
			WEBML_PATH = config.getProperty("WEBML_PATH");
			OUTPUT_PATH = config.getProperty("OUTPUT_PATH");
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		if (args.length < 1) {
			System.out.println("Error: Missing parameter\n Correct usage: TranslateWebMLToXMIWrapper path-to-'configuration.properties'-file");
			return;
		}
		initialization(args[0]);
		
		File webmlPath = new File(WEBML_PATH);
		File[] projects = webmlPath.listFiles();
		numProjects = projects.length;
		
		for (int i = 0; i < numProjects; i++) {
			if (projects[i].isDirectory()) {
				DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
				outputDocument = impl.createDocument(null, "webml", null);
				Element webmlProject = outputDocument.createElement("webml:Project");
				
				webmlProject.setAttribute("xmlns:xmi", "http://schema.omg.org/spec/XMI/2.1");
				webmlProject.setAttribute("xmlns:webml", "http://www.webml.org");
				webmlProject.setAttribute("xmi:version", "2.1");
				
				TranslateWebMLToXMI translation = new TranslateWebMLToXMI(WEBML_PATH, outputDocument);
				translation.processProject(projects[i], webmlProject);
				
				writeToFile(webmlProject);
			}
		}

	}
	
	
	private static void writeToFile(Element root) {
		try {
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			transformerFactory.setAttribute("indent-number", 4);
			Transformer transformer = transformerFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.INDENT, "yes");
			
			StringWriter writer = new StringWriter();
			StreamResult result = new StreamResult(writer);
			DOMSource source = new DOMSource(root);
			transformer.transform(source, result);
			
			String outputName = OUTPUT_PATH + root.getAttribute("xmi:id") + ".xmi";
			File resultFile = new File(outputName);
			FileWriter outputWriter = new FileWriter(resultFile);
			outputWriter.write(writer.toString());
			outputWriter.close();
			
			System.out.println(root.getAttribute("name")+"...DONE!");
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	

}
