/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server;

import org.eclipse.jetty.server.Handler;

/**
 * OSGi service interface to register arbitrary Jetty context handlers in the HttpService.
 */
public interface JettyHandler {
  /**
   * @return the root context path
   */
  String getRootContextPath();

  /**
   * @return the actual jetty handler
   */
  Handler getHandler();
}
