/***********************************************************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the 
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this 
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 *               Andreas Weber, Juergen Schumacher (empolis GmbH) - fix for 269967
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.queue.worker.internal.task;

import java.util.Map;
import java.util.Properties;

/**
 * The Interface TaskExecutionService.
 * 
 * @param <ConfigType>
 *          configuration type
 */
public interface TaskExecutionService<ConfigType> {

  /**
   * Execute.
   * 
   * @param config
   *          the config
   * @param idPropertyMap
   *          a map of the record IDs and message properties
   * @param env
   *          the env
   * 
   * @return the resulting record IDs
   * 
   * @throws TaskExecutionException
   *           the task execution exception
   */
  String[] execute(TaskExecutionEnv env, ConfigType config, Map<String, Properties> idPropertyMap)
    throws TaskExecutionException;

}
