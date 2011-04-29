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

import java.util.Map;
import java.util.TreeMap;

/**
 * Utility class providing some HTTP standard status codes.
 */
public final class HttpStatus {
  /**
   * Does not belong to the HTTP standard status codes.
   */
  public static final int UNKNOWN = 0;

  /**
   * The request has succeeded.
   */
  public static final int OK = 200;

  /**
   * The request has been fulfilled and resulted in a new resource being created.
   */
  public static final int CREATED = 201;

  /**
   * The request has been accepted for processing, but the processing has not been completed. The request might or might
   * not eventually be acted upon, as it might be disallowed when processing actually takes place.
   */
  public static final int ACCEPTED = 202;

  /**
   * The server has fulfilled the request but does not need to return an entity-body.
   */
  public static final int NO_CONTENT = 204;

  /**
   * The request could not be understood by the server due to malformed syntax.
   */
  public static final int BAD_REQUEST = 400;

  /**
   * The server has not found anything matching the request URI.
   */
  public static final int NOT_FOUND = 404;

  /**
   * The method is not allowed to access the request URI.
   */
  public static final int METHOD_NOT_ALLOWED = 405;

  /**
   * The requested resource is no longer available at the server and no forwarding address is known. This condition is
   * expected to be considered permanent.
   */
  public static final int GONE = 410;

  /**
   * The syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable
   * to process the contained instructions.
   * 
   * This code belongs to the status code extensions to HTTP/1.1.
   */
  public static final int UNPROCESSABLE_ENTITY = 422;

  /**
   * The server encountered an unexpected condition which prevented it from fulfilling the request.
   */
  public static final int INTERNAL_SERVER_ERROR = 500;

  /**
   * The server is currently unable to handle the request due to a temporary overloading or maintenance of the server.
   */
  public static final int SERVICE_UNAVAILABLE = 503;

  /**
   * Map (key: code, value: name).
   */
  private static Map<Integer, String> s_codeToName = new TreeMap<Integer, String>();

  static {
    s_codeToName.put(OK, "OK " + OK);
    s_codeToName.put(NO_CONTENT, "NO_CONTENT " + NO_CONTENT);
    s_codeToName.put(CREATED, "CREATED " + CREATED);
    s_codeToName.put(ACCEPTED, "ACCEPTED " + ACCEPTED);
    s_codeToName.put(BAD_REQUEST, "BAD_REQUEST " + BAD_REQUEST);
    s_codeToName.put(NOT_FOUND, "NOT_FOUND " + NOT_FOUND);
    s_codeToName.put(GONE, "GONE " + GONE);
    s_codeToName.put(UNPROCESSABLE_ENTITY, "UNPROCESSABLE_ENTITY " + UNPROCESSABLE_ENTITY);
    s_codeToName.put(INTERNAL_SERVER_ERROR, "INTERNAL_SERVER_ERROR " + INTERNAL_SERVER_ERROR);
    s_codeToName.put(SERVICE_UNAVAILABLE, "SERVICE_UNAVAILABLE " + SERVICE_UNAVAILABLE);
  }

  /**
   * Private default constructor to avoid creation of instances.
   */
  private HttpStatus() {
  }

  /**
   * Returns the name of the specified HTTP status code or null if the code is undefined.
   * 
   * @param status
   *          a status
   * @return name for a status
   */
  public static String name(final int status) {
    return s_codeToName.get(status);
  }
}
