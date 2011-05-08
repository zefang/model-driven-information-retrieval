/*******************************************************************************
 * Contributors:
 *    Stefano Celentano, Lorenzo Furrer
 *******************************************************************************/

package it.polimi.mdir.enrich.records.experiment.b;

import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.datamodel.filter.RecordFilterNotFoundException;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

public class EnrichRecords implements Pipelet {


  private final Log _log = LogFactory.getLog(EnrichRecords.class);
  private final String CONCEPT_TYPE = "CLASS";

  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    
	  System.out.println("DEBUG ENRICH RECORDS: Sono in EnrichRecords");
	  
	  //This array will contain new id to pass through the framework
	  ArrayList<String> newRecordsIds = new ArrayList<String>();
	  int nNewRecords;
	  
	  for (final String id : recordIds) {

		  try {
			//System.out.println("DEBUG ENRICH RECORDS, PROJECT ID: " + blackboard.getRecord(id).getMetadata().getStringValue("projectId"));
			//System.out.println("DEBUG ENRICH RECORDS, CLASS IDS: " + blackboard.getRecord(id).getMetadata().getStringValue("classIds"));
			String classIds = blackboard.getRecord(id).getMetadata().getStringValue("classIds");
			String classNames = blackboard.getRecord(id).getMetadata().getStringValue("classNames");

			
			//Tokenize classIds and classNames string into array string
			String[] classIdsArray = classIds.split("\\s");
			String[] classNamesArray = classNames.split("\\s");

			
			//For each class create a new record (a copied one)
			for (int i=0; i<classIdsArray.length; i++) {
				
				String classId = classIdsArray[i];
				String className = classNamesArray[i];
				
				Record copy = blackboard.copyRecord(id, classId);
				
				//Adding new id to newRecordsIds
				newRecordsIds.add(classId);
				
				copy.getMetadata().put("conceptId", classId);
				copy.getMetadata().put("conceptType", CONCEPT_TYPE);
				copy.getMetadata().put("Content", className); //TODO cambiare! anche nel bpel!!!
				
				//Apply record filter
				try {
					copy = blackboard.filterRecord(copy, "experimentB");
				} catch (RecordFilterNotFoundException e) {
					e.printStackTrace();
				}
				
				System.out.println("DEBUG ENRICH RECORDS, COPIED RECORD: " + copy.toString());

				//Store record		
				blackboard.setRecord(copy);				
			}
			
			blackboard.commit();	  
		  
		  } catch (BlackboardAccessException e) {
			e.printStackTrace();
		}

	  }
	  
	  nNewRecords = newRecordsIds.size();
	  String[] newRecordsIdsArray = new String[nNewRecords];
	  newRecordsIds.toArray(newRecordsIdsArray);
	  return newRecordsIdsArray;
  
  }

  @Override
  public void configure(final AnyMap config) throws ProcessingException {

  }
}