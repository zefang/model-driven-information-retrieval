package it.polimi.mdir.dummybundle;

import java.util.ArrayList;

import it.polimi.mdir.xquery.XQueryWrapper;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.recordstorage.RecordStorage;
import org.eclipse.smila.recordstorage.RecordStorageException;

/**
 * 
 * */
public class DummyPipelet implements Pipelet {

  private final String SOURCE_ATT = "source_attribute_name";

  private final String TARGET_ATT = "target_attribute_name";

  private String _sourceAttr = "";

  private String _targetAttr = "";

  private final Log _log = LogFactory.getLog(DummyPipelet.class);

  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
	
	  System.out.println("Sono in DummyPipelet");
	  String id = recordIds[0];
	  try {
		Record myRecord = blackboard.getRecord(id);
		Record myCopiedRecord = blackboard.copyRecord(id, "5kpokpo");
		myCopiedRecord.getMetadata().put("attributo", "valore");
		System.out.println("myCopiedRecord.getMetadata().getStringValue(\"attributo\"): " + myCopiedRecord.getMetadata().getStringValue("attributo"));
		blackboard.setRecord(myCopiedRecord);
		blackboard.commit();
		
	} catch (BlackboardAccessException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  
//    for (final String id : recordIds) {
//      try {
//        String inValue = "";
//        String outValue = "";
//
//        if (blackboard.getMetadata(id).containsKey(_sourceAttr)) {
//          inValue = blackboard.getMetadata(id).getStringValue(_sourceAttr);
//        }
//
//        outValue = inValue + " --- Hello world!!!";
//
//        final Value outLiteral = blackboard.getDataFactory().createStringValue(outValue);
//        blackboard.getMetadata(id).put(_targetAttr, outLiteral);
//
//      } catch (final Exception e) {
//        _log.error("Error while calling HelloWorldPipelet for record: '" + id + "':" + e.getMessage(), e);
//        throw new ProcessingException(e);
//      }
//    }
//    
//    XQueryWrapper xq = new XQueryWrapper("C:/Users/Lox/workspaceSMILA/it.polimi.mdir.dummybundle/xquery/getClasses.xquery");
//    xq.bindVariable("document", "C:/Users/Lox/workspaceSMILA/it.polimi.mdir.dummybundle/xquery/PetriNet_extended.uml");
//    ArrayList<String> list = xq.executeQuery();
//    System.out.println(list.get(0).toString());
//    
    
    return recordIds;
  }

  @Override
  public void configure(final AnyMap config) throws ProcessingException {
    _sourceAttr = config.getStringValue(SOURCE_ATT);
    _targetAttr = config.getStringValue(TARGET_ATT);
  }
}
