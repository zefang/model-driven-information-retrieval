package it.polimi.mdir.solr.test;

import it.polimi.mdir.test.ExcelUtils.ExcelWriter;

import javax.servlet.*;
import javax.servlet.http.*;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import java.io.*;
import java.net.*;

import jxl.read.biff.BiffException;
import jxl.write.WriteException;

public class WebmlTestServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private static final String[] experiments = {"B", "C"};
	
	String originalQueryString = "";
	String query = "";
	String mm = "";
	String qf = "";
	String sheetTitle = "";
	String writeToSheet = "";
	
	// This string will contain the lines coming from the servlet which is called
	String line = "";
	// This string will contain the response from the servlet which is called
	String response = "";
		
	  public void init () throws ServletException {
	  }
	
	  public void doGet (HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
		  
		  System.out.println("This is WebmlTestServlet");
		 
		  String[] urls = 
		  			{"http://localhost:8983/solr/webml_B/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on",
					 "http://localhost:8983/solr/webml_C/select?fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on"};
		  
		  // Cleaning parameters
		  query = "";
		  mm = "";
		  
		  // Retrieving parameters from the jsp page input form
		  sheetTitle = req.getParameter("sheetTitle");
		  writeToSheet = req.getParameter("writeToSheet");
		  query = req.getParameter("q");
		  originalQueryString = query;
		  mm = req.getParameter("mm");
		  qf = req.getParameter("qf");
		  
		  // Replacing spaces
		  query = query.replaceAll(" ", "+");
		  qf = qf.replaceAll(" ", "+");
		  
		  // Preparing the urls
		  for (int i=0; i<urls.length; i++) {
			  // Query string
			  urls[i] = urls[i].concat("&q=" + query);
			  // Query fields
			  urls[i] = urls[i].concat("&qf=" + qf);
			  
			  // Minimum match
			  urls[i] = urls[i].concat("&mm=" + mm);
		  }	    
		  
		  for (int i=0; i<experiments.length; i++) {
			  // New file		  
			  BufferedWriter file = new BufferedWriter(new FileWriter("result" + experiments[i] + "Webml.xml"));
			  
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
		  if (writeToSheet != null && !writeToSheet.isEmpty()) {
			  ExcelWriter excelWriter = new ExcelWriter();
			  try {
				excelWriter.write(sheetTitle, originalQueryString);
			} catch (BiffException e) {
				e.printStackTrace();
			} catch (WriteException e) {
				e.printStackTrace();
			}
		  }
		  
		  // Redirect to test presentation page
	      res.sendRedirect("./admin/testPresentationWebml.jsp?queryString=" + query);
	  }
	
	  public void doPost (HttpServletRequest  req, HttpServletResponse  res)
	    throws ServletException, IOException {
	  }
	
	  public void destroy () {
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
	
	  public String getServletInfo () {
	    return "....";
	  }
}