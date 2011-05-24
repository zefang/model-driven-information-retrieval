/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Ivan Churkin (brox IT Solutions GmbH) - initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.utils.test;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

import junit.framework.TestCase;

import org.eclipse.smila.utils.config.ConfigUtils;
import org.eclipse.smila.utils.config.ConfigurationLoadException;

/**
 * scenario: the requested configPath does exist and the fallback is not used.
 */
public class TestConfigUtils_NoBundleFallback extends TestCase {

  /**
   * asserts that the bundle's config folder exist in configuration/
   */
  public void test_BundleConfigExists() {
    final File configFile = ConfigUtils.getConfigFile(AllTests.BUNDLE_ID, ".");
    assertNotNull(configFile);
  }

  /**
   * Test entries.
   */
  public void test_Entries() {
    final List<String> entries = ConfigUtils.getConfigEntries(AllTests.BUNDLE_ID, ".");
    assertNotNull(entries);
    assertTrue(entries.contains("sub"));
  }

  /**
   * Test entries no folder ex.
   */
  public void test_Entries_FolderDoesntExists() {
    List<String> entries = null;
    try {
      entries = ConfigUtils.getConfigEntries(AllTests.BUNDLE_ID, "subfolder-does-not-exist");
      fail("expected exception");
    } catch (final ConfigurationLoadException e) {
      e.printStackTrace();
    }
    assertNull(entries);
  }

  /**
   * the given arg specs a file and not a folder.
   */
  public void test_Entries_FolderIsFile() {
    List<String> entries = null;
    try {
      entries = ConfigUtils.getConfigEntries(AllTests.BUNDLE_ID, "test.properties");
      fail("expected exception");
    } catch (final ConfigurationLoadException e) {
      e.printStackTrace();
    }
    assertNull(entries);
  }

  /**
   * Test entries no bundle ex.
   */
  public void test_Entries_BundleDoesntExist() {
    List<String> entries = null;
    try {
      entries = ConfigUtils.getConfigEntries("wrong-bundle-name", "res");
      fail("expected exception");
    } catch (final ConfigurationLoadException e) {
      ;// ok
    }
    assertNull(entries);
  }

  /**
   * Test stream no bundle ex.
   */
  public void test_Stream_BundleDoesntExist() {
    try {
      ConfigUtils.getConfigStream("wrong-bundle-name", "res");
      fail("expected exception");
    } catch (final ConfigurationLoadException e) {
      ;// ok
    }
  }

  /**
   */
  public void test_ConfigProperties() throws IOException {
    final Properties configProperties = ConfigUtils.getConfigProperties(AllTests.BUNDLE_ID, "test.properties");
    assertTrue(configProperties.containsKey("value1"));
  }
}
