/*******************************************************************************
 * Copyright (c) 2008, 2009 empolis GmbH and brox IT Solutions GmbH.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *******************************************************************************/

package org.eclipse.smila.processing;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.datamodel.AnyMap;

/**
 * Interface of Pipelets. Their lifecycle and configuration is managed by the workflow engine. They are not shared by
 * multiple workflows, each occurrence of a pipelet in a workflow uses a different pipelet instance.
 * 
 * Pipelets must have a public no-argument constructor.
 * 
 * The pipelet class name must be registered in META-INF/MANIFEST.MF of the providing bundle using the header name
 * "SMILA-Pipelets". Then they can be detected by the {@link PipeletTracker} service.
 * 
 * <pre>
 * SMILA-Pipelets: org.eclipse.smila.processing.bpel.pipelets.SimpleTestPipelet
 * </pre>
 * 
 * Multiple classes can be registered separeted by comma:
 * 
 * <pre>
 * SMILA-Pipelets: org.eclipse.smila.processing.test.Test1Pipelet,org.eclipse.smila.processing.test.Test2Pipelet
 * </pre>
 * 
 * @author jschumacher
 * 
 */
public interface Pipelet {
  /**
   * set configuration of pipelet. called once after instantiation before the pipelet is actually used in a workflow.
   * 
   * @param configuration
   *          configuration of pipelet.
   * @throws ProcessingException
   *           configuration is not applicable for pipelet (missing properties, wrong datatypes)
   */
  void configure(AnyMap configuration) throws ProcessingException;

  /**
   * process records on Blackboard service.
   * 
   * @param blackboard
   *          Blackboard service managing the records.
   * @param recordIds
   *          Ids of records to process.
   * @return Ids of result records. By default this should be the same as the passed in recordIds unless there is a
   *         specific reason not to do so. This is especially true for SearchPiplets.
   * @throws ProcessingException
   *           error during processing.
   */
  String[] process(Blackboard blackboard, String[] recordIds) throws ProcessingException;
}
