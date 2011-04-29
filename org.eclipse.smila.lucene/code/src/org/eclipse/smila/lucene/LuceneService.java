/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (empolis GmbH) - initial API and implementation, Andreas Schank (Attensity Europe GmbH) -
 * separated API from implementation.
 **********************************************************************************************************************/

package org.eclipse.smila.lucene;

/**
 * base interface for services dealing with Lucene.
 */
public interface LuceneService {

  /**
   * name of bundle. Used in configuration reading.
   */
  String BUNDLE_NAME = "org.eclipse.smila.lucene";

  /**
   * name of configuration file. Hardcoded for now (or fallback), configuration properties should be received from
   * configuration service later.
   */
  String CONFIG_FILE_MAPPINGS = "Mappings.xml";

  /**
   * Name of the Lucene index field containing the id value.
   */
  String ID_FIELD = "ID";
}
