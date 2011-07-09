package it.polimi.mdir.webml.pipelet;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;
import it.polimi.mdir.webml.ConfigLoader;
import it.polimi.mdir.xquery.XQueryWrapper;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;


/**
 * 
 * This Pipelet gets the SMILA record containing information on 
 * a whole WebML project and splits them to an Area granularity 
 * generating one record per Area.
 * 
 */
public class SplitPipelet implements Pipelet {

	private static int count = 0; 
	private static final String CONCEPT_TYPE = "Area";
	private static final String XQUERY_PATH = "xQueryPath";
	
	private final Log _log = LogFactory.getLog();

	private AnyMap _configuration;
	
	private String _xQueryPath; 
	
	@Override
	public void configure(AnyMap configuration) throws ProcessingException {
		_configuration = configuration;
		_xQueryPath = _configuration.getStringValue(XQUERY_PATH);
	}

	@Override
	public String[] process(Blackboard blackboard, String[] recordIds)
			throws ProcessingException {

		System.out.println("Start Splitting: " + ++count);
		System.out.println("Split -> recordids.length: " + recordIds.length);
		//This array will contain new id to pass through the framework
		final ArrayList<String> newRecordsIds = new ArrayList<String>();
		final int nNewRecords;
		for (final String id : recordIds) {
			String projectId = "";
			try {
				projectId = blackboard.getRecord(id).getMetadata().getStringValue("projectId");
				System.out.println("Split -> projectId: " + projectId);
				
				//construct content field
				final String xmiContent = blackboard.getRecord(id).getMetadata().getStringValue("xmiContent");
				Document doc = generateNewDocInstance(xmiContent);
				NodeList packedElements = doc.getElementsByTagName("packagedElement");
				for (int i = 0; i < packedElements.getLength(); i++) {
					if (packedElements.item(i).getNodeType() == Node.ELEMENT_NODE) {
						Element el = (Element) packedElements.item(i); 
						if (el.getAttribute("xmi:type").equals("webml:Area")) {
							//Save parents' nodes
							//Save all the internal things (OperationUnits)
							//Save other subareas
						}
					}
				}
				
				/*
				final String xmiContent = blackboard.getRecord(id).getMetadata().getStringValue("xmiContent");
				XQueryWrapper xq = new XQueryWrapper(_xQueryPath + "/getAreaIds.xquery");
				xq.bindVariable("document", xmiContent);
				ArrayList<String> areaIds = xq.executeQuery();
				
				Iterator<String> it = areaIds.iterator();
				System.out.println(areaIds.size());
				while (it.hasNext()) {
					System.out.println(it.next());
				}
				*/
			} catch (Exception e){
				e.printStackTrace();
			}
		}
		return recordIds;
	}
	
	
	private Document generateNewDocInstance(String f) {
		Document doc = null;
		try {
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
			DocumentBuilder db = dbf.newDocumentBuilder();
			InputSource is = new InputSource();
			is.setCharacterStream(new StringReader(f));
			doc = db.parse(is);
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return doc;
	}

}
