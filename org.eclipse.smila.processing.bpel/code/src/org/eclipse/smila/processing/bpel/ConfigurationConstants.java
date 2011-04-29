/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (empolis GmbH) - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.smila.processing.bpel;

/**
 * Constants used in Processor configuration.
 * 
 * @author jschumacher
 * 
 */
public final class ConfigurationConstants {

  /**
   * name of bundle. Used in configuration reading.
   */
  public static final String BUNDLE_NAME = "org.eclipse.smila.processing.bpel";

  /**
   * name of configuration directory. Hardcoded for now (or fallback), configuration properties should be received from
   * configuration service later.
   */
  public static final String CONFIGURATION_DIR = "configuration/" + BUNDLE_NAME;

  /**
   * name of configuration file. Hardcoded for now (or fallback), configuration properties should be received from
   * configuration service later.
   */
  public static final String CONFIGURATION_FILE = "processor.properties";

  /**
   * configuration property name: directory of BPEL pipeline files in configuration directory = "pipeline.dir".
   */
  public static final String PROP_PIPELINE_DIR = "pipeline.dir";

  /**
   * default value for PROP_PIPELINE_DIR.
   */
  public static final String DEFAULT_PIPELINE_DIR = "pipelines";

  /**
   * prefix of ODE configuration properties in property file.
   */
  public static final String PROP_PREFIX_ODE = "ode.";

  /**
   * configuration property name: name of record filter to use for creating workflow objects = "record.filter". Can be
   * extended by ".&lt;pipeline-name&gt;" to specicy pipeline specific filter.
   */
  static final String PROP_RECORD_FILTER = "record.filter";

  /** prevent instance creation. */
  private ConfigurationConstants() {
    throw new IllegalStateException();
  }
}
