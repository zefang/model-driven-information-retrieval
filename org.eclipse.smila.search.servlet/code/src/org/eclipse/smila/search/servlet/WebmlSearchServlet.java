package org.eclipse.smila.search.servlet;


import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.ParserConfigurationException;

import org.apache.commons.lang.StringUtils;
import org.eclipse.smila.search.api.SearchService;
import org.eclipse.smila.search.api.helper.QueryBuilder;
import org.eclipse.smila.search.servlet.activator.Activator;
import org.eclipse.smila.utils.xml.XMLUtils;
import org.eclipse.smila.utils.xml.XMLUtilsException;
import org.w3c.dom.Document;


/**
 * A copy-paste of org.eclipse.smila.search.servlet.SMILASearchServlet, 
 * but at the end it redirects to the webml presentation JSP page. 
 */
public class WebmlSearchServlet extends SMILASearchServlet {

	private static final long serialVersionUID = -442353476055138180L;
	
	/**
	 * In this case the default pipeline is the webml pipeline.
	 */
	private static final String DEFAULT_PIPELINE = "WebmlSearchPipeline";
	
	/**
	 * Default stylesheet name.
	 */
	private static final String DEFAULT_STYLESHEET = "WebmlSearchDefault";
	
	  /**
	   * extract query parameters from request, create SMILA Query record and send it to a SearchService, transform the DOM
	   * result to HTML using an XSLT stylesheet.
	   * Then it redirects to the Webml Presentation JSP page.
	   *
	   * @param request
	   *          HTTP request
	   * @param response
	   *          HTTP response
	   * @throws ServletException
	   *           error during processing
	   * @throws IOException
	   *           error writing result to response stream
	   */
	  protected void processRequest(final HttpServletRequest request, final HttpServletResponse response)
	    throws ServletException, IOException {
		  
	    try {
	      request.setCharacterEncoding("UTF-8");
	    } catch (final UnsupportedEncodingException e) {
	      throw new ServletException("unable to set request encoding to UTF-8");
	    }
	    QueryBuilder query = null;
	    
	    final HttpRequestParser parser = new HttpRequestParser(DEFAULT_PIPELINE);
	    query = parser.parse(request);
	    
	    final String showXml = query.getMetadata().getStringValue("showXml");
	    final SearchService searchService = Activator.getSearchService();
	    Document resultDoc = null;
	    try {
	      if (searchService == null) {
//	        resultDoc =
//	          getErrorBuilder().buildError(
//	            new ServletException(
//	              "The SearchService is not available. Please wait a moment and try again."));
	      } else {
	    	  resultDoc = query.executeRequestXml(searchService);
	      //  appendIndexList(resultDoc);
	      }
	    } catch (final ParserConfigurationException ex) {
	      throw new ServletException(
	        "Error creating an XML result to display. Something is completely wrong in the SMILA setup.", ex);
	    }
	    String stylesheet = query.getMetadata().getStringValue("style");
	    if (StringUtils.isEmpty(stylesheet)) {
	      stylesheet = DEFAULT_STYLESHEET;
	    }
	    try {
	      byte[] result = null;
	      if (showXml != null && Boolean.valueOf(showXml)) {
	        response.setContentType("text/xml");
	        result = XMLUtils.stream(resultDoc.getDocumentElement(), false);
	      } else {
	        response.setContentType("text/html;charset=UTF-8");
	        result = transform(resultDoc, stylesheet);
	      }
	      
	      String queryString = query.getMetadata().getStringValue("query"); 
	      if (queryString == null) {
	    	  response.getOutputStream().write(result);
		      response.getOutputStream().flush();  
	      } else {
	    	  response.sendRedirect("http://localhost:8983/solr/admin/testPresentationWebml.jsp?queryString="+queryString);
	      }
	      
	    } catch (final XMLUtilsException e) {
	      e.printStackTrace();
	    }
	  }
	  
}
