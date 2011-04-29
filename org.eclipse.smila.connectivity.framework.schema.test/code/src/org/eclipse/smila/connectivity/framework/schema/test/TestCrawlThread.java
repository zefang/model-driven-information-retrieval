/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Alexander Eliseyev (brox IT Solutions GmbH) - initial creator
 **********************************************************************************************************************/
package org.eclipse.smila.connectivity.framework.schema.test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import junit.framework.TestCase;

import org.eclipse.smila.connectivity.ConnectivityException;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.ConnectivityManager;
import org.eclipse.smila.connectivity.deltaindexing.DeltaIndexingException;
import org.eclipse.smila.connectivity.deltaindexing.DeltaIndexingManager;
import org.eclipse.smila.connectivity.framework.CrawlState;
import org.eclipse.smila.connectivity.framework.Crawler;
import org.eclipse.smila.connectivity.framework.CrawlerCriticalException;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.connectivity.framework.DataReference;
import org.eclipse.smila.connectivity.framework.compound.CompoundException;
import org.eclipse.smila.connectivity.framework.compound.CompoundManager;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.FileSystemCrawler;
import org.eclipse.smila.connectivity.framework.impl.CrawlThread;
import org.eclipse.smila.connectivity.framework.schema.ConfigurationLoader;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig;
import org.eclipse.smila.connectivity.framework.schema.config.DeltaIndexingType;
import org.eclipse.smila.connectivity.framework.util.CrawlerControllerCallback;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Record;

// CHECKSTYLE:OFF

/**
 * The Class TestCrawlThread.
 * 
 * @author Alexander Eliseyev
 */
public class TestCrawlThread extends TestCase {

  /**
   * Test constructor exceptions.
   * 
   * @throws Exception
   *           the exception
   */
  public void testConstructorExceptions() throws Exception {
    @SuppressWarnings("unused")
    CrawlThread crawlThread;

    final ConnectivityManager connectivityManager = new DummyConnectivityManager();
    final DeltaIndexingManager diManager = new DummyDeltaIndexingManager();
    final CompoundManager compoundManager = new DummyCompoundManager();

    final CrawlerControllerCallback callback = new DummyCrawlerControllerCallback();
    final CrawlState crawlState = new CrawlState();
    final Crawler crawler = new FileSystemCrawler();
    final DataSourceConnectionConfig configuration =
      ConfigurationLoader.unmarshall(TestConfigurationLoader.class.getResourceAsStream("ConfigExample.xml"));

    try {
      crawlThread =
        new CrawlThread(null, crawlState, connectivityManager, diManager, compoundManager, crawler, configuration);
      fail("NullPointerException must be thrown");
    } catch (final NullPointerException e) {
      ; // ok
    }

    try {
      crawlThread =
        new CrawlThread(callback, null, connectivityManager, diManager, compoundManager, crawler, configuration);
      fail("NullPointerException must be thrown");
    } catch (final NullPointerException e) {
      ; // ok
    }

    try {
      crawlThread = new CrawlThread(callback, crawlState, null, diManager, compoundManager, crawler, configuration);
      fail("NullPointerException must be thrown");
    } catch (final NullPointerException e) {
      ; // ok
    }

    try {
      crawlThread =
        new CrawlThread(callback, crawlState, connectivityManager, diManager, null, crawler, configuration);
      fail("NullPointerException must be thrown");
    } catch (final NullPointerException e) {
      ; // ok
    }

    try {
      crawlThread =
        new CrawlThread(callback, crawlState, connectivityManager, diManager, compoundManager, null, configuration);
      fail("NullPointerException must be thrown");
    } catch (final NullPointerException e) {
      ; // ok
    }
  }

