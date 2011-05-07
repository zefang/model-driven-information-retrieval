/*******************************************************************************
 * Contributors:
 *    Stefano Celentano, Lorenzo Furrer
 *******************************************************************************/

package it.polimi.mdir.enrich.records.experiment.b;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.Pipelet;
import org.eclipse.smila.processing.ProcessingException;

public class EnrichRecords implements Pipelet {


  private final Log _log = LogFactory.getLog(EnrichRecords.class);

  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    for (final String id : recordIds) {

    }
    return recordIds;
  }

  @Override
  public void configure(final AnyMap config) throws ProcessingException {

  }
}