package it.polimi.mdir.test.run;

import it.polimi.mdir.test.ExcelUtils.ExcelWriterBatch;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.Properties;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import jxl.read.biff.BiffException;
import jxl.write.WriteException;

public class BatchTest {
	
	private static final String[] experiments = {"A", "B", "C", "D"};
	
	private static String XML_RESULTS_PATH;
	
	static String originalQueryString = "";
	static String query = "";
	static String mm = "";
	static String qf = "";
	static String bqProjectName = "";
	static String bqClassName = "";
	static String sheetTitle = "";
	static String writeToSheet = "";
	
	// This string will contain the lines coming from the servlet which is called
	static String line = "";
	// This string will contain the response from the servlet which is called
	static String response = "";
	
	public static void main(String[] args) throws IOException {
		
		// Meta-Query Instance label (e.g. MQ1)
		String mqLabel = args[0];
		
		// Read configuration file
		init();
		
		// Read the txt query file and split on crlf
		ReadTextFile reader = new ReadTextFile();
		String queries = reader.readQueryFile().toString();
		String[] queryArray = queries.split("\r\n");

		for(int queryInst=0; queryInst<queryArray.length; queryInst++) {
		
			sheetTitle = mqLabel + "INST" + (queryInst+1);
			
			String[] urls = 
				{"http://localhost:8983/solr/text_experiment_A/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on", 
				 "http://localhost:8983/solr/text_experiment_B/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on",
				 "http://localhost:8983/solr/text_experiment_C/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on",
				 "http://localhost:8983/solr/text_experiment_D/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on"};		  
	
			query = queryArray[queryInst];
			originalQueryString = queryArray[queryInst];
			// Default is OR -> 0%
			mm = "0%";
			// Default is content
			qf = "content";
	
			// Replacing spaces
			query = query.replaceAll(" ", "+");
			qf = qf.replaceAll(" ", "+");
	
			// Preparing the urls
			for (int i=0; i<urls.length; i++) {
				// Query string
				urls[i] = urls[i].concat("&q=" + query);
				// Query fields
				urls[i] = urls[i].concat("&qf=" + qf);
				
			
//				/*
//				 *  Boost query (NOTICE: exp. A has no field className!)
//				 *  both className and projectName
//				 */
//				if(!bqClassName.isEmpty() && i != 0 && !bqProjectName.isEmpty()) {
//				  urls[i] = urls[i].concat("&bq=className:" + bqClassName + "+projectName:" + bqProjectName);
//				// only projectName
//				} else if (!bqProjectName.isEmpty()) {
//				  urls[i] = urls[i].concat("&bq=projectName:" + bqProjectName);
//				// only className 
//				} else if (!bqClassName.isEmpty() && i != 0) {
//				  urls[i] = urls[i].concat("&bq=className:" + bqClassName);
//				}
				
				// Minimum match
				urls[i] = urls[i].concat("&mm=" + mm);
			}	    
	
			for (int i=0; i<experiments.length; i++) {
				
				// Debug code
				System.out.println("---> META-QUERY: [" + mqLabel + "] | STARTING QUERY INSTANCE [" + (queryInst+1) + "]: " + queryArray[queryInst] + " | EXPERIMENT [" + experiments[i] + "] ...");
				
				// New file		  
				BufferedWriter file = new BufferedWriter(new FileWriter(XML_RESULTS_PATH + "result" + (queryInst+1) + "-" + experiments[i] + ".xml"));
		  
				// Open connection
				URL url = new URL(urls[i]);
				URLConnection connection = url.openConnection();
		  
				// Config
				connection.setDoInput(true);
		  			  
				/*
				 *  Read in the servlet response
				 *  When an experiment has no index it throws an exception
				 */
		  
				BufferedReader in = null;
				try {
					in = new BufferedReader(new InputStreamReader(connection.getInputStream()));  
				} catch (Exception e) {
					e.printStackTrace();	  
				}
		 
				// Cleaning response
				response = "";
	    
				// Fetch lines from input
				while ((line = in.readLine()) != null)
					response += line;
	  
				// Writing to file keeping indentation
				file.write(writeXML(response));
	    
				file.close();
	  	  
				in.close();		 
			}
	
			// Write a new excel sheet 
			ExcelWriterBatch excelWriterBatch = new ExcelWriterBatch();
			try {
				excelWriterBatch.write(sheetTitle, originalQueryString, (queryInst+1));
			} catch (BiffException e) {
				e.printStackTrace();
			} catch (WriteException e) {
				e.printStackTrace();
			}
			
			// Debug code
			System.out.println("... OK: META-QUERY: [" + mqLabel + "] | QUERY INSTANCE [" + (queryInst+1) + "]: " + queryArray[queryInst]);
			
		}
	}

	// Write XML to file keeping indentation
	  private static String writeXML(String input, int indent) {
		    try {
		        Source xmlInput = new StreamSource(new StringReader(input));
		        StringWriter stringWriter = new StringWriter();
		        StreamResult xmlOutput = new StreamResult(stringWriter);
		        TransformerFactory transformerFactory = TransformerFactory.newInstance();
		        transformerFactory.setAttribute("indent-number", indent);
		        javax.xml.transform.Transformer transformer = transformerFactory.newTransformer(); 
		        transformer.setOutputProperty(OutputKeys.INDENT, "yes");
		        transformer.transform(xmlInput, xmlOutput);
		        return xmlOutput.getWriter().toString();
		    } catch (Exception e) {
		        throw new RuntimeException(e);
		    }
		}

		private static String writeXML(String input) {
		    return writeXML(input, 2);
		}
		
		private static void init() throws IOException {
			
			// Load properties
			Properties pathConfig = new Properties();
			FileInputStream in = new FileInputStream("pathConfig.properties");
			pathConfig.load(in);
			in.close();

			XML_RESULTS_PATH = pathConfig.getProperty("XML_RESULTS");
			
		}

}
