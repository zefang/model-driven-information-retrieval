package it.polimi.mdir.webml.pipelet.search;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;


/**
 * This pipelets forwards the keywords to the WebmlTestServlet
 *
 */
public class WebmlTestServletCallerPipelet implements Pipelet {

	private Log _log = LogFactory.getLog();
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {
		
		try {
			String keywords = blackboard.getRecord(recordIds[0]).getMetadata().getStringValue("keywords");
			
			if (keywords != null) {
				System.out.println("This is WebmlTestServletCallerPipelet");
				
				//TODO parametrize mm and qf
				String q = keywords;
				String mm = "0";
				String qf = "content";
				
				
				String parameters =  URLEncoder.encode("q", "UTF-8") +"="+ URLEncoder.encode(q, "UTF-8");
				  parameters += "&"+ URLEncoder.encode("mm", "UTF-8") +"="+ URLEncoder.encode(mm, "UTF-8");
				  parameters += "&"+ URLEncoder.encode("qf", "UTF-8") +"="+ URLEncoder.encode(qf, "UTF-8");
				
				String url = "http://localhost:8983/solr/testWebml?"+parameters;
				
				URL servletUrl = new URL(url);
				HttpURLConnection.setFollowRedirects(true);
				HttpURLConnection connection = (HttpURLConnection) servletUrl.openConnection();
				connection.setRequestMethod("GET");
				connection.setDoInput(true);
			    connection.setDoOutput(true);
				connection.setRequestProperty("Content-Type", "text/xml; charset=utf-8");
			    connection.setUseCaches(false);
			    connection.setDefaultUseCaches(false);
			    connection.setInstanceFollowRedirects(true);
			    connection.setReadTimeout(10000);
			    
				OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream());
				out.write(parameters);
				out.flush();
				out.close();
				
				// Get the response
			    BufferedReader rd = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			    String line;
			    while ((line = rd.readLine()) != null) {
			        System.out.println(line);
			    }
			    rd.close();	
			}
			
		} catch (Exception e) {
			_log.write("Error in WebmltestServletCallerPipelet:" + e.toString());
			e.printStackTrace();
		}
		
		return recordIds;
	}

}
