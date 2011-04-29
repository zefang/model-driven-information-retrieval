package org.eclipse.smila.processing.bpel.pipelet;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.processing.ProcessingException;
import org.eclipse.smila.processing.Pipelet;

/**
 * Test pipelet/service that appends a literal value to a certain attribute.
 * 
 * @author jschumacher
 * 
 */
public class AddLiteralPipelet implements Pipelet {

  /**
   * the attribute I change.
   */
  public static final String ATTRIBUTE = AddLiteralPipelet.class.getName();

  /**
   * I add values $VALUE_PREFIX + index.
   */
  public static final String VALUE_PREFIX = "SMILA #";

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.Pipelet#process(org.eclipse.smila.blackboard.Blackboard,
   *      org.eclipse.smila.datamodel.id.Id[])
   */
  @Override
  public String[] process(final Blackboard blackboard, final String[] recordIds) throws ProcessingException {
    for (int i = 0; i < recordIds.length; i++) {
      try {
        final Value lit = blackboard.getDataFactory().createStringValue(VALUE_PREFIX + i);
        final Any current = blackboard.getMetadata(recordIds[i]).get(ATTRIBUTE);
        if (current == null) {
          blackboard.getMetadata(recordIds[i]).put(ATTRIBUTE, lit);
        } else {
          final AnySeq multi = blackboard.getDataFactory().createAnySeq();
          multi.add(current);
          multi.add(lit);
          blackboard.getMetadata(recordIds[i]).put(ATTRIBUTE, multi);
        }
        
      } catch (final BlackboardAccessException ex) {
        throw new ProcessingException(ex);
      }
    }
    return recordIds;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.IPipelet
   *      #configure(org.eclipse.smila.processing.configuration.PipeletConfiguration)
   */
  @Override
  public void configure(final AnyMap configuration) throws ProcessingException {
    // nothing to do
  }

}