  /**
   * Test process m objects.
   * 
   * @throws Exception
   *           the exception
   */
  public void testProcessMObjects() throws Exception {
    final DataSourceConnectionConfig configuration =
      ConfigurationLoader.unmarshall(TestConfigurationLoader.class.getResourceAsStream("ConfigExample.xml"));

    final DataFactory recordFactory = DataFactoryCreator.createDefaultFactory();

    try {
      final CrawlState crawlState = runCrawler(configuration, new DummyConnectivityManager() {
        @Override
        public int add(Record[] records) throws ConnectivityException {
          throw new ConnectivityException("TestException");
        }
      }, new DummyDeltaIndexingManager(), new DummyCompoundManager(), new DummyCrawler() {
        boolean hasNext = true;

        @Override
        public DataReference[] getNext() {
          if (hasNext) {
            hasNext = false;
            return new DataReference[] { new DummyDataReference() };
          } else {
            return null;
          }
        }

        @Override
        public Record getRecord(int pos) throws CrawlerException, CrawlerCriticalException {
          return recordFactory.createRecord();
        }
      });
      assertNotNull(crawlState.getLastError());
      assertEquals("TestException", crawlState.getLastError().getMessage());
    } catch (final Throwable e) {
      e.printStackTrace();
      fail("Must not throw exception on add record error");
    }

    try {
      runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
        new DummyCompoundManager(), new DummyCrawler() {
          boolean hasNext = true;

          @Override
          public DataReference[] getNext() {
            if (hasNext) {
              hasNext = false;
              return new DataReference[] { new DummyDataReference() {
                @Override
                public Record getRecord() throws CrawlerException, CrawlerCriticalException {
                  throw new CrawlerException("TestException");
                }
              } };
            } else {
              return null;
            }
          }
        });
    } catch (final Throwable e) {
      fail("Must not throw exception on get record CrawlerException error");
    }

