/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.crawler.model;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;

import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOCase;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractCrawler;
import org.eclipse.smila.connectivity.framework.CrawlerCallback;
import org.eclipse.smila.connectivity.framework.CrawlerCriticalException;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.connectivity.framework.DataReference;
//import org.eclipse.smila.connectivity.framework.crawler.filesystem.FileSystemCrawler.CrawlingProducerThread;
//import org.eclipse.smila.connectivity.framework.crawler.filesystem.FileSystemCrawler.CrawlingProducerThread.CrawlerFileFilter;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.messages.Attribute;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.messages.Process;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.messages.Process.Filter;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.messages.Process.Filter.Exclude;
import org.eclipse.smila.connectivity.framework.crawler.filesystem.messages.Process.Filter.Include;
import org.eclipse.smila.connectivity.framework.performancecounters.CrawlerPerformanceCounterHelper;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig.Attributes;
import org.eclipse.smila.connectivity.framework.schema.config.interfaces.IAttribute;
import org.eclipse.smila.connectivity.framework.schema.config.interfaces.IProcess;
import org.eclipse.smila.connectivity.framework.util.DataReferenceFactory;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;

public class ModelCrawler extends AbstractCrawler {
	
	/**
	   * The Constant POC_FOLDERS.
	   */
	private static final String POC_FOLDERS = "folders";

	/**
	   * The Constant POC_FILES.
	   */
	private static final String POC_FILES = "files";

	/**
	   * The Constant POC_PRODUCER_EXCEPTIONS.
	   */
	private static final String POC_PRODUCER_EXCEPTIONS = "producerExceptions";	
	
	/**
	   * The Constant CAPACITY.
	   */
	private static final int CAPACITY = 100;	
	
	/**
	   * The LOG.
	   */
	private final Log _log = LogFactory.getLog();	

	/**
	   * The opened flag.
	   */
	private boolean _opened;	
	
	/**
	   * The _factory.
	   */
	private final DataFactory _factory = DataFactoryCreator.createDefaultFactory();
	

	/**
	   * The _opened monitor.
	   */
	private final Object _openedMonitor = new Object();
	
	/**
	   * The force close flag.
	   */
	private boolean _forceClosing;
	
	/**
	   * The running.
	   */
	private boolean _isProducerRunning = true;
	
	/**
	   * The _queue.
	   */
	private ArrayBlockingQueue<DataReference> _queue;	

	/**
	   * Map (sourceid + id) to path.
	   */
	private Map<ConnectivityId, File> _idToPath;	
	
	/**
	   * The _counter helper.
	   */
	private CrawlerPerformanceCounterHelper<ModelCrawlerPerformanceAgent> _performanceCounters;

	/**
	   * The _attributes.
	   */
	private Attribute[] _attributes;	
	
	/**
	   * The _attachment names.
	   */
	private String[] _attachmentNames;
	
	/**
	   * The _crawl thread.
	   */
	private CrawlingProducerThread _crawlThread;	
	
	@Override
	public DataReference[] getNext() throws CrawlerException,
			CrawlerCriticalException {
		// TODO Auto-generated method stub
		return null;
	}
	
	public ModelCrawler() {
		super();
			_log.write("Creating ModelCrawler instance");		
	}

	@Override
	public void initialize(final DataSourceConnectionConfig config) throws CrawlerException, CrawlerCriticalException {
		_log.write("Initializing FileSystemCrawler...");
	    synchronized (_openedMonitor) {
	      if (_opened) {
	        throw new CrawlerCriticalException(
	          "Crawler is busy (it should not happen because new instances are created by ComponentFactories)");
	      }
	      _opened = true;
	    }
	    _forceClosing = false;
	    _isProducerRunning = true;
	    _queue = new ArrayBlockingQueue<DataReference>(CAPACITY);
	    _idToPath = new HashMap<ConnectivityId, File>();
	    final Attributes attributes = config.getAttributes();
	    final List<IAttribute> attrs = attributes.getAttribute();
	    _performanceCounters =
	      new CrawlerPerformanceCounterHelper<ModelCrawlerPerformanceAgent>(config, hashCode(),
	        ModelCrawlerPerformanceAgent.class);
	    _attributes = attrs.toArray(new Attribute[attrs.size()]);

	    final List<String> attachmentsNames = new ArrayList<String>();
	    for (final Attribute a : _attributes) {
	      if (a.isAttachment()) {
	        attachmentsNames.add(a.getName());
	      }
	    }
	    _attachmentNames = attachmentsNames.toArray(new String[attachmentsNames.size()]);
	    _crawlThread = new CrawlingProducerThread(this, config);
	    _crawlThread.start();
	  }

