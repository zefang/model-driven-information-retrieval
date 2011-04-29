package org.eclipse.smila.http.server.test;

import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.io.IOUtils;
import org.eclipse.smila.http.server.HttpExchange;
import org.eclipse.smila.http.server.HttpStatus;
import org.eclipse.smila.http.server.util.ARequestHandler;

/**
 * echos the first dynamic part of the request URI.
 * @author scum36
 *
 */
public class MockRequestHandler extends ARequestHandler {

  @Override
  public void handle(final HttpExchange exchange) throws IOException {
    OutputStream os = null;
    try {
      os = exchange.getResponseStream();
      exchange.setResponseStatus(HttpStatus.OK);
      exchange.setResponseHeader("Connection", "close");
      exchange.setResponseHeader("Content-Type", "text/plain");
      os.write(getDynamicUriParts(exchange.getRequestURI()).get(0).getBytes());
    } finally {
      IOUtils.closeQuietly(os);
    }
  }

}
