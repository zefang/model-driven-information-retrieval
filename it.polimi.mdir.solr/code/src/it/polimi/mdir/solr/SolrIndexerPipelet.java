package it.polimi.mdir.solr;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.integration.solr.SolrResponseHandler;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/**
 * This pipelet integrates the Apache Solr's REST API and is design to index data
 * in the specified core.
 * 
 * */
public class SolrIndexerPipelet implements Pipelet {
	
  private AnyMap _configuration;
	
  //Solr Http constants  
  private static final String CONTENT_TYPE = "Content-Type";
  private static final String CONTENT_LENGTH = "Content-Length";
  private static final String RESPONSE_HEADER = "ResponseHeader";
  private static final String META_DATA = "MetaData";
  private static final String TEXT_XML_CHARSET = "text/xml; charset=";
  private static final String POST = "POST";
  private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();
  
  private static final String HTTP_LOCALHOST = "http://localhost";
  private static final String SOLR_WEBAPP = ":8983/solr/";
  private static final String UPDATE = "/update";
  
  //Solr document constants
  private static final String FIELD = "field";
  private static final String ADD = "add";
  private static final String DELETE = "delete";
  
  //configuration parameter names
  private static final String CORE_NAME = "coreName";
  private static final String COMMIT_WITHIN = "commitWithin";
  private static final String EXECUTION_MODE = "executionMode";
  
  //Default values if no parameters are specified
  private long _commitWithin = 10000;
  private String _coreName = "test_core";
  private ExecutionMode _mode = ExecutionMode.ADD;
  
  public enum ExecutionMode {
    ADD, DELETE
  };
  
  public static final String UTF8 = "utf-8";