    try {
      final CrawlState crawlState =
        runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
          new DummyCompoundManager(), new DummyCrawler() {
            boolean hasNext = true;

            @Override
            public DataReference[] getNext() {
              if (hasNext) {
                hasNext = false;
                return new DataReference[] { new DummyDataReference() {
                  @Override
                  public Record getRecord() throws CrawlerException, CrawlerCriticalException {
                    throw new RuntimeException("TestException");
                  }
                } };
              } else {
                return null;
              }
            }
          });
      assertNotNull(crawlState.getLastError());
      assertEquals("TestException", crawlState.getLastError().getMessage());
    } catch (final Throwable e) {
      fail("Must not throw exception on get record RuntimeException error");
    }

    try {
      final CrawlState crawlState =
        runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
          new DummyCompoundManager(), new DummyCrawler() {
            boolean hasNext = true;

            @Override
            public DataReference[] getNext() {
              if (hasNext) {
                hasNext = false;
                return new DataReference[] { new DummyDataReference() {
                  @Override
                  public Record getRecord() throws CrawlerException, CrawlerCriticalException {
                    throw new CrawlerCriticalException("TestException");
                  }
                } };
              } else {
                return null;
              }
            }

            @Override
            public Record getRecord(int pos) throws CrawlerException, CrawlerCriticalException {
              throw new RuntimeException("TestException");
            }
          });
      assertNotNull(crawlState.getLastError());
      assertEquals("TestException", crawlState.getLastError().getMessage());
    } catch (final Throwable e) {
      fail("Must not throw exception on get record CrawlerCriticalException error");
    }

    try {
      final CrawlState crawlState =
        runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
          new DummyCompoundManager(), new DummyCrawler() {
            boolean hasNext = true;

            @Override
            public DataReference[] getNext() {
              if (hasNext) {
                hasNext = false;
                return new DataReference[] { new DummyDataReference() {
                  @Override
                  public Record getRecord() throws CrawlerException, CrawlerCriticalException {
                    throw new InvalidValueTypeException("TestException");
                  }
                } };
              } else {
                return null;
              }
            }

            @Override
            public Record getRecord(int pos) throws CrawlerException, CrawlerCriticalException {
              throw new RuntimeException("TestException");
            }
          });
      assertNotNull(crawlState.getLastError());
      assertEquals("TestException", crawlState.getLastError().getMessage());
    } catch (final Throwable e) {
      fail("Must not throw exception on get record InvalidTypeException error");
    }
  }

  /**
   * Test run exceptions.
   * 
   * @throws Exception
   *           the exception
   */
  @SuppressWarnings("serial")
  public void testRunExceptions() throws Exception {
    final DataSourceConnectionConfig configuration =
      ConfigurationLoader.unmarshall(TestConfigurationLoader.class.getResourceAsStream("ConfigExample.xml"));

    try {
      runCrawler(configuration, new DummyCrawler() {
        @Override
        public void initialize(final DataSourceConnectionConfig config) throws CrawlerException,
          CrawlerCriticalException {
          throw new CrawlerException("TestException");
        }
      });
    } catch (final Throwable e) {
      fail("Must not throw exception on init error");
    }

    try {
      runCrawler(configuration, new DummyCrawler() {
        @Override
        public DataReference[] getNext() throws CrawlerException, CrawlerCriticalException {
          throw new CrawlerException("TestException");
        }
      });
    } catch (final Throwable e) {
      fail("Must not throw exception on getNext error");
    }

    try {
      runCrawler(configuration, new DummyCrawler() {
        @Override
        public void close() throws CrawlerException {
          throw new CrawlerException("TestException");
        }
      });
    } catch (final Throwable e) {
      fail("Must not throw exception on crawler close error");
    }

    try {
      runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager() {
        @Override
        public String init(String dataSourceId) throws DeltaIndexingException {
          throw new DeltaIndexingException("Error on init");
        }
      }, new DummyCompoundManager(), new DummyCrawler());
    } catch (final DeltaIndexingException e) {
      assertEquals("Error on init", e.getMessage());
    }

    try {
      runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager() {
        @Override
        public void finish(final String dataSourceId) throws DeltaIndexingException {
          throw new DeltaIndexingException("TestException");
        }
      }, new DummyCompoundManager(), new DummyCrawler());
    } catch (final Throwable e) {
      fail("Must not throw exception on finishDeltaIndexingByDataSourceId error");
    }

    try {
      runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
        new DummyCompoundManager(), new DummyCrawler(), new DummyCrawlerControllerCallback() {
          @Override
          public void unregister(final String dataSourceId) {
            throw new RuntimeException("TestException");
          }
        }, new CrawlState());
    } catch (final Throwable e) {
      fail("Must not throw exception on unregister error");
    }

    try {
      runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
        new DummyCompoundManager(), new DummyCrawler(), new DummyCrawlerControllerCallback(), new CrawlState() {
          @Override
          public void setEndTime(final Long endTime) {
            throw new RuntimeException("TestException");
          }
        });
    } catch (final Throwable e) {
      fail("Must not throw exception on setEndTime error");
    }
  }

  /**
   * Run crawler.
   * 
   * @param configuration
   *          the configuration
   * @param crawler
   *          the crawler
   * 
   * @return the crawl state
   * 
   * @throws Exception
   *           the exception
   */
  private CrawlState runCrawler(final DataSourceConnectionConfig configuration, final Crawler crawler)
    throws Exception {
    return runCrawler(configuration, new DummyConnectivityManager(), new DummyDeltaIndexingManager(),
      new DummyCompoundManager(), crawler);
  }

  /**
   * Run crawler.
   * 
   * @param crawler
   *          the crawler
   * @param configuration
   *          the configuration
   * @param connectivityManager
   *          the connectivity manager
   * 
   * @return the crawl state
   * 
   * @throws Exception
   *           the exception
   */
  private CrawlState runCrawler(final DataSourceConnectionConfig configuration,
    final ConnectivityManager connectivityManager, final DeltaIndexingManager diManager,
    final CompoundManager compoundManager, final Crawler crawler) throws Exception {
    return runCrawler(configuration, connectivityManager, diManager, compoundManager, crawler,
      new DummyCrawlerControllerCallback(), getCrawlState());
  }

  /**
   * Gets the crawl state.
   * 
   * @return the crawl state
   */
  private CrawlState getCrawlState() {
    final CrawlState crawlState = new CrawlState();
    crawlState.setStartTime(System.currentTimeMillis());
    return crawlState;
  }

  /**
   * Run crawler.
   * 
   * @param crawler
   *          the crawler
   * @param configuration
   *          the configuration
   * @param connectivityManager
   *          the connectivity manager
   * @param diManager
   *          the delta indexing manager
   * @param compoundManager
   *          the compound manager
   * @param callback
   *          the callback
   * @param crawlState
   *          the crawl state
   * 
   * @return the crawl state
   * 
   * @throws Exception
   *           the exception
   */
  private CrawlState runCrawler(final DataSourceConnectionConfig configuration,
    final ConnectivityManager connectivityManager, final DeltaIndexingManager diManager,
    final CompoundManager compoundManager, final Crawler crawler, final CrawlerControllerCallback callback,
    final CrawlState crawlState) throws Exception {

    final CrawlThread crawlThread =
      new CrawlThread(callback, crawlState, connectivityManager, diManager, compoundManager, crawler, configuration);

    crawlThread.run();

    return crawlState;
  }

  private class DummyConnectivityManager implements ConnectivityManager {
    @Override
    public int add(final Record[] records) throws ConnectivityException {
      return 0;
    }

    @Override
    public int delete(final Record[] records) throws ConnectivityException {
      return 0;
    }
  }

  private class DummyDeltaIndexingManager implements DeltaIndexingManager {

    @Override
    public boolean checkForUpdate(final String sessionId, final ConnectivityId id, final String hash)
      throws DeltaIndexingException {
      return true;
    }

    @Override
    public void clear() throws DeltaIndexingException {
    }

    @Override
    public void clear(final String sessionId) throws DeltaIndexingException {
    }

    @Override
    public void delete(final String sessionId, final ConnectivityId id) throws DeltaIndexingException {
    }

    @Override
    public void finish(final String sessionId) throws DeltaIndexingException {
    }

    @Override
    public String init(final String dataSourceId) throws DeltaIndexingException {
      return UUID.randomUUID().toString();
    }

    @Override
    public void visit(final String sessionId, final ConnectivityId id, final String hash, final boolean isCompound)
      throws DeltaIndexingException {
    }

    @Override
    public Iterator<ConnectivityId> obsoleteIdIterator(final String sessionId, final String dataSourceID)
      throws DeltaIndexingException {
      return null;
    }

    @Override
    public Iterator<ConnectivityId> obsoleteIdIterator(final String sessionId, final ConnectivityId id)
      throws DeltaIndexingException {
      return null;
    }

    @Override
    public void rollback(final String sessionId) throws DeltaIndexingException {
    }

    @Override
    public void unlockDatasource(final String dataSourceId) {
    }

    @Override
    public void unlockDatasources() throws DeltaIndexingException {
    }

    @Override
    public Map<String, LockState> getLockStates() {
      return new HashMap<String, LockState>();
    }

    @Override
    public boolean exists(final String dataSourceId) {
      return true;
    }

    @Override
    public long getEntryCount(final String dataSourceId) {
      return 0L;
    }

    @Override
    public Map<String, Long> getEntryCounts() {
      return new HashMap<String, Long>();
    }
  }

  private class DummyCrawler implements Crawler {
    @Override
    public void close() throws CrawlerException {
    }

    @Override
    public String getCrawlerId() throws CrawlerException {
      return null;
    }

    public AnyMap[] getNextDeltaIndexingData() throws CrawlerException, CrawlerCriticalException {
      return null;
    }

    public Record getRecord(final int pos) throws CrawlerException, CrawlerCriticalException {
      return null;
    }

    @Override
    public void initialize(final DataSourceConnectionConfig config) throws CrawlerException,
      CrawlerCriticalException {
    }

    @Override
    public DataReference[] getNext() throws CrawlerException, CrawlerCriticalException {
      return null;
    }
  }

  private class DummyDataReference implements DataReference {
    @Override
    public void dispose() {
    }

    @Override
    public String getHash() {
      return "777";
    }

    @Override
    public ConnectivityId getId() {
      return new ConnectivityId("source", "source:<id>");
    }

    @Override
    public Record getRecord() throws CrawlerException, CrawlerCriticalException {
      return DataFactoryCreator.createDefaultFactory().createRecord();
    }
  }

  private class DummyCompoundManager implements CompoundManager {

    @Override
    public boolean isCompound(final Record record, final DataSourceConnectionConfig config)
      throws CompoundException {
      return false;
    }

    @Override
    public Crawler extract(final Record record, final DataSourceConnectionConfig config) throws CompoundException {
      return null;
    }

    @Override
    public Record adaptCompoundRecord(final Record record, final DataSourceConnectionConfig config)
      throws CompoundException {
      return record;
    }
  }

  private class DummyCrawlerControllerCallback implements CrawlerControllerCallback {
    @Override
    public void unregister(final String dataSourceId) {
      ; // do nothing
    }

    @Override
    public boolean doCheckForUpdate(final DeltaIndexingType deltaIndexingType) {
      return true;
    }

    @Override
    public boolean doDeltaIndexing(final DeltaIndexingType deltaIndexingType) {
      return true;
    }

    @Override
    public boolean doDeltaDelete(final DeltaIndexingType deltaIndexingType) {
      return true;
    }
  }

  // CHECKSTYLE:ON

}
