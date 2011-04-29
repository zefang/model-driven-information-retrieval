package org.eclipse.smila.connectivity.framework.agent.jobfile;

import org.eclipse.smila.datamodel.Record;

/**
 * Interface JobFileHandler that is used by JobFileReader to add or delete parsed Records and Ids.
 */
public interface JobFileHandler {
  /**
   * Add the given record.
   * 
   * @param record
   *          the record to add
   */
  void add(final Record record);

  /**
   * Delete the given record.
   * 
   * @param record
   *          the record to delete
   */
  void delete(final Record record);
}
