/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Juergen Schumacher (Attensity Europe GmbH) - initial API and implementation
 *******************************************************************************/
package org.eclipse.smila.http.server.util;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.osgi.service.component.ComponentContext;

/**
 * Abstract base class for RequestHandler implementations. Provides methods to access the properties of the
 * ComponentContext and a implementation for method match();
 */
public abstract class ARequestHandler implements RequestHandler {

  /**
   * The root context path under which this RequestHandler is registered.
   */
  private String _rootContextPath;

  /**
   * The URI pattern - the part of a URI path after the {@link Constants#PROPERTY_ROOTCONTEXTPATH).
   */
  private String _uriPattern;

  /**
   * {@inheritDoc}
   */
  @Override
  public final String getRootContextPath() {
    return _rootContextPath;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public final String getUriPattern() {
    return _uriPattern;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public final boolean matches(final String requestUri) {
    final String uriPart = requestUri.substring(_rootContextPath.length());
    return uriPart.matches(_uriPattern);
  }

  /**
   * return the dynamic parts of the URL as defined by the URI pattern. All result values are already URL-decoded.
   * 
   * @param requestUri
   *          request URI
   * @return dynamic URI parts.
   */
  public final List<String> getDynamicUriParts(final String requestUri) {
    final ArrayList<String> groups = new ArrayList<String>();
    final String uriPart = requestUri.substring(_rootContextPath.length());
    final Pattern pattern = Pattern.compile(_uriPattern);
    final Matcher matcher = pattern.matcher(uriPart);
    matcher.find();
    if (matcher.groupCount() >= 1) {
      for (int i = 1; i <= matcher.groupCount(); i++) {
        groups.add(urlDecode(matcher.group(i)));
      }
    }
    return groups;
  }

  /**
   * Return static part of request uri (depends on uri pattern of http handler). The result is URL-decoded.
   * 
   * @param requestUri
   *          e.g. "http://localhost:8050/SMILA/handler/todo/"
   * @return static part, e.g. "SMILA/handler/", if dynamic part is "todo/"
   */
  public final String getStaticUriParts(final String requestUri) {
    final String uriPart = requestUri.substring(_rootContextPath.length());
    final Pattern pattern = Pattern.compile(_uriPattern);
    final Matcher matcher = pattern.matcher(uriPart);
    matcher.find();
    if (matcher.groupCount() > 0 && matcher.start(1) >= 0) {
      return urlDecode(uriPart.substring(0, matcher.start(1)));
    }
    return urlDecode(requestUri);
  }

  /**
   * OSGi Declarative Services service activation method. Must be explicitly called of the subclass implements its own
   * activation method.
   * 
   * @param context
   *          OSGi service component context.
   */
  protected void activate(final ComponentContext context) {
    _rootContextPath = context.getProperties().get(Constants.PROPERTY_ROOTCONTEXTPATH).toString();
    _uriPattern = context.getProperties().get(Constants.PROPERTY_URIPATTERN).toString();
  }

  /**
   * decode a part of an URL. Try to use UTF-8 encoding, if that doesn't work, fallback to platform default encoding.
   * 
   * @param urlPart
   *          part of a request URL
   * @return urlPart in decoded form
   */
  protected String urlDecode(final String urlPart) {
    if (urlPart == null) {
      return null;
    }
    try {
      return URLDecoder.decode(urlPart, "utf-8");
    } catch (final Exception ex) {
      return URLDecoder.decode(urlPart);
    }
  }
}
