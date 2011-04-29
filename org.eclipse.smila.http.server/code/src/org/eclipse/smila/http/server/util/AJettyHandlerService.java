/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import org.eclipse.smila.http.server.JettyHandler;
import org.eclipse.smila.utils.config.ConfigUtils;
import org.osgi.service.component.ComponentContext;

/**
 * base class for declarative services for registering Jetty handlers in the htp server.
 * 
 * @author jschumacher
 * 
 */
public abstract class AJettyHandlerService implements JettyHandler {
  /** Constant for the ComponentContext property "configBundle". */
  public static final String PROPERTY_CONFIGBUNDLE = "configBundle";

  /** the root path of the context. */
  private String _rootContextPath;

  /** the bundle name to read configurations from. */
  private String _configBundle;

  /**
   * read {@link #PROPERTY_ROOTCONTEXTPATH} property.
   * 
   * @param context
   *          OSGi component context
   */
  protected void activate(final ComponentContext context) {
    _rootContextPath = context.getProperties().get(Constants.PROPERTY_ROOTCONTEXTPATH).toString();
    final Object configBundle = context.getProperties().get(PROPERTY_CONFIGBUNDLE);
    if (configBundle != null) {
      _configBundle = configBundle.toString();
    }
  }

  /**
   * Returns the root path of the context.
   * 
   * @return the root context path
   */
  @Override
  public String getRootContextPath() {
    return _rootContextPath;
  }

  /** @return the name of the bundle to read configs from, if set. */
  protected String getConfigBundle() {
    return _configBundle;
  }

  /**
   * read property value. If {@link #PROPERTY_CONFIGBUNDLE} is set, assume that the property value is a path relative to
   * the bundle configuration directory. Else return the original value.
   * 
   * @param context
   *          OSGi component context
   * @param property
   *          property name
   * @return see description.
   */
  protected String getConfigPathProperty(final ComponentContext context, final String property) {
    final String path = context.getProperties().get(property).toString();
    if (_configBundle != null) {
      return ConfigUtils.getConfigFolder(_configBundle, path).getAbsolutePath();
    }
    return path;
  }
}
