/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.crawler.model;

import it.polimi.mdir.crawler.model.messages.Attribute;
import it.polimi.mdir.crawler.model.messages.Process.Filter;
import it.polimi.mdir.crawler.model.messages.Process.Filter.Exclude;
import it.polimi.mdir.crawler.model.messages.Process.Filter.Include;
import it.polimi.mdir.logger.Log;
import it.polimi.mdir.logger.LogFactory;
import it.polimi.mdir.xquery.XQueryWrapper;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOCase;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractCrawler;
import org.eclipse.smila.connectivity.framework.CrawlerCallback;
import org.eclipse.smila.connectivity.framework.CrawlerCriticalException;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.connectivity.framework.DataReference;
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
import org.eclipse.smila.utils.file.EncodingHelper;

/**
 * The Class ModelCrawler.
 */
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
   * The Constant QUEUE_POLL_WAITING.
   */
  private static final int QUEUE_POLL_WAITING = 300;

  /**
   * The Constant HAS_NEXT_WAITING.
   */
  private static final int HAS_NEXT_WAITING = 50;

  /**
   * The Constant CAPACITY.
   */
  private static final int CAPACITY = 100;

  /**
   * The Constant STEP.
   */
  private static final int STEP = 10;

  /**
   * The LOG, our version.
   */
  private final Log _log = LogFactory.getLog();

  /**
   * The _queue.
   */
  private ArrayBlockingQueue<DataReference> _queue;

  /**
   * The _crawl thread.
   */
  private CrawlingProducerThread _crawlThread;

  /**
   * The running.
   */
  private boolean _isProducerRunning = true;

  /**
   * The opened flag.
   */
  private boolean _opened;

  /**
   * The _opened monitor.
   */
  private final Object _openedMonitor = new Object();

  /**
   * The force close flag.
   */
  private boolean _forceClosing;

  /**
   * The _factory.
   */
  private final DataFactory _factory = DataFactoryCreator.createDefaultFactory();

  /**
   * The _attributes.
   */
  private Attribute[] _attributes;

  /**
   * The _attachment names.
   */
  private String[] _attachmentNames;

  /**
   * Map (sourceid + id) to path.
   */
  private Map<ConnectivityId, File> _idToPath;

  /**
   * The _counter helper.
   */
  private CrawlerPerformanceCounterHelper<ModelCrawlerPerformanceAgent> _performanceCounters;

  
  /**
   * The path for xquery files.
   */
  private static String XQUERY_PATH;
  
  
  
  /**
   * Instantiates a new file system crawler.
   */
  public ModelCrawler() {
    super();
    _log.write("[DEBUG] Creating ModelCrawler instance");
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.Crawler#
   *      initialize(org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig)
   */
  @Override
  public void initialize(final DataSourceConnectionConfig config) throws CrawlerException, CrawlerCriticalException {
    _log.write("[INFO] Initializing ModelCrawler...");
    synchronized (_openedMonitor) {
      if (_opened) {
        throw new CrawlerCriticalException(
          "Crawler is busy (it should not happen because new instances are created by ComponentFactories)");
      }
      checkFolders(config);
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
      
    // Initialize config file for xquery files location
    Properties xqueryConfig = new Properties();
    try {
		xqueryConfig.load(this.getClass().getClassLoader().getResourceAsStream("xqueryConfig.properties"));
	} catch (IOException e) {
		e.printStackTrace();
	}
	
	XQUERY_PATH = xqueryConfig.getProperty("DIR");
    
    
    _crawlThread = new CrawlingProducerThread(this, config);
    _crawlThread.start();
    
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.Crawler#getNext()
   */
  @Override
  public DataReference[] getNext() throws CrawlerException, CrawlerCriticalException {
    while (hasNext()) {
      final List<DataReference> refList = new ArrayList<DataReference>();
      try {
        final DataReference ref = _queue.poll(QUEUE_POLL_WAITING, TimeUnit.MILLISECONDS);
        if (ref != null) {
          refList.add(ref);
          final int size = _queue.drainTo(refList, STEP - 1);
          return refList.toArray(new DataReference[size + 1]);
        }
      } catch (final InterruptedException e) {
        ; // nothing
      }
    }
    return null;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.CrawlerCallback#dispose(org.eclipse.smila.datamodel.id.Id)
   */
  @Override
  public void dispose(final ConnectivityId id) {
    synchronized (_idToPath) {
      _idToPath.remove(id);
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.CrawlerCallback#getAttachment(org.eclipse.smila.datamodel.id.Id,
   *      java.lang.String)
   */
  @Override
  public byte[] getAttachment(final ConnectivityId id, final String name) throws CrawlerException,
    CrawlerCriticalException {
    final File file = getFileById(id);
    // find attribute
    for (final Attribute attribute : _attributes) {
      if (attribute.getName().equals(name)) {
        return readAttachment(file, attribute);
      }
    }
    throw new CrawlerCriticalException(String.format("Unable to find attachment definition for [%s]", name));
  }

  /**
   * Gets the file by id.
   * 
   * @param id
   *          the id
   * @return the file by id
   * 
   * @throws CrawlerException
   *           the crawler exception
   */
  private File getFileById(final ConnectivityId id) throws CrawlerException {
    File file;
    synchronized (_idToPath) {
      file = _idToPath.get(id);
    }
    ensureFileExists(id, file);
    return file;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.CrawlerCallback#getAttachmentNames(org.eclipse.smila.datamodel.id.Id)
   */
  @Override
  public String[] getAttachmentNames(final ConnectivityId id) throws CrawlerException, CrawlerCriticalException {
    return _attachmentNames;
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.CrawlerCallback#getMObject(org.eclipse.smila.datamodel.id.Id)
   */
  @Override
  public AnyMap getMetadata(final ConnectivityId id) throws CrawlerException, CrawlerCriticalException {
    final File file = getFileById(id);
    final AnyMap metadata = _factory.createAnyMap();
    for (final Attribute attribute : _attributes) {
      if (!attribute.isAttachment()) {
        final Object value = readAttribute(file, attribute, true);
        if (value != null) {
          try {
            metadata.put(attribute.getName(), _factory.parseFromObject(value));
          } catch (final Throwable e) {
            throw new CrawlerException(e);
          }
        }
      }
    }
    return metadata;
  }

  /**
   * Ensure file exists.
   * 
   * @param id
   *          the id
   * @param file
   *          the file
   * 
   * @throws CrawlerException
   *           the crawler exception
   */
  private void ensureFileExists(final ConnectivityId id, final File file) throws CrawlerException {
    if (file == null) {
      throw new CrawlerException(String.format("Unable to find file for id [%s].", id));
    }
    if (file == null || !file.exists()) {
      throw new CrawlerException(String.format("Unable to find file [%s]", file.getPath()));
    }
  }

  /**
   * check are folders exists, if not throw critical exception.
   * 
   * @param config
   *          the config
   * 
   * @throws CrawlerCriticalException
   *           the crawler critical exception
   */
  private void checkFolders(final DataSourceConnectionConfig config) throws CrawlerCriticalException {
    final it.polimi.mdir.crawler.model.messages.Process process = (it.polimi.mdir.crawler.model.messages.Process) config.getProcess();
    final int processingLength = process.getBaseDirAndFilter().size();
    int i = 0;
    while (i < processingLength) {
      final String path = (String) process.getBaseDirAndFilter().get(i++);
      // filter
      i++;
      final File file = new File(path);
      if (!file.exists() || !file.isDirectory()) {
        throw new CrawlerCriticalException(String.format("Folder \"%s\" is not found", path));
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.Crawler#close()
   */
  @Override
  public void close() throws CrawlerException {
    synchronized (_openedMonitor) {
      _opened = false;
      _log.write("[INFO] Closing ModelCrawler...");
      _forceClosing = true;
      _isProducerRunning = false;
      _crawlThread = null;
      _queue = null;
      _idToPath = null;
      _attachmentNames = null;
      _performanceCounters = null;
    }
  }

  /**
   * Checks for next.
   * 
   * @return true, if successful
   */
  private boolean hasNext() {
    while (_isProducerRunning && _queue.isEmpty()) {
      try {
        Thread.sleep(HAS_NEXT_WAITING);
      } catch (final InterruptedException e) {
        ; // nothing
      }
    }
    return !_queue.isEmpty();
  }

  /**
   * Read attribute value.
   * 
   * @param file
   *          the file
   * @param attribute
   *          the attribute
   * @param forceByteToString
   *          the force byte to string
   * 
   * @return the object
   * 
   * @throws CrawlerException
   *           the crawler exception
   */
  private Serializable readAttribute(final File file, final Attribute attribute, final boolean forceByteToString)
    throws CrawlerException {
	
	  XQueryWrapper xq;
	  ArrayList<String> resultList = new ArrayList<String>();
	  String resultListString = new String();
    switch (attribute.getFileAttributes()) {
      case FILENAME:
    	System.out.println("Reading FILENAME: " + file.getName());
        return file.getName();
      case PATH:
    	System.out.println("Reading PATH: " + file.getAbsolutePath());
        return file.getAbsolutePath();
      case PROJECTID:
    	xq = new XQueryWrapper(XQUERY_PATH.concat("/getProjectId.xquery"));
        xq.bindVariable("document", file.getAbsolutePath());
        resultList = xq.executeQuery();
        String id = resultList.get(0);
    	System.out.println("Reading PROJECTID: " + id);
    	return id;
    	
    	/* Note: the projectName is actually the name of the first package 
    	 * (the one which encloses the whole model), since the actual projectName is
    	 * not significative (it's always 'MetaModel')
    	 */
      case PROJECTNAME:
    	xq = new XQueryWrapper(XQUERY_PATH.concat("/getProjectName.xquery"));
        xq.bindVariable("document", file.getAbsolutePath());
        resultList = xq.executeQuery();
        String projectName = resultList.get(0);
    	System.out.println("Reading PROJECTNAME: " + projectName);
    	return projectName;
      case CLASSNAMES:
        xq = new XQueryWrapper(XQUERY_PATH.concat("/getClassNames.xquery"));
        xq.bindVariable("document", file.getAbsolutePath());
        resultList = xq.executeQuery();
        resultListString = arrayListToString(resultList);
        System.out.println("Result list Class Names: " + resultListString);
        return resultListString; 
      case CLASSIDS:
      	xq = new XQueryWrapper(XQUERY_PATH.concat("/getClassIds.xquery"));
        xq.bindVariable("document", file.getAbsolutePath());
        resultList = xq.executeQuery();
        resultListString = arrayListToString(resultList);
        System.out.println("Result list Class Ids: " + resultListString);
        return resultListString;
        
        /* Note: Attribute names are stored with:
         * - the id of their class of belonging
         * - the conceptType (attribute, composition, association)
    	 * The format is "'classIdVALUE'$'attributeNameVALUE'+'conceptType:VALUE'"
    	 */
      case ATTRIBUTENAMES:
        xq = new XQueryWrapper(XQUERY_PATH.concat("/getAttributeNames.xquery"));
        xq.bindVariable("document", file.getAbsolutePath());
        resultList = xq.executeQuery();
        resultListString = arrayListToString(resultList);
        System.out.println("Result list Attribute Names: " + resultListString);
        return resultListString;           
      default:
        throw new RuntimeException("Unknown file attributes type " + attribute.getFileAttributes());
    }
  }
  
  
  // Converting an array list to one single (very long) string
  
  private String arrayListToString(ArrayList<String> array) {
	
	  String result = new String();
	  
	  for (int i=0; i<array.size(); i++) {
		  
		  if(i == 0)
			  result = result.concat(array.get(i));
		  else 
			  result = result.concat(" " + array.get(i));
	  }
	  
	  return result;	  
	  
  }
  
  

  /**
   * Read attachment.
   * 
   * @param file
   *          the file
   * @param attribute
   *          the attribute
   * 
   * @return the byte[]
   * 
   * @throws CrawlerException
   *           the crawler exception
   */
  private byte[] readAttachment(final File file, final Attribute attribute) throws CrawlerException {
    final Serializable value = readAttribute(file, attribute, false);
    if (value != null) {
      if (value instanceof String) {
        try {
          return ((String) value).getBytes("utf-8");
        } catch (final UnsupportedEncodingException e) {
          throw new CrawlerException(e);
        }
      } else if (value instanceof byte[]) {
        return (byte[]) value;
      } // TODO serialization to byte[] for other types of attachments.
    }
    return null;
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
    private final it.polimi.mdir.crawler.model.messages.Process _process;

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
      _process = (it.polimi.mdir.crawler.model.messages.Process) process;
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
              _log.write("[ERROR] Folder " + path + " is not found");
              continue;
            }
            processFolder(file, filter);
          }
        } catch (final Throwable ex) {
          if (_performanceCounters != null) {
            _performanceCounters.addException(ex);
          }
          _log.write("[ERROR] Producer error: " + ex.toString());
        } finally {
          _isProducerRunning = false;
          if (_forceClosing) {
            _log.write("[INFO] Producer finished by forcing close procedure");
          } else {
            _log.write("[INFO] Producer finished!");
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
        _log.write("[WARNING] Unknown IO error while listing directory " + dir + ", skipping.");
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
                _log.write("[ERROR]" + e.toString());
              }
            }
          } else {
            _log.write("[WARNING] Path " + file + " is neither file nor directory, skipping.");
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
        } else {
        	System.out.println(attributeDef.getName() + ": is neither KeyAttribute nor HashAttribute");
        }
      }
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

