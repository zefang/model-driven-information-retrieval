package it.polimi.mdir.solr;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.xerces.dom.DOMImplementationImpl;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;

/**
 * This pipelet integrates the Apache Solr's REST API and is designed to index data
 * in the specified core.
 * It gets as BPEL parameters two sequences. the first one contains the SMILA fields
 * of the record that I want to index.<br />
 * The second sequence specifies which Solr fields, defined in the schema.xml, 
 * to use to index each of the entries specified in the first sequence.
 * */
public class SolrIndexerPipelet implements Pipelet {
	
  private AnyMap _configuration;
	
  private static final TransformerFactory TRANSFORMER_FACTORY = TransformerFactory.newInstance();

  private static final String UPDATE = "/update";
  
  //configuration parameter names
  private static final String CORE_NAME = "coreName";
  private static final String COMMIT_WITHIN = "commitWithin";
  private static final String EXECUTION_MODE = "executionMode";
  private static final String SMILA_FIELDS = "smilaFields";
  private static final String SOLR_FIELDS = "solrFields";
  
  //Default values if no parameters are specified
  private long _commitWithin = 10000;
  private String _coreName = "test_core";
  private ExecutionMode _mode = ExecutionMode.ADD;
  
  public enum ExecutionMode {
    ADD, DELETE
  };
  
  private AnySeq _smilaFieldsSeq = null;
  private AnySeq _solrFieldsSeq = null;
  private ArrayList<String> _smilaFields = new ArrayList<String>();
  private ArrayList<String> _solrFields = new ArrayList<String>();
  
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
    
    _smilaFieldsSeq = _configuration.getSeq(SMILA_FIELDS);
	_solrFieldsSeq = _configuration.getSeq(SOLR_FIELDS);
	for (final Any smilaFieldValue : _smilaFieldsSeq) {
		if (smilaFieldValue.isValue()) {
        	_smilaFields.add(((Value) smilaFieldValue).asString());
        }
    }
	for (final Any solrFieldValue : _solrFieldsSeq) {
		if (solrFieldValue.isValue()) {
			_solrFields.add(((Value) solrFieldValue).asString());
        }
    }
  }
  
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
	
	System.out.println("SolrIndexerPipelet -> Start indexing "+recordIds.length+" records");
	  
    final String updateURL = SolrDocumentUtil.HTTP_LOCALHOST + SolrDocumentUtil.SOLR_WEBAPP + _coreName + UPDATE;
    String updateXMLMessage = null;
    URL url = null;
    HttpURLConnection conn = null;
    String logId = null;
    try {
      url = new URL(updateURL);
      conn = (HttpURLConnection) url.openConnection();
      conn.setRequestMethod(SolrDocumentUtil.POST);
      conn.setRequestProperty(SolrDocumentUtil.CONTENT_TYPE, SolrDocumentUtil.TEXT_XML_CHARSET + UTF8);
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
      final Document document = impl.createDocument(null, SolrDocumentUtil.SOLR, null);
      Element add = null;
      if (_mode == ExecutionMode.ADD) {
        add = document.createElement(SolrDocumentUtil.ADD);
      } else {
        add = document.createElement(SolrDocumentUtil.DELETE);
      }
      add.setAttribute(COMMIT_WITHIN, String.valueOf(_commitWithin));

      Element field;
      Text text;
      for (final String id : recordIds) {
    	  System.out.println("Indexing "+_coreName+" -> name: " + blackboard.getRecord(id).getMetadata().getStringValue("className"));
    	  
    	  logId = id;
    	  final Element doc = document.createElement(SolrDocumentUtil.DOC);
    	  add.appendChild(doc);

    	  //Create fields
    	  final AnyMap record = blackboard.getMetadata(id);
    	  for (final String attrName : record.keySet()) {
    		  if (_smilaFields.contains(attrName)) {
    			  int n = _smilaFields.indexOf(attrName);
    			  final Value attributeValue = record.getValue(attrName);
    			  String stringValue = replaceNonXMLChars(attributeValue.asString());
    			  field = document.createElement(SolrDocumentUtil.FIELD);
    			  field.setAttribute(SolrDocumentUtil.NAME, _solrFields.get(n));
    			  text = document.createTextNode(stringValue);
    			  field.appendChild(text);
    			  doc.appendChild(field);
    		  }
    	  }
      }
      
      final Transformer transformer = TRANSFORMER_FACTORY.newTransformer();
      
      final DOMSource source = new DOMSource(add);
      final Writer w = new StringWriter();
      final StreamResult streamResult = new StreamResult(w);
      transformer.transform(source, streamResult);
      updateXMLMessage = streamResult.getWriter().toString();
      conn.setRequestProperty(SolrDocumentUtil.CONTENT_LENGTH, Integer.toString(updateXMLMessage.length()));
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
      //System.out.println("Indexer Response:\n" + response.toString());
    } catch (final Exception e) {
      final String msg =
        "SolrIndexerPipelet -> Error while processing record '" + logId + "' for index '" + _coreName + "': \n" + e.getMessage() + "'.";
      throw new ProcessingException(msg, e);
    } finally {
      if (conn != null) {
        conn.disconnect();
      }
    }
    
    System.out.println("SolrIndexerPipelet -> " + recordIds.length+" records correctly indexed");
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
