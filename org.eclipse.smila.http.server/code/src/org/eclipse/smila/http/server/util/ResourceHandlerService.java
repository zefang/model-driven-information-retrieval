/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.handler.ResourceHandler;
import org.osgi.service.component.ComponentContext;

/**
 * An implementation of the {@link JettyHandlerService} interface to process requests to static web resources. The
 * actual handler is a {@link ResourceHandler}.
 */
public class ResourceHandlerService extends AJettyHandlerService {
  /** Constant for the ComponentContext property "resourceBase". */
  public static final String PROPERTY_RESOURCEBASE = "resourceBase";

  /** Constant for the ComponentContext property "welcomeFiles". */
  public static final String PROPERTY_WELCOMEFILES = "welcomeFiles";

  /**
   * the actual {@link Handler}.
   */
  private ResourceHandler _resourceHandler;

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   */
  @Override
  protected void activate(final ComponentContext context) {
    super.activate(context);
    _resourceHandler = new ResourceHandler();
    _resourceHandler.setDirectoriesListed(true);
    final String welcomeFiles = (String) context.getProperties().get(PROPERTY_WELCOMEFILES);
    if (welcomeFiles != null && welcomeFiles.length() > 0) {
      _resourceHandler.setWelcomeFiles(welcomeFiles.split("\\s+"));
    }
    final String resourceBase = getConfigPathProperty(context, PROPERTY_RESOURCEBASE);
    _resourceHandler.setResourceBase(resourceBase);
  }

  /**
   * Returns the actual jetty {@link Handler} instance, which in this case is a {@link ResourceHandler} instance.
   * 
   * @return the jetty {@link Handler} instance
   */
  @Override
  public Handler getHandler() {
    return _resourceHandler;
  }

 
}
