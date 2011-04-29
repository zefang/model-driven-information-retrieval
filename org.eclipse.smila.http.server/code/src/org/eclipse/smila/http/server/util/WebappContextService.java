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
import org.eclipse.jetty.webapp.WebAppContext;
import org.eclipse.smila.utils.config.ConfigUtils;
import org.osgi.service.component.ComponentContext;

/**
 * An implementation of the {@link JettyHandlerService} interface to process requests to static web resources. The
 * actual handler is a {@link ResourceHandler}.
 */
public class WebappContextService extends AJettyHandlerService {

  /** Constant for the ComponentContext property "webappDir". */
  public static final String PROPERTY_WEBAPP_DIR = "webappDir";

  /** filename of webapp defaults descriptor. */
  private static final String WEBDEFAULT_XML = "webdefault.xml";

  /** location of webapp descriptor inside webapp directory. */
  private static final String DESCRIPTOR_LOCATION = "/WEB-INF/web.xml";

  /** the actual {@link Handler}. */
  private WebAppContext _context;

  /**
   * DS activate method.
   * 
   * @param context
   *          ComponentContext
   */
  @Override
  protected void activate(final ComponentContext context) {
    super.activate(context);
    _context = new WebAppContext();
    _context.setContextPath(getRootContextPath());
    final String webapp = getConfigPathProperty(context, PROPERTY_WEBAPP_DIR);
    _context.setResourceBase(webapp);
    _context.setDescriptor(webapp + DESCRIPTOR_LOCATION);
    _context.setParentLoaderPriority(true);
    _context
      .setDefaultsDescriptor(ConfigUtils.getConfigFolder(getConfigBundle(), WEBDEFAULT_XML).getAbsolutePath());
  }

  /**
   * Returns the actual jetty {@link Handler} instance, which in this case is a {@link ResourceHandler} instance.
   * 
   * @return the jetty {@link Handler} instance
   */
  @Override
  public Handler getHandler() {
    return _context;
  }

}
