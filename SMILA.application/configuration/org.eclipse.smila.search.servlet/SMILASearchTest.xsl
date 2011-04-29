<?xml version="1.0" encoding="UTF-8"?>
<!--
  /*******************************************************************************
  * Copyright (c) 2009 empolis GmbH and brox IT Solutions GmbH.
  * All rights reserved. This program and the accompanying materials
  * are made available under the terms of the Eclipse Public License v1.0
  * which accompanies this distribution, and is available at
  * http://www.eclipse.org/legal/epl-v10.html
  *
  * Contributors:
  * Juergen Schumacher (empolis GmbH) - initial API and implementation
  *******************************************************************************/
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:s="http://www.eclipse.org/smila/search"
  xmlns:r="http://www.eclipse.org/smila/record" xmlns:i="http://www.eclipse.org/smila/id">
  <xsl:output method="html" encoding="UTF-8" indent="yes"
    doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN" />

  <xsl:param name="stylesheet" select="'SMILASearchTest'" />

  <xsl:variable name="totalHits" select="/s:SearchResult/r:Record/r:Val[@key='count']" />
  <xsl:template match="/s:SearchResult">
    <html>
      <head>
        <title>SMILA - Sample Search Site</title>
      </head>
      <body leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
        <h2>SMILA Search</h2>

        <xsl:apply-templates select="r:Record" />

        <xsl:if test="$totalHits > 0">
          <xsl:apply-templates select="r:Record/r:Seq[@key='records']" />
        </xsl:if>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="/s:Error">
    <html>
      <head>
        <title>SMILA - Sample Search Site</title>
      </head>
      <body leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
        <h2>SMILA Search Error</h2>

        <h3>Message</h3>
        <p>
          <xsl:value-of select="s:Message" />
        </p>

        <h3>Details</h3>
        <pre>
          <xsl:value-of select="s:Details" />
        </pre>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="r:Record">
    <hr />
    <h3>Query</h3>

    <form action="" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
      <!-- attribute to search in // -->
      <input type="hidden" name="QueryAttribute" value="Content" />

      <!-- result attributes // -->
      <input type="hidden" name="resultAttributes" value="MimeType" />
      <input type="hidden" name="resultAttributes" value="Size" />
      <input type="hidden" name="resultAttributes" value="Extension" />
      <input type="hidden" name="resultAttributes" value="Title" />
      <input type="hidden" name="resultAttributes" value="Url" />
      <input type="hidden" name="resultAttributes" value="LastModifiedDate" />
      <input type="hidden" name="resultAttributes" value="Path" />
      <input type="hidden" name="resultAttributes" value="Filename" />
      <input type="hidden" name="resultAttributes" value="Author" />

      <table>
        <tr>
          <td>Query:</td>
          <td>
            <input type="text" name="query" value="{r:Val[@key='query']}" />
          </td>
          <td>Stylesheet:</td>
          <td>
            <input type="text" name="style" value="{$stylesheet}" />
          </td>
        </tr>
        <tr>
          <td>Result Size:</td>
          <td>
            <input type="text" name="maxcount" value="{r:Val[@key='maxcount']}" />
          </td>
          <td>Pipeline:</td>
          <td>
            <input type="text" name="pipeline" value="{/s:SearchResult/s:Workflow}" />
          </td>
        </tr>
        <tr>
          <td>Result Offset:</td>
          <td>
            <input type="text" name="offset" value="{r:Val[@key='offset']}" />
          </td>
          <td>Index:</td>
          <td>
            <input type="text" name="indexname" value="{r:Val[@key='indexname']}" />
          </td>
        </tr>
        <tr>
          <td>Threshold:</td>
          <td>
            <input type="text" name="threshold" value="{r:Val[@key='threshold']}" />
          </td>
          <td>Show XML result</td>
          <td>
            <input type="checkbox" name="showXml" value="true"></input>
          </td>
        </tr>
      </table>
      <h4>Attachment:</h4>
      <table>
        <tr>
          <td>Select file:</td>
          <td>
            <input type="file" name="file" />
          </td>
          <xsl:if test="r:Map[@key='attachmentFileNames']">
            <td>Current selection:</td>
            <td>
              <xsl:value-of select="r:Map[@key='attachmentFileNames']/r:Val[@key='file']" />
            </td>
          </xsl:if>
        </tr>
      </table>
      <input type="submit" name="submit" value="OK" />
    </form>

    <xsl:if test="$totalHits &gt; 0">
      <hr />
      <h3>Result</h3>
      <ul>
        <li>
          Searched
          <xsl:value-of select="r:Val[@key='indexSize']" />
          objects in
          <xsl:value-of select="r:Val[@key='runtime']" />
          msec.
        </li>
        <li>
          Listing Results
          <xsl:value-of select="r:Val[@key='offset'] + 1" />
          -
          <xsl:variable name="expected" select="r:Val[@key='maxcount'] + r:Val[@key='offset']" />
          <xsl:if test="$totalHits &gt; $expected">
            <xsl:value-of select="$expected" />
          </xsl:if>
          <xsl:if test="$totalHits &lt;= $expected">
            <xsl:value-of select="$totalHits" />
          </xsl:if>
          of
          <xsl:value-of select="$totalHits" />
          :
        </li>
      </ul>
    </xsl:if>
  </xsl:template>

  <xsl:template match="r:Record/r:Seq[@key='records']">
    <hr />
    <xsl:for-each select="r:Map">
      <ul>
        <li>
          Score:
          <xsl:value-of select="round(r:Val[@key='_weight']*100)" />
          %
          <ul>
            <li>
              Source:
              <xsl:value-of select="r:Val[@key='_source']" />
            </li>
            <li>
              Id:
              <xsl:value-of select="r:Val[@key='_recordid']" />
            </li>
            <xsl:for-each select="r:Val">
              <li>
                <xsl:value-of select="@key" />
                :
                <xsl:value-of select="text()" />
              </li>
            </xsl:for-each>
            <xsl:for-each select="r:Seq[r:Val]">
              <li>
                <xsl:value-of select="@key" />
                :
                <xsl:for-each select="r:Val">
                  <xsl:value-of select="." />
                  <xsl:if test="position() &lt; last()">,</xsl:if>
                </xsl:for-each>
              </li>
            </xsl:for-each>
            <li>
              Summary:
              <xsl:value-of select="r:Map[@key='_highlight']/r:Map/r:Val[@key='text']"
                disable-output-escaping="yes" />
            </li>
          </ul>
        </li>
      </ul>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
