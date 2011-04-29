/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import javax.servlet.Servlet;

import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.osgi.service.component.ComponentContext;

/**
 * A prototypical service to register a single servlet in the http server.
 * 
 * @author jschumacher
 * 
 */
public class ServletContextService extends AJettyHandlerService {

  /** property in component description for path to servlet in root context (starts with /). */
  private static final String PROPERTY_SERVLETPATH = "servletPath";

  /** property in component description for class name of servlet. */
  private static final String PROPERTY_SERVLETCLASSNAME = "servletClassName";

  /** the servlet context handler. */
  private ServletContextHandler _handler;

  @Override
  protected void activate(final ComponentContext context) {
    try {
      super.activate(context);
      _handler = new ServletContextHandler(ServletContextHandler.SESSIONS);
      _handler.setContextPath(getRootContextPath());
      final String servletClassName = context.getProperties().get(PROPERTY_SERVLETCLASSNAME).toString();
      final String servletPath = context.getProperties().get(PROPERTY_SERVLETPATH).toString();
      _handler.addServlet(new ServletHolder((Servlet) Class.forName(servletClassName).newInstance()), servletPath);
    } catch (final Exception ex) {
      ex.printStackTrace();
    }
  }

  @Override
  public Handler getHandler() {
    return _handler;
  }

}
