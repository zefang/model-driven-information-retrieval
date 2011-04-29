/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

/**
 * Some often used constants.
 * 
 * @author jschumacher
 * 
 */
public final class Constants {
  /** Constant for the ComponentContext property "rootContextPath". */
  public static final String PROPERTY_ROOTCONTEXTPATH = "rootContextPath";

  /** Constant for the ComponentContext property "uriPattern" of RequestHandlers. */
  public static final String PROPERTY_URIPATTERN = "uriPattern";

  /** prevent instance creation. */
  private Constants() {
    throw new IllegalStateException();
  }
}
