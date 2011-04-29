/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/

package org.eclipse.smila.processing.bpel;

import org.eclipse.smila.management.ManagementAgentLocation;
import org.eclipse.smila.management.ManagementRegistration;

/**
 * combined performance counters for Pipelet measurement. Counters will appear in JMX under "SMILA processing" ->
 * "Pipelet" -> pipeline name -> class name@location. The location could be line number in the BPEL file.
 * 
 * @author jschumacher
 * 
 */
public class PipeletPerformanceCounter extends ProcessingPerformanceCounter {
  /**
   * name of containing pipeline.
   */
  private final String _pipelineName;

  /**
   * 
   * @param pipelineName
   *          name of pipeline
   * @param className
   *          class name of pipelet
   * @param location
   *          location descriptor, e.g. name of invokePipelet element in BPEL file.
   */
  public PipeletPerformanceCounter(final String pipelineName, final String className, final String location) {
    super(location + " (" + className + ")");
    _pipelineName = pipelineName;
    registerAgent();
  }

  /**
   * Gets the pipeline name.
   * 
   * @return the pipeline name
   */
  protected String getPipelineName() {
    return _pipelineName;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.ProcessingPerformanceCounter#getLocation()
   */
  @Override
  public ManagementAgentLocation getLocation() {
    return ManagementRegistration.INSTANCE//
      .getCategory("Processing")//
      .getCategory(getElementType())//
      .getCategory(getPipelineName())//
      .getLocation(getElementName());
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.processing.bpel.ProcessingPerformanceCounter#getElementType()
   */
  @Override
  protected String getElementType() {
    return "Pipelet";
  }

}
