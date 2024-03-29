/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Dmitry Hazin (brox IT Solutions GmbH) - initial creator Sebastian Voigt (brox IT Solutions GmbH)
 * 
 * This File is based on the plugin/parse-html/src/java/org/apache/nutch/parse/html/HTMLMetaProcessor.java from Nutch 0.8.1 (see below the licene). 
 * The original File was modified by the Smila Team 
 **********************************************************************************************************************/
/**
 * Copyright 2005 The Apache Software Foundation
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */
// CHECKSTYLE:OFF
package org.eclipse.smila.connectivity.framework.crawler.web.parse.html;

import java.net.URL;

import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Class for parsing META Directives from DOM trees. This class handles specifically Robots META directives (all, none,
 * nofollow, noindex), finding BASE HREF tags, and HTTP-EQUIV no-cache instructions. All meta directives are stored in a
 * HTMLMetaTags instance.
 */
public final class HTMLMetaProcessor {

  /**
   * Dummy constructor.
   */
  private HTMLMetaProcessor() {

  }

  /**
   * Utility class with indicators for the robots directives "noindex" and "nofollow", and HTTP-EQUIV/no-cache
   */

  /**
   * Sets the indicators in <code>robotsMeta</code> to appropriate values, based on any META tags found under the
   * given <code>node</code>.
   * 
   * @param metaTags
   *          HTMLMetaTags
   * @param node
   *          Node
   * @param currURL
   *          URL
   */
  public static void getMetaTags(HTMLMetaTags metaTags, Node node, URL currURL) {
    metaTags.reset();
    getMetaTagsHelper(metaTags, node, currURL);
  }

  /**
   * Gets the meta tags helper.
   * 
   * @param metaTags
   *          the meta tags
   * @param node
   *          the node
   * @param currURL
   *          the current URL
   */
  private static void getMetaTagsHelper(HTMLMetaTags metaTags, Node node, URL currURL) {

    if (node.getNodeType() == Node.ELEMENT_NODE) {

      if ("body".equalsIgnoreCase(node.getNodeName())) {
        // META tags should not be under body
        return;
      }

      if ("meta".equalsIgnoreCase(node.getNodeName())) {
        final NamedNodeMap attrs = node.getAttributes();
        Node nameNode = null;
        Node equivNode = null;
        Node contentNode = null;
        // Retrieves name, http-equiv and content attribues
        for (int i = 0; i < attrs.getLength(); i++) {
          final Node attr = attrs.item(i);
          final String attrName = attr.getNodeName().toLowerCase();
          if (attrName.equals("name")) {
            nameNode = attr;
          } else if (attrName.equals("http-equiv")) {
            equivNode = attr;
          } else if (attrName.equals("content")) {
            contentNode = attr;
          }
        }

        if (nameNode != null) {
          if (contentNode != null) {
            final String name = nameNode.getNodeValue().toLowerCase();
            metaTags.getGeneralTags().setProperty(name, contentNode.getNodeValue());
            if ("robots".equals(name)) {

              if (contentNode != null) {
                final String directives = contentNode.getNodeValue().toLowerCase();
                int index = directives.indexOf("none");

                if (index >= 0) {
                  metaTags.setNoIndex();
                  metaTags.setNoFollow();
                }

                index = directives.indexOf("all");
                if (index >= 0) {
                  // do nothing
                  ;
                }

                index = directives.indexOf("noindex");
                if (index >= 0) {
                  metaTags.setNoIndex();
                }

                index = directives.indexOf("nofollow");
                if (index >= 0) {
                  metaTags.setNoFollow();
                }
              }

            } // end if (name == robots)
          }
        }

        if (equivNode != null) {
          if (contentNode != null) {
            final String name = equivNode.getNodeValue().toLowerCase();
            String content = contentNode.getNodeValue();
            metaTags.getHttpEquivTags().setProperty(name, content);
            if ("pragma".equals(name)) {
              content = content.toLowerCase();
              final int index = content.indexOf("no-cache");
              if (index >= 0) {
                metaTags.setNoCache();
              }
            } else if ("refresh".equals(name)) {
              int idx = content.indexOf(';');
              String time = null;
              if (idx == -1) { // just the refresh time
                time = content;
              } else {
                time = content.substring(0, idx);
              }
              try {
                metaTags.setRefreshTime(Integer.parseInt(time));
                // skip this if we couldn't parse the time
                metaTags.setRefresh(true);
              } catch (Exception e) {
                ;
              }
              URL refreshUrl = null;
              if (metaTags.getRefresh() && idx != -1) { // set the URL
                idx = content.toLowerCase().indexOf("url=");
                if (idx == -1) { // assume a mis-formatted entry with just the url
                  idx = content.indexOf(';') + 1;
                } else {
                  idx += 4;
                }
                if (idx != -1) {
                  final String url = content.substring(idx);
                  try {
                    refreshUrl = new URL(url);
                  } catch (Exception e) {
                    // XXX according to the spec, this has to be an absolute
                    // XXX url. However, many websites use relative URLs and
                    // XXX expect browsers to handle that.
                    // XXX Unfortunately, in some cases this may create a
                    // XXX infinitely recursive paths (a crawler trap)...
                    // if (!url.startsWith("/")) url = "/" + url;
                    try {
                      refreshUrl = new URL(currURL, url);
                    } catch (Exception e1) {
                      refreshUrl = null;
                    }
                  }
                }
              }
              if (metaTags.getRefresh()) {
                if (refreshUrl == null) {
                  // apparently only refresh time was present. set the URL
                  // to the same URL.
                  refreshUrl = currURL;
                }
                metaTags.setRefreshHref(refreshUrl);
              }
            }
          }
        }

      } else if ("base".equalsIgnoreCase(node.getNodeName())) {
        final NamedNodeMap attrs = node.getAttributes();
        final Node hrefNode = attrs.getNamedItem("href");

        if (hrefNode != null) {
          final String urlString = hrefNode.getNodeValue();

          URL url = null;
          try {
            if (currURL == null) {
              url = new URL(urlString);
            } else {
              url = new URL(currURL, urlString);
            }
          } catch (Exception exception) {
            ;
          }

          if (url != null) {
            metaTags.setBaseHref(url);
          }
        }

      }

    }

    final NodeList children = node.getChildNodes();
    if (children != null) {
      final int len = children.getLength();
      for (int i = 0; i < len; i++) {
        getMetaTagsHelper(metaTags, children.item(i), currURL);
      }
    }
  }

}
