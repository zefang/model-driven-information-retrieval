package it.polimi.mdir.solr.test;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import java.net.*;

public class TestServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private String[] experiments = {"A", "B", "C"};
	private String[] urls = {"http://localhost:8983/solr/text_experiment_A/select?qf=content&fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on", 
							 "http://localhost:8983/solr/text_experiment_B/select?qf=content&fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on", 
							 "http://localhost:8983/solr/text_experiment_C/select?qf=content&fl=*%2Cscore&qt=PLDisMaxQParserPlugin&start=0&rows=10&wt=standard&debugQuery=on"};
	
	String query = "";
	String mm = "";
		
	  public void init () throws ServletException {
	  }
	
	  public void doGet (HttpServletRequest req, HttpServletResponse res)
	    throws ServletException, IOException {
	
		  query = req.getParameter("q");
		  mm = req.getParameter("mm");
		  
		  // Preparing the urls
		  for (int i=0; i<urls.length; i++) {
			  urls[i] = urls[i].concat("&q=" + query);
			  urls[i] = urls[i].concat("&mm=" + mm);		  
		  }
	      
		  // This string will contain the response from the servlet which is called
		  String response = "";
		  
		  for (int i=0; i<experiments.length; i++) {
			  // New file		  
			  BufferedWriter file = new BufferedWriter(new FileWriter("result" + experiments[i] + ".xml"));
			  
			  // Open connection
			  URL url = new URL(urls[i]);
			  URLConnection connection = url.openConnection();
			  
			  // Config
			  connection.setDoInput(true);
			  			  
			  // Read in the servlet response
		      BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));      
			 
		      // Write to file
		      while ((response = in.readLine()) != null)
		    	  	file.write(response + '\n');
		      
		      file.close();
		    	  
		      in.close();
		  }
	  }
	
	  public void doPost (HttpServletRequest  req, HttpServletResponse  res)
	    throws ServletException, IOException {
	  }
	
	  public void destroy () {
	  }
	
	  public String getServletInfo () {
	    return "....";
	  }
}