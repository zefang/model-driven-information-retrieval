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
  * Juergen Schumacher (empolis GmbH) - initial design
  * Sebastian Sybrecht (brox IT-Solutions GmbH) - complete layout and paging
  *******************************************************************************/
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:s="http://www.eclipse.org/smila/search"
  xmlns:r="http://www.eclipse.org/smila/record" xmlns:i="http://www.eclipse.org/smila/id">
  <xsl:output method="html" encoding="UTF-8" indent="yes"
    doctype-public="-//W3C//DTD HTML 4.0 Transitional//EN" />

  <xsl:param name="stylesheet" select="'WebmlSearchDefault'" />
  <xsl:variable name="totalHits" select="/s:SearchResult/r:Record/r:Val[@key='count']" />

  <xsl:template match="/s:SearchResult">
    <html>
      <head>
        <title>Webml Query Servlet</title>
        <link rel="shortcut icon" href="SMILA.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/reset-fonts-grids.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/menu.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/reset.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/layout.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/header.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/footer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/visual.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/paging.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/content.css" />
        <script type="text/javascript"></script>
      </head>
      <body leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
        <div id="novaWrapper">
          <xsl:call-template name="Header" />

          <div id="novaContent" class="faux">
            <br style="clear: both; height: 1em;" />
            <div id="leftcol">
              <xsl:call-template name="IndexList" />
            </div>
            <div id="midcolumn">
              <xsl:apply-templates select="r:Record" />

              <xsl:if test="$totalHits &gt; 0">
                <xsl:apply-templates select="r:Record/r:Seq[@key='records']" />
              </xsl:if>
            </div>
            <br style="clear: both; height: 1em;" />
            &#160;
          </div>
          <xsl:call-template name="Footer" />
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="/s:Error">
    <html>
      <head>
        <title>SMILA - Test search application</title>
        <link rel="shortcut icon" href="eclipse.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/reset-fonts-grids.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/menu.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/reset.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/layout.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/header.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/footer.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/visual.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/paging.css" />
        <link rel="stylesheet" type="text/css" href="stylesheets/Smila/content.css" />
        <script type="text/javascript"></script>
      </head>
      <body leftMargin="0" topMargin="0" marginwidth="0" marginheight="0">
        <div id="novaWrapper">
          <xsl:call-template name="Header" />

          <div id="novaContent">
            <br style="clear: both; height: 1em;" />
            <div id="midcolumn">
              <h1>An error occurred:</h1>
              <p
                style="padding:1em; margin-bottom:1em; background-color:#FF0000; color:#FFFFFF; font-weight:bold;">
                <xsl:value-of select="s:Message" />
              </p>
              <p>You may want to check the SMILA.log file for additional information or contact your
                administrator.</p>
              <p>
                <a href="search">Click here</a>
                to try again.
              </p>
              <p>
                <a href="#" onClick="document.getElementById('errordetails').style.visibility = 'visible';">Details ...</a>
              </p>
              <div id="errordetails" style="visibility:hidden;color:#606060">
                <pre>
                  <xsl:value-of select="s:Details" />
                </pre>
              </div>
            </div>
            <br style="clear: both; height: 1em;" />
            &#160;
          </div>
          <xsl:call-template name="Footer" />
        </div>
      </body>
    </html>
  </xsl:template>

  <!--############## Header ############## -->

  <xsl:template name="Header">
    <div id="clearHeader">
      <div id="logo">
        <a href="http://www.eclipse.org">
	      <img src="images/Smila/eclipse.png" alt="www.eclipse.org"/>
        </a>
      </div>
      <div id="logo">
        <a href="http://www.eclipse.org/eclipsert">
	      <img src="images/Smila/rtlogo.png" width="90" hight="90" alt="www.eclipse.org/eclipsert"/>
        </a>
      </div>
      <div id="logo">
        <a href="http://www.eclipse.org/smila">
          <img src="images/Smila/SMILA_Tagline_Large.jpg" alt="www.eclipse.org/smila" hspace="86" width="316" height="90"/>
        </a>
      </div>
      <div id="logo">
        <a href="http://www.polimi.it">
          <img src="images/polimi/logoPolitecnico.gif" alt="www.polimi.it" hspace="86" height="90"/>
        </a>
      </div>
      <div id="otherSites">
        <div id="sites">
          <ul id="sitesUL">
            <li>
              <a href="http://www.eclipse.org/smila">
                <img alt="SMILA Home" src="images/Smila/home.png" />
                <div>SMILA at Eclipse</div>
              </a>
            </li>
            <li>
              <a href="http://live.eclipse.org/node/617">
                <img alt="SMILA Webinar" src="images/Smila/audio-input-microphone-bw.png" />
                <div>SMILA Webinar</div>
              </a>
            </li>
            <li>
              <a href="http://www.eclipse.org/smila/bugs.php">
                <img alt="SMILA Bugzilla" src="images/Smila/system-search-bw.png" />
                <div>SMILA Bugzilla</div>
              </a>
            </li>
            <li>
              <a href="http://wiki.eclipse.org/SMILA">
                <img alt="Eclipse Wiki" src="images/Smila/accessories-text-editor-bw.png" />
                <div>SMILA Wiki</div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div id="header">
      <div id="menu">
        <ul>
          <li>
            <a href="search">Default</a>
            <!-- TODO: integrare UML qui -->
            <!-- <a href="search?style=SMILASearchAdvanced">Advanced</a>  -->
          </li>
        </ul>
      </div>
    </div>
  </xsl:template>

  <!--############## Footer ############## -->

  <xsl:template name="Footer">
    <div id="clearFooter"></div>
    <div id="footer">
      <ul id="footernav">
        <li>
          <a>
            <xsl:attribute name="href">webmlSearch</xsl:attribute>
            Home
          </a>
        </li>
        <li>
          <a href="license/epl-v10.html">Eclipse Public License - v 1.0</a>
        </li>
      </ul>
      <span id="copyright">Copyright © 2011. All Rights Reserved.</span>
    </div>
  </xsl:template>

  <!--############## left navigation: Indexlist ############## -->

  <xsl:template name="IndexList">
    <ul id="leftnav">
      <li class="about">
        Indexlist
        <img src="images/Smila/separator.png" />
        <ul>
          <xsl:for-each select="s:IndexNames/IndexName">
            <li>
              <a href="#" onClick="document.forms['searchform'].elements['indexname'].value='{.}';">
                <xsl:value-of select="." />
              </a>
            </li>
          </xsl:for-each>
        </ul>
      </li>
    </ul>
  </xsl:template>

  <!--############## Search Form ############## -->

  <xsl:template match="r:Record">
    <div class="homeitem3col">

      <form name="searchform" action="/SMILA/webmlSearch" accept-charset="UTF-8" method="post">
        <table>
          <tr>
            <td>Query:</td>
            <td>
              <input type="text" name="query" value="{r:Val[@key='query']}" />
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
              
              <input type="hidden" name="highlight" value="Content" />
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
            <td>Threshold:</td>
            <td>
              <input type="text" name="threshold" value="{r:Val[@key='threshold']}" />
            </td>
            <td>Index:</td>
            <td>
              <input type="text" name="indexname" value="{r:Val[@key='indexname']}" />
            </td>
          </tr>
          <tr>
            <td />
            <td>
              <input type="submit" name="submitButton" value="OK" />
            </td>
            <td />
            <td>
              <input type="checkbox" name="showXml" value="true" />
              Show XML result
            </td>
          </tr>
        </table>
        <input type="hidden" name="offset" value="0" />
      </form>

      <xsl:if test="$totalHits &gt; 0">
        <h1>Statistics</h1>
        <div id="statistics">
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
              <xsl:variable name="expected"
                select="r:Val[@key='maxcount'] + r:Val[@key='offset']" />
              <xsl:if test="$totalHits &gt; $expected">
                <xsl:value-of select="$expected" />
              </xsl:if>
              <xsl:if test="$totalHits &lt;= $expected">
                <xsl:value-of select="$totalHits" />
              </xsl:if>
              of
              <xsl:value-of select="$totalHits" />
            </li>
          </ul>
        </div>
      </xsl:if>
    </div>
  </xsl:template>

  <!--############## Resultlist ############## -->

  <xsl:template match="r:Record/r:Seq[@key='records']">
    <h1>Result</h1>
    <div id="result">
      <xsl:for-each select="r:Map">
        <ul>
          <li>
            Score:
            <xsl:value-of select="round(r:Val[@key='_weight']*100)" />
            %
            <ul>
              <li>
                <code>DataSourceID: </code>
                <xsl:value-of select="r:Val[@key='_source']" />
              </li>
              <li>
                  <code>KeyID: </code>
                  <xsl:value-of select="r:Val[@key='_recordid']" />
              </li>
              <li>
                <code>Attributes:</code>
              </li>
              <ul>
                <xsl:for-each select="r:Val">
                  <xsl:choose>
                    <xsl:when test="starts-with(@key,'_')" />
                    <xsl:when test="@key='Url'">
                      <li>
                        <tt>URL: </tt>
                        <a>
                          <xsl:attribute name="href"><xsl:value-of select="text()" /></xsl:attribute>
                          <xsl:value-of select="text()" />
                        </a>
                      </li>
                    </xsl:when>
                    <xsl:when test="@key='Path'">
                      <li>
                        <tt>Path: </tt>
                        <a>
                          <xsl:attribute name="href">file:///<xsl:value-of
                            select="text()" /></xsl:attribute>
                          <xsl:value-of select="text()" />
                        </a>
                      </li>
                    </xsl:when>
                    <xsl:otherwise>
                      <li>
                        <tt><xsl:value-of select="@key" />: </tt>
						<xsl:value-of select="text()" />
                      </li>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
                <xsl:for-each select="r:Seq[r:Val]">
                  <xsl:choose>
                    <xsl:when test="starts-with(@key,'_')" />
                    <xsl:otherwise>
                      <li>
                        <tt>
                          <xsl:value-of select="@key" />:
                        </tt>
                        <xsl:for-each select="r:Val">
                          <xsl:value-of select="."/>
                          <xsl:if test="position() &lt; last()">, </xsl:if>
                        </xsl:for-each>
                      </li>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
                <li>
                  <tt>Summary:</tt>
                  <xsl:value-of select="r:Map[@key='_highlight']/r:Map/r:Val[@key='text']"
                    disable-output-escaping="yes" />
                </li>
              </ul>
            </ul>
          </li>
        </ul>
      </xsl:for-each>
    </div>
    <xsl:call-template name="PagingRow" />
  </xsl:template>


  <!-- ########### Paging ############## -->

  <xsl:template name="PagingRow">
    <xsl:if test="$totalHits &gt; 0">
      <div id="paging">
        <div id="pagingrow">
          <xsl:call-template name="SearchResultPaging" />
        </div>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template name="SearchResultPaging">
    <div class="sb_pag">
      <ul>
        <li>
          <xsl:variable name="parameters" select="//s:SearchResult/r:Record" />
          <xsl:variable name="selectedPage"
            select="$parameters/r:Val[@key='offset'] div $parameters/r:Val[@key='maxcount'] + 1" />
          <xsl:variable name="maxHits" select="$parameters/r:Val[@key='maxcount']" />
          <xsl:variable name="pagingURL">#</xsl:variable>
          <xsl:variable name="pagingPrefix">document.forms['searchform'].elements['offset'].value='</xsl:variable>
          <xsl:variable name="pagingSuffix">';document.forms['searchform'].submit();</xsl:variable>



          <xsl:if test="$selectedPage &gt;= 6">
            <a>
              <xsl:attribute name="href"><xsl:value-of select="$pagingURL" /></xsl:attribute>
              <xsl:attribute name="onClick"><xsl:value-of select="$pagingPrefix" />0<xsl:value-of
                select="$pagingSuffix" /></xsl:attribute>|&lt;
            </a>
          </xsl:if>

          <xsl:if test="$selectedPage != 1">
            <a>
              <xsl:attribute name="href"><xsl:value-of select="$pagingURL" /></xsl:attribute>
              <xsl:attribute name="onClick"><xsl:value-of select="$pagingPrefix" /><xsl:value-of
                select="($selectedPage - 2)* $maxHits" /><xsl:value-of select="$pagingSuffix" /></xsl:attribute>
              &lt;
            </a>
          </xsl:if>

          <xsl:variable name="linksDisplayed" select="0" />
          <xsl:variable name="startLinks">
            <xsl:choose>
              <xsl:when test="($selectedPage - 4) &gt; 1">
                <xsl:value-of select="($selectedPage - 4)" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="1" />
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="toDisplay">
            <xsl:choose>
              <xsl:when test="$startLinks = 1">
                <xsl:value-of select="5 - $selectedPage" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="0" />
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="stopLinks">
            <xsl:choose>
              <xsl:when test="(ceiling($totalHits div $maxHits) - $selectedPage) &lt; 4">
                <xsl:value-of select="ceiling($totalHits div $maxHits)" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="$selectedPage + 4" />
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:variable name="fromDisplay">
            <xsl:choose>
              <xsl:when test="$stopLinks = ceiling($totalHits div $maxHits)">
                <xsl:value-of select="4 - (ceiling($totalHits div $maxHits) - $selectedPage)" />
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="0" />
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>
          <xsl:call-template name="displayPages">
            <xsl:with-param name="i">
              <xsl:choose>
                <xsl:when test="$startLinks - $fromDisplay &gt; 0">
                  <xsl:value-of select="$startLinks - $fromDisplay" />
                </xsl:when>
                <xsl:otherwise>
                  1
                </xsl:otherwise>
              </xsl:choose>
            </xsl:with-param>
            <xsl:with-param name="count" select="$selectedPage + $toDisplay + 4" />
          </xsl:call-template>

          <xsl:if test="$selectedPage != ceiling($totalHits div $maxHits)">
            <a>
              <xsl:attribute name="href"><xsl:value-of select="$pagingURL" /></xsl:attribute>
              <xsl:attribute name="onClick"><xsl:value-of select="$pagingPrefix" /><xsl:value-of
                select="$selectedPage * $maxHits" /><xsl:value-of select="$pagingSuffix" /></xsl:attribute>
              &gt;
            </a>
          </xsl:if>
          <xsl:if
            test="$selectedPage != ceiling($totalHits div $maxHits) and ceiling($totalHits div $maxHits) &gt;= 10">
            <a>
              <xsl:attribute name="href"><xsl:value-of select="$pagingURL" /></xsl:attribute>
              <xsl:attribute name="onClick">
								<xsl:value-of select="$pagingPrefix" />
								<xsl:choose>
									<xsl:when
                test="$selectedPage &lt;= (ceiling($totalHits div $maxHits) - 11) and $selectedPage &gt; 5">
										<xsl:value-of select="($stopLinks + 1) * $maxHits" />
									</xsl:when>
									<xsl:when test="$selectedPage &lt;= 5">
										<xsl:value-of select="100" />
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="(ceiling($totalHits div $maxHits)-1) * $maxHits" />
									</xsl:otherwise>
								</xsl:choose>
								<xsl:value-of select="$pagingSuffix" />
							</xsl:attribute>
              &gt;&gt;
            </a>
          </xsl:if>
        </li>
      </ul>
    </div>
  </xsl:template>

  <xsl:template name="displayPages">
    <xsl:variable name="parameters" select="//s:SearchResult/r:Record" />
    <xsl:variable name="selectedPage"
      select="$parameters/r:Val[@key='offset'] div $parameters/r:Val[@key='maxcount'] + 1" />
    <xsl:variable name="maxHits" select="$parameters/r:Val[@key='maxcount']" />
    <xsl:variable name="pagingURL">#</xsl:variable>
    <xsl:variable name="pagingPrefix">document.forms['searchform'].elements['offset'].value='</xsl:variable>
    <xsl:variable name="pagingSuffix">';document.forms['searchform'].submit();</xsl:variable>
    <xsl:param name="i" />
    <xsl:param name="count" />
    <xsl:if test="$i &lt;= $count and $i &lt;= ceiling($totalHits div $maxHits)">
      <xsl:choose>
        <xsl:when test="$i = $selectedPage">
          <a class="sb_pagS">
            <xsl:value-of select="$i" />
          </a>
        </xsl:when>
        <xsl:otherwise>
          <a>
            <xsl:attribute name="href"><xsl:value-of select="$pagingURL" /></xsl:attribute>
            <xsl:attribute name="onClick"><xsl:value-of select="$pagingPrefix" /><xsl:value-of
              select="($i - 1)*$maxHits" /><xsl:value-of select="$pagingSuffix" /></xsl:attribute>
            <xsl:value-of select="$i" />
          </a>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:call-template name="displayPages">
        <xsl:with-param name="i" select="$i + 1" />
        <xsl:with-param name="count" select="$count" />
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
