/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (empolis GmbH) - initial API and implementation
 *    Andreas Weber (Attensity Europe GmbH) - removed processing services as BPEL pipeline extensions
 *******************************************************************************/
package org.eclipse.smila.processing.bpel;

import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.processing.Pipelet;

/**
 * Object for managing Pipelet instances.
 * 
 * @author jschumacher
 */
public class PipeletHolder {

  /**
   * serializable because of super class.
   */
  private static final long serialVersionUID = 1L;

  /**
   * key of activity.
   */
  private String _key;

  /**
   * Java class name of pipelet.
   */
  private String _className;

  /**
   * BPEL input variable name.
   */
  private String _inputVariable;

  /**
   * BPEL output variable name.
   */
  private String _outputVariable;

  /**
   * parsed pipelet configuration.
   */
  private AnyMap _configuration;

  /**
   * pipelet instance object.
   */
  private Pipelet _pipelet;

  /**
   * performance counter for this adapter.
   */
  private ProcessingPerformanceCounter _counter;

  /**
   * create instance.
   */
  public PipeletHolder() {
    super();
  }

  /**
   * @return Java class name of pipelet.
   */
  public String getClassName() {
    return _className;
  }

  /**
   * @param className
   *          set Java class name of pipelet.
   */
  public void setClassName(final String className) {
    this._className = className;
  }

  /**
   * 
   * @return get parsed pipelet configuration.
   */
  public AnyMap getConfiguration() {
    return _configuration;
  }

  /**
   * 
   * @param configuration
   *          set parsed pipelet configuration.
   */
  public void setConfiguration(final AnyMap configuration) {
    this._configuration = configuration;
  }

  /**
   * 
   * @return the pipelet instance, if the class is available already.
   */
  public Pipelet getPipelet() {
    return _pipelet;
  }

  /**
   * 
   * @param pipelet
   *          a new pipelet instance.
   */
  public void setPipelet(final Pipelet pipelet) {
    this._pipelet = pipelet;
  }

  /**
   * @return a description of this adapter, e.g. for logging.
   */
  public String getPrintName() {
    return "pipelet " + getClassName();
  }

  /**
   * @return counter of this adapter.
   */
  public ProcessingPerformanceCounter getCounter() {
    return _counter;
  }

  /**
   * @param counter
   *          a new performance counter
   */
  public void setCounter(final ProcessingPerformanceCounter counter) {
    _counter = counter;
  }

  /**
   * @return key of activity
   */
  public String getKey() {
    return _key;
  }

  /**
   * @param key
   *          new key
   */
  public void setKey(final String key) {
    _key = key;
  }

  /**
   * 
   * @return BPEL output variable name.
   */
  public String getOutputVariable() {
    return _outputVariable;
  }

  /**
   * 
   * @param outputVariable
   *          set BPEL output variable name.
   */
  public void setOutputVariable(final String outputVariable) {
    this._outputVariable = outputVariable;
  }

  /**
   * 
   * @return BPEL input variable name.
   */
  public String getInputVariable() {
    return _inputVariable;
  }

  /**
   * 
   * @param inputVariable
   *          set BPEL input variable name.
   */
  public void setInputVariable(final String inputVariable) {
    this._inputVariable = inputVariable;
  }
}
