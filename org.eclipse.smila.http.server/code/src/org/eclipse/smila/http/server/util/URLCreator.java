/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import java.net.MalformedURLException;
import java.net.URL;

/**
 * Utility class to create URLs in Httphandlers and RequestHandlers.
 * 
 * @author jschumacher
 */
public final class URLCreator {

  /**
   * String constant for the HTTP protocol.
   */
  public static final String HTTP_PTOTOCOL = "http";

  /**
   * Default constructor made private to avoid instance creation.
   */
  private URLCreator() {
  }

  /**
   * Create a HTTP URL with the given parameters.
   * 
   * @param host
   *          the host name
   * @param path
   *          the url path
   * @return a URL
   * @throws MalformedURLException
   *           if the URL cannot be created
   */
  public static URL create(final String host, final String path) throws MalformedURLException {
    return new URL(HTTP_PTOTOCOL + "://" + host + path);
  }

  /**
   * Create a HTTP URL with the given parameters. The URL is created by appending the pathToAppend to the requestURI.
   * Missing slashes are added if necessary. Any parameters in the requestURI are removed.
   * 
   * @param requestHost
   *          the Host request-header
   * @param requestUri
   *          the uri the request was issued at
   * @param pathToAppend
   *          the path to append to the request uri
   * @return a URL
   * @throws MalformedURLException
   *           if the URL cannot be created
   */
  public static URL create(final String requestHost, final String requestUri, final String pathToAppend)
    throws MalformedURLException {
    String path = requestUri;

    if (!path.startsWith("/")) {
      path = "/" + path;
    }

    final int pos = path.indexOf("?");
    if (pos >= 0) {
      path = path.substring(0, pos);
    }
    if (!path.endsWith("/") && !pathToAppend.startsWith("/")) {
      path += "/";
    }
    path += pathToAppend;
    if (!path.endsWith("/")) {
      path += "/";
    }
    return create(requestHost, path);
  }
}
