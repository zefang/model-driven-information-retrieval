/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (Attensity Europe GmbH) - initial creator Drazen Cindric (Attensity Europe GmbH) - data
 * model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework.agent.feed.test;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AgentState;
import org.eclipse.smila.connectivity.framework.agent.feed.FeedAgent;
import org.eclipse.smila.connectivity.framework.schema.ConfigurationLoader;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig;
import org.eclipse.smila.connectivity.framework.schema.config.DeltaIndexingType;
import org.eclipse.smila.connectivity.framework.util.AgentControllerCallback;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.test.DeclarativeServiceTestCase;

/**
 * The Class TestCrawler.
 */
public class TestAgent extends DeclarativeServiceTestCase implements AgentControllerCallback {

  /**
   * timeout for service detection.
   */
  private static final long WAIT_FOR_SERVICE_DELAY = 30000;

  /**
   * The Constant PAUSE.
   */
  private static final int PAUSE = 10000;

  /**
   * the Crawler.
   */
  private FeedAgent _agent;

  /**
   * The data source configuration.
   */
  private DataSourceConnectionConfig _config;

  /**
   * The unregistered flag.
   */
  private boolean _unregistered;

  /**
   * Add counter.
   */
  private int _addCount;

  /**
   * stopThread Delete counter.
   */
  private int _delCount;

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#setUp()
   */
  @Override
  protected void setUp() throws Exception {
    // register the service, because it's configuration uses immediate="false"
    _agent = registerService(new FeedAgent(), null, FeedAgent.class, WAIT_FOR_SERVICE_DELAY);
    assertNotNull(_agent);
    _config = ConfigurationLoader.unmarshall(TestConfigLoad.class.getResourceAsStream("ConfigExample.xml"));
    assertNotNull(_config);
    Thread.sleep(PAUSE);
  }

  /**
   * {@inheritDoc}
   * 
   * @see junit.framework.TestCase#tearDown()
   */
  @Override
  protected void tearDown() throws Exception {
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#add(String, DeltaIndexingType, Record, String)
   */
  @Override
  public void add(final String sessionId, final DeltaIndexingType deltaIndexingType, final Record record,
    final String hash) {
    assertNotNull(record);
    assertEquals(_config.getDataSourceID(), record.getSource());
    _addCount++;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#delete(String, DeltaIndexingType, Id)
   */
  @Override
  public void delete(final String sessionId, final DeltaIndexingType deltaIndexingType, final ConnectivityId id) {
    // should never be called in this test
    assertNotNull(id);
    assertEquals(_config.getDataSourceID(), id.getDataSourceId());
    _delCount++;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#unregister(String, DeltaIndexingType, String)
   */

  @Override
  public void unregister(final String sessionId, final DeltaIndexingType deltaIndexingType, String dataSourceId) {
    assertNotNull(dataSourceId);
    assertEquals(_config.getDataSourceID(), dataSourceId);
    _unregistered = true;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#doCheckForUpdate(DeltaIndexingType)
   */

  @Override
  public boolean doCheckForUpdate(final DeltaIndexingType deltaIndexingType) {
    return true;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#doDeltaIndexing(DeltaIndexingType)
   */
  @Override
  public boolean doDeltaIndexing(final DeltaIndexingType deltaIndexingType) {
    return true;
  }

  /**
   * {@inheritDoc}
   * 
   * @see AgentControllerCallback#doDeltaDelete(DeltaIndexingType)
   */
  @Override
  public boolean doDeltaDelete(final DeltaIndexingType deltaIndexingType) {
    return true;
  }

  /**
   * Test crawler.
   * 
   * @throws Exception
   *           the exception
   */
  public void testAgent() throws Exception {
    assertEquals(0, _addCount);
    assertEquals(0, _delCount);
    assertFalse(_unregistered);

    _agent.start(this, new AgentState(), _config, "dummy_session_id");
    Thread.sleep(PAUSE);
    _agent.stop();
    Thread.sleep(PAUSE);

    assertTrue(_addCount > 0);
    assertEquals(0, _delCount);
    assertTrue(_unregistered);
  }
}