  @Override
  public void configure(final AnyMap config) throws ProcessingException {
    _configuration = config;
    if (config.containsKey(EXECUTION_MODE)) {
      try {
        _mode = ExecutionMode.valueOf(_configuration.getStringValue(EXECUTION_MODE));
      } catch (final Exception iae) {
        final String msg =
          "Error while configuring SolrPipelet: mode '" + _configuration.get(EXECUTION_MODE)
            + "' is not supported!";
        throw new ProcessingException(msg, iae);
      }
    }
    // Indexing configuration parameters
    if (_configuration.containsKey(COMMIT_WITHIN)) {
      _commitWithin = _configuration.getLongValue(COMMIT_WITHIN);
    }

    //if no parameter is specified, default value "test_core" is used
    if (_configuration.containsKey(CORE_NAME)) {
      _coreName = _configuration.getStringValue(CORE_NAME);
    }
  }
  
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    final String updateURL = HTTP_LOCALHOST + SOLR_WEBAPP + _coreName + UPDATE;
    String updateXMLMessage = null;
    URL url = null;
    HttpURLConnection conn = null;
    String logId = null;
    try {
      url = new URL(updateURL);
      conn = (HttpURLConnection) url.openConnection();
      conn.setRequestMethod(POST);
      conn.setRequestProperty(CONTENT_TYPE, TEXT_XML_CHARSET + UTF8);
      conn.setUseCaches(false);
      conn.setDoOutput(true);
      conn.setDoInput(true);
      conn.setReadTimeout(10000);
    } catch (final Exception e) {
      final String msg = "Error while opening Solr connection: '" + e.getMessage() + "'";
      throw new ProcessingException(msg, e);
    }
    try {
      final DOMImplementation impl = DOMImplementationImpl.getDOMImplementation();
      final Document document = impl.createDocument(null, SolrResponseHandler.SOLR, null);
      Element add = null;
      if (_mode == ExecutionMode.ADD) {
        add = document.createElement(ADD);
      } else {
        add = document.createElement(DELETE);
      }
      add.setAttribute(COMMIT_WITHIN, String.valueOf(_commitWithin));

      for (final String id : recordIds) {
        logId = id;
        final Element doc = document.createElement(SolrResponseHandler.DOC);
        add.appendChild(doc);

        // Create id attribute
        Element field = document.createElement(FIELD);
        field.setAttribute(SolrResponseHandler.NAME, SolrResponseHandler.ID);
        final String idEncoded = URLEncoder.encode(id, UTF8);
        Text text = document.createTextNode(idEncoded);
        field.appendChild(text);
        doc.appendChild(field);

        // Create all other attributes
        final AnyMap record = blackboard.getMetadata(id);
        for (final String attrName : record.keySet()) {
          if (!attrName.startsWith(META_DATA) && !attrName.startsWith(RESPONSE_HEADER)) {
            final Any attributeValue = record.get(attrName);
            for (final Any any : attributeValue) {
              if (any.isValue()) {
                final Value value = (Value) any;
                String stringValue = null;
                if (value.isDate()) {
                  final SimpleDateFormat df = new SimpleDateFormat(SolrResponseHandler.DATE_FORMAT_PATTERN);
                  stringValue = df.format(value.asDate());
                } else if (value.isDateTime()) {
                  final SimpleDateFormat df = new SimpleDateFormat(SolrResponseHandler.DATE_FORMAT_PATTERN);
                  stringValue = df.format(value.asDateTime());
                } else {
                  stringValue = replaceNonXMLChars(value.asString());
                }
                field = document.createElement(FIELD);
                field.setAttribute(SolrResponseHandler.NAME, attrName);
                text = document.createTextNode(stringValue);
                field.appendChild(text);
                doc.appendChild(field);
              }
            }
          }
        }
      }
      final Transformer transformer = TRANSFORMER_FACTORY.newTransformer();
      
      final DOMSource source = new DOMSource(add);
      final Writer w = new StringWriter();
      final StreamResult streamResult = new StreamResult(w);
      transformer.transform(source, streamResult);
      updateXMLMessage = streamResult.getWriter().toString();
      conn.setRequestProperty(CONTENT_LENGTH, Integer.toString(updateXMLMessage.length()));
      final DataOutputStream os = new DataOutputStream(conn.getOutputStream());
      os.write(updateXMLMessage.getBytes(UTF8));
      os.flush();
      os.close();

      final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
      String line;
      final StringBuffer response = new StringBuffer();
      while ((line = rd.readLine()) != null) {
        response.append(line);
        response.append('\r');
      }
      rd.close();
      // System.out.println("Response:\n" + response.toString());
    } catch (final Exception e) {
      final String msg =
        "Error while processing record '" + logId + "' for index '" + _coreName + "': " + e.getMessage() + "'.";
      throw new ProcessingException(msg, e);
    } finally {
      if (conn != null) {
        conn.disconnect();
      }
    }
    return recordIds;
  }



  /**
   * This method replaces valid UTF-8 characters which are not allowed in XML with spaces.
   * 
   * @param source
   *          - the original source string
   * @return The filtered string
   */
  public static String replaceNonXMLChars(final String source) {
    if (source == null) {
      return null;
    }
    final StringBuffer sb = new StringBuffer();
    final char[] charArray = source.toCharArray();
    for (final char c : charArray) {
      if (c != '\u0000' && c != '\u0001' && c != '\u0002' && c != '\u0003' && c != '\u0004' && c != '\u0005'
        && c != '\u0006' && c != '\u0007' && c != '\u0008' && c != '\u000B' && c != '\u000C' && c != '\u000E'
        && c != '\u000F' && c != '\u0010' && c != '\u0011' && c != '\u0012' && c != '\u0013' && c != '\u0014'
        && c != '\u0015' && c != '\u0016' && c != '\u0017' && c != '\u0018' && c != '\u0019' && c != '\u001A'
        && c != '\u001B' && c != '\u001C' && c != '\u001D' && c != '\u001E' && c != '\u001F' && c != '\uFFFE'
        && c != '\uFFFF') {
        sb.append(c);
      } else {
        sb.append(' ');
      }
    }
    return sb.toString();
  }
}
