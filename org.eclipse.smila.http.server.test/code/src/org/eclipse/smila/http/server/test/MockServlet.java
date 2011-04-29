package org.eclipse.smila.http.server.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MockServlet extends HttpServlet {

  /** serializable ... */
  private static final long serialVersionUID = 1L;

  public static final String HELLO = "Hello World (Servlet Edition)";

  @Override
  protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException,
    IOException {
    resp.setContentType("text/plain");
    resp.getOutputStream().write(HELLO.getBytes());
    resp.getOutputStream().flush();
  }
}