	@Override
	public void close() throws CrawlerException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public AnyMap getMetadata(ConnectivityId id) throws CrawlerException,
			CrawlerCriticalException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String[] getAttachmentNames(ConnectivityId id)
			throws CrawlerException, CrawlerCriticalException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public byte[] getAttachment(ConnectivityId id, String name)
			throws CrawlerException, CrawlerCriticalException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void dispose(ConnectivityId id) {
		// TODO Auto-generated method stub
		
	}
	
	  /**
	   * The Class CrawlThread.
	   */
	  private class CrawlingProducerThread extends Thread {

	    /**
	     * The _crawler callback.
	     */
	    private final CrawlerCallback _crawlerCallback;

	    /**
	     * The _data source id.
	     */
	    private final String _dataSourceID;

	    /**
	     * The _process.
	     */
	    private final Process _process;

	    /**
	     * The _processing length.
	     */
	    private final int _processingLength;

	    /**
	     * Instantiates a new crawling producer thread.
	     * 
	     * @param configuration
	     *          the configuration
	     * @param crawlerCallback
	     *          the crawler callback
	     */
	    public CrawlingProducerThread(final CrawlerCallback crawlerCallback,
	      final DataSourceConnectionConfig configuration) {
	      super();
	      final IProcess process = configuration.getProcess();
	      _crawlerCallback = crawlerCallback;
	      _dataSourceID = configuration.getDataSourceID();
	      _process = (Process) process;
	      _processingLength = _process.getBaseDirAndFilter().size();
	    }

	    /**
	     * {@inheritDoc}
	     * 
	     * @see java.lang.Thread#run()
	     */
	    @Override
	    public void run() {
	      try {
	        try {
	          int i = 0;
	          while (i < _processingLength) {
	            final String path = (String) _process.getBaseDirAndFilter().get(i++);
	            final Filter filter = (Filter) _process.getBaseDirAndFilter().get(i++);
	            final File file = new File(path);
	            if (!file.exists() || !file.isDirectory()) {
	              _log.write("Folder " + path + " is not found");
	              continue;
	            }
	            processFolder(file, filter);
	          }
	        } catch (final Throwable ex) {
	          if (_performanceCounters != null) {
	            _performanceCounters.addException(ex);
	          }
	          _log.write("Producer error");
	        } finally {
	          _isProducerRunning = false;
	          if (_forceClosing) {
	            _log.write("Producer finished by forcing close procedure");
	          } else {
	            _log.write("Producer finished!");
	          }
	        }
	      } catch (RuntimeException ex) {
	        ex.printStackTrace();
	      }
	    }

	    /**
	     * Process folder.
	     * 
	     * @param dir
	     *          the dir
	     * @param filter
	     *          the filter
	     * 
	     * @throws CrawlerException
	     *           the crawler exception
	     */
	    private void processFolder(final File dir, final Filter filter) throws CrawlerException {
	      if (_forceClosing) {
	        return;
	      }
	      final CrawlerFileFilter fileFilter = new CrawlerFileFilter(filter);
	      treeWalk(dir, fileFilter, filter.isRecursive());
	    }

	    /**
	     * Tree walk.
	     * 
	     * @param dir
	     *          the dir
	     * @param fileFilter
	     *          the file filter
	     * @param isRecursive
	     *          the is recursive
	     * 
	     * @throws CrawlerException
	     *           the crawler exception
	     */
	    private void treeWalk(final File dir, final CrawlerFileFilter fileFilter, final boolean isRecursive)
	      throws CrawlerException {
	      if (_forceClosing) {
	        return;
	      }
	      final File[] entries = dir.listFiles(fileFilter);
	      if (entries == null) {
	        _log.write("Unknown IO error while listing directory " + dir + ", skipping.");
	      } else {
	        for (int i = 0; i < entries.length; i++) {
	          final File file = entries[i];
	          if (file.isFile()) {
	            boolean waiting = true;
	            DataReference reference = null;
	            while (waiting) {
	              try {
	                if (reference == null) {
	                  reference = initializeDataReference(entries[i]);
	                }
	                synchronized (_idToPath) {
	                  _idToPath.put(reference.getId(), file);
	                }
	                _queue.put(reference);
	                waiting = false;
	                _performanceCounters.increment(POC_FILES);
	              } catch (final Throwable e) {
	                _performanceCounters.increment(POC_PRODUCER_EXCEPTIONS);
	                _performanceCounters.addException(e);
	                _log.write("");
	              }
	            }
	          } else if (isRecursive && file.isDirectory()) {
	            treeWalk(file, fileFilter, true);
	          } else {
	            _log.write("Path " + file.getName() + " is neither file nor directory, skipping.");
	          }
	        }
	      }
	      _performanceCounters.increment(POC_FOLDERS);
	    }

