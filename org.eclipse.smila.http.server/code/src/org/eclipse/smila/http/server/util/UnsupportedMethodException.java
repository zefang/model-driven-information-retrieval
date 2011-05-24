/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

/**
 * used in HttpHandlers to handle unsupported methods.
 * 
 * @author jschumacher
 * 
 */
public class UnsupportedMethodException extends Exception {
  /**
   * ... is serializable
   */
  private static final long serialVersionUID = 1L;

  /**
   * create exception.
   * 
   * @param message
   *          details.
   */
  public UnsupportedMethodException(final String message) {
    super(message);
  }
}
