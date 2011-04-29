// CHECKSTYLE:OFF
/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Dmitry Hazin (brox IT Solutions GmbH) - initial creator
 * Sebastian Voigt(Brox IT Solutions GmbH) - inital creator
 * 
 * This File is based on the AuthSSLX509TrustManager.java (Contrib) from commons-httpclient-3.0.1-src
 * (see below the licene). 
 * The original File was modified by the Smila Team
 **********************************************************************************************************************/
/*
 * $Header:
 * /home/jerenkrantz/tmp/commons/commons-convert/cvs/home/cvs/jakarta-commons//httpclient/src/contrib/org/apache/commons/httpclient/contrib/ssl/AuthSSLX509TrustManager.java,v
 * 1.2 2004/06/10 18:25:24 olegk Exp $ $Revision: 155418 $ $Date: 2005-02-26 08:01:52 -0500 (Sat, 26 Feb 2005) $
 * 
 * ====================================================================
 * 
 * Copyright 2002-2004 The Apache Software Foundation
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 * ====================================================================
 * 
 * This software consists of voluntary contributions made by many individuals on behalf of the Apache Software
 * Foundation. For more information on the Apache Software Foundation, please see <http://www.apache.org/>.
 * 
 */
package org.apache.commons.httpclient.contrib.ssl;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.X509TrustManager;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * <p>
 * AuthSSLX509TrustManager can be used to extend the default {@link X509TrustManager} with additional trust decisions.
 * </p>
 * 
 * @author <a href="mailto:oleg@ural.ru">Oleg Kalnichevski</a>
 * 
 * <p>
 * DISCLAIMER: HttpClient developers DO NOT actively support this component. The component is provided as a reference
 * material, which may be inappropriate for use without additional customization.
 * </p>
 */
public class AuthSSLX509TrustManager implements X509TrustManager {
  private X509TrustManager defaultTrustManager = null;

  /** Log object for this class. */
  private static final Log LOG = LogFactory.getLog(AuthSSLX509TrustManager.class);

  /**
   * Constructor for AuthSSLX509TrustManager.
   */
  public AuthSSLX509TrustManager(final X509TrustManager defaultTrustManager) {
    super();
    if (defaultTrustManager == null) {
      throw new IllegalArgumentException("Trust manager may not be null");
    }
    this.defaultTrustManager = defaultTrustManager;
  }

  /**
   * @see javax.net.ssl.X509TrustManager#getAcceptedIssuers()
   */
  public X509Certificate[] getAcceptedIssuers() {
    return this.defaultTrustManager.getAcceptedIssuers();
  }

  public void checkClientTrusted(X509Certificate[] certificates, String authType) throws CertificateException {
    if (LOG.isInfoEnabled() && certificates != null) {
      for (int c = 0; c < certificates.length; c++) {
        X509Certificate cert = certificates[c];
        LOG.info(" Client certificate " + (c + 1) + ":");
        LOG.info("  Subject DN: " + cert.getSubjectDN());
        LOG.info("  Signature Algorithm: " + cert.getSigAlgName());
        LOG.info("  Valid from: " + cert.getNotBefore());
        LOG.info("  Valid until: " + cert.getNotAfter());
        LOG.info("  Issuer: " + cert.getIssuerDN());
      }
    }
    this.defaultTrustManager.checkClientTrusted(certificates, authType);
  }

  public void checkServerTrusted(X509Certificate[] certificates, String authType) throws CertificateException {
    if (LOG.isInfoEnabled() && certificates != null) {
      for (int c = 0; c < certificates.length; c++) {
        X509Certificate cert = certificates[c];
        LOG.info(" Server certificate " + (c + 1) + ":");
        LOG.info("  Subject DN: " + cert.getSubjectDN());
        LOG.info("  Signature Algorithm: " + cert.getSigAlgName());
        LOG.info("  Valid from: " + cert.getNotBefore());
        LOG.info("  Valid until: " + cert.getNotAfter());
        LOG.info("  Issuer: " + cert.getIssuerDN());
      }
    }
    this.defaultTrustManager.checkServerTrusted(certificates, authType);
  }
}