	    /**
	     * Initialize data reference.
	     * 
	     * @param file
	     *          the file
	     * 
	     * @return the data reference
	     * 
	     * @throws CrawlerException
	     *           the crawler exception
	     */
	    private DataReference initializeDataReference(final File file) throws CrawlerException {
	      final AnyMap idAttributes = _factory.createAnyMap();
	      final AnyMap hashAttributes = _factory.createAnyMap();
	      final Map<String, byte[]> hashAttachments = new HashMap<String, byte[]>();
	      readIdAndHashAttributesAndAttachments(file, idAttributes, hashAttributes, hashAttachments);
	      return DataReferenceFactory.getInstance().createDataReference(_crawlerCallback, _dataSourceID, idAttributes,
	        hashAttributes, hashAttachments);
	    }

	    /**
	     * Read id and hash attributes and attachments.
	     * 
	     * @param file
	     *          the file
	     * @param idAttributes
	     *          the id attributes
	     * @param hashAttributes
	     *          the hash attributes
	     * @param hashAttachments
	     *          the hash attachments
	     * 
	     * @throws CrawlerException
	     *           the crawler exception
	     */
	    private void readIdAndHashAttributesAndAttachments(final File file, final AnyMap idAttributes,
	      final AnyMap hashAttributes, final Map<String, byte[]> hashAttachments) throws CrawlerException {
	      for (final Attribute attributeDef : _attributes) {
	        if (attributeDef.isKeyAttribute() || attributeDef.isHashAttribute()) {
	          if (attributeDef.isAttachment()) {
	            final byte[] value = readAttachment(file, attributeDef);
	            hashAttachments.put(attributeDef.getName(), value);
	          } else {
	            final Object value = readAttribute(file, attributeDef, true);
	            if (value != null) {
	              final Any attribute = _factory.parseFromObject(value);
	              final String name = attributeDef.getName();
	              if (attributeDef.isKeyAttribute()) {
	                idAttributes.put(name, attribute);
	              }
	              if (attributeDef.isHashAttribute()) {
	                hashAttributes.put(name, attribute);
	              }
	            }
	          }
	        }
	      }
	    }

	    private Object readAttribute(File file, Attribute attributeDef,
				boolean b) {
			// TODO Auto-generated method stub
			return null;
		}

		private byte[] readAttachment(File file, Attribute attributeDef) {
			// TODO Auto-generated method stub
			return null;
		}

		/**
	     * The Class CrawlerFileFilter.
	     */
	    private class CrawlerFileFilter implements FileFilter {

	      /**
	       * The _filter.
	       */
	      private final Filter _filter;

	      /**
	       * The _case.
	       */
	      private final IOCase _case;

	      /**
	       * Instantiates a new crawler filter.
	       * 
	       * @param filter
	       *          the filter
	       */
	      public CrawlerFileFilter(final Filter filter) {
	        _filter = filter;
	        if (filter.isCaseSensitive()) {
	          _case = IOCase.SENSITIVE;
	        } else {
	          _case = IOCase.INSENSITIVE;

	        }
	      }

	      /**
	       * {@inheritDoc}
	       * 
	       * @see java.io.FileFilter#accept(java.io.File)
	       */
	      @Override
	      public boolean accept(final File file) {
	        if (file.isDirectory()) {
	          return true;
	        }
	        // process includes , if there is no includes defined, then accept file
	        if (_filter.getInclude() != null && _filter.getInclude().size() > 0) {
	          final long dateLong = file.lastModified();
	          boolean acceptedByInclude = false;
	          for (final Include include : _filter.getInclude()) {
	            if (include.getDateFrom() != null) {
	              if (dateLong < include.getDateFrom().getTime()) {
	                continue;
	              }
	            }
	            if (include.getDateTo() != null) {
	              if (dateLong > include.getDateTo().getTime()) {
	                continue;
	              }
	            }
	            if (FilenameUtils.wildcardMatch(file.getName(), include.getName(), _case)) {
	              acceptedByInclude = true;
	              break;
	            }
	          }
	          if (!acceptedByInclude) {
	            return false;
	          }
	        }
	        // process excludes
	        for (final Exclude exclude : _filter.getExclude()) {
	          if (FilenameUtils.wildcardMatch(file.getName(), exclude.getName(), _case)) {
	            return false;
	          }
	        }
	        return true;
	      }
	    }
	  }
	

}
