/*******************************************************************************
 * Copyright (c) 2008, 2011 Attensity Europe GmbH and brox IT Solutions GmbH. All rights reserved. This program and the
 * accompanying materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this
 * distribution, and is available at http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Daniel Stucky (Attensity Europe GmbH) - initial creator Drazen Cindric (Attensity Europe GmbH) - data
 * model simplification
 **********************************************************************************************************************/

package org.eclipse.smila.connectivity.framework.agent.feed;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractAgent;
import org.eclipse.smila.connectivity.framework.AgentException;
import org.eclipse.smila.connectivity.framework.agent.feed.messages.Attribute;
import org.eclipse.smila.connectivity.framework.agent.feed.messages.Process;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig.Attributes;
import org.eclipse.smila.connectivity.framework.schema.config.interfaces.IAttribute;
import org.eclipse.smila.connectivity.framework.util.AgentThreadState;
import org.eclipse.smila.connectivity.framework.util.ConnectivityHashFactory;
import org.eclipse.smila.connectivity.framework.util.ConnectivityIdFactory;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.DataFactory;
import org.eclipse.smila.datamodel.DataFactoryCreator;
import org.eclipse.smila.datamodel.InvalidValueTypeException;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;

import com.sun.syndication.feed.synd.SyndCategory;
import com.sun.syndication.feed.synd.SyndContent;
import com.sun.syndication.feed.synd.SyndEnclosure;
import com.sun.syndication.feed.synd.SyndEntryImpl;
import com.sun.syndication.feed.synd.SyndFeed;
import com.sun.syndication.feed.synd.SyndImage;
import com.sun.syndication.feed.synd.SyndLink;
import com.sun.syndication.feed.synd.SyndPerson;
import com.sun.syndication.fetcher.FeedFetcher;
import com.sun.syndication.fetcher.FetcherException;
import com.sun.syndication.fetcher.impl.FeedFetcherCache;
import com.sun.syndication.fetcher.impl.HashMapFeedInfoCache;
import com.sun.syndication.fetcher.impl.HttpURLFeedFetcher;
import com.sun.syndication.io.FeedException;

/**
 * Implementation of a FeedAgent based on ROME and ROME Fetcher. It's important to note that records returned by the
 * FeedAgent may contain nested MObjects as attribute values. Check out the documentation to see which attributes return
 * nested MObjects.
 */
public class FeedAgent extends AbstractAgent {

  /**
   * Constant to compute millisecond values.
   */
  private static final long MILLI_SECOND_MULTIPLIER = 1000;

  /**
   * The record factory.
   */
  private final DataFactory _factory = DataFactoryCreator.createDefaultFactory();

  /**
   * The LOG.
   */
  private final Log _log = LogFactory.getLog(FeedAgent.class);

  /**
   * The update interval in milliseconds.
   */
  private long _updateInterval;

  /**
   * The feed urls.
   */
  private List<String> _feedUrls;

  /**
   * The _attributes.
   */
  private Attribute[] _attributes;

  /**
   * Default Constructor.
   */
  public FeedAgent() {
    super();
    if (_log.isDebugEnabled()) {
      _log.debug("Creating FeedAgent instance");
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see java.lang.Runnable#run()
   */
  @Override
  public void run() {
    try {
      Thread.currentThread().setContextClassLoader(SyndFeed.class.getClassLoader());
      final FeedFetcherCache feedInfoCache = HashMapFeedInfoCache.getInstance();
      final FeedFetcher feedFetcher = new HttpURLFeedFetcher(feedInfoCache);
      while (!isStopThread()) {
        try {
          for (final String feedUrl : _feedUrls) {
            fetch(feedFetcher, feedUrl);
          }
          Thread.sleep(_updateInterval);
        } catch (final InterruptedException e) {
          if (_log.isDebugEnabled()) {
            _log.debug("FeedAgent thread was interrupted", e);
          }
        }
      } // while
    } catch (final Throwable t) {
      getAgentState().setLastError(t);
      getAgentState().setState(AgentThreadState.Aborted);
      throw new RuntimeException(t);
    } finally {
      try {
        stopThread();
      } catch (final Exception e) {
        throw new RuntimeException(e);
      }
    }
  }

  /**
   * {@inheritDoc}
   * 
   * @see AbstractAgent#initialize()
   */
  @Override
  protected void initialize() throws AgentException {
    // convert updateInterval to milliseconds
    _updateInterval =
      ((Process) getConfig().getProcess()).getUpdateInterval().longValue() * MILLI_SECOND_MULTIPLIER;
    _feedUrls = ((Process) getConfig().getProcess()).getFeedUrl();

    // read in configured attributes/attachments
    final Attributes attributes = getConfig().getAttributes();
    final List<IAttribute> attrs = attributes.getAttribute();
    _attributes = attrs.toArray(new Attribute[attrs.size()]);
  }

  /**
   * Fetches the feed with the given feed URL using the given FeedFetcher. For each feed entry a record is created and
   * send to the AgentController.
   * 
   * @param feedFetcher
   *          the FeedFetcher
   * @param feedUrl
   *          the URL of the feed
   */
  private void fetch(final FeedFetcher feedFetcher, final String feedUrl) {
    try {
      final SyndFeed feed = feedFetcher.retrieveFeed(new URL(feedUrl));
      if (feed != null) {
        if (_log.isInfoEnabled()) {
          _log.info("Fetched feed " + feedUrl);
        }
        @SuppressWarnings("unchecked")
        final List<SyndEntryImpl> entries = feed.getEntries();
        if (entries != null) {
          for (final SyndEntryImpl entry : entries) {
            try {
              if (entry != null) {

                final AnyMap idAttributes = _factory.createAnyMap();
                final AnyMap hashAttributes = _factory.createAnyMap();
                final Map<String, byte[]> hashAttachments = new HashMap<String, byte[]>();
                readIdAndHashAttributesAndAttachments(feed, entry, idAttributes, hashAttributes, hashAttachments);

                final String hash = createHash(hashAttributes, hashAttachments);
                final Record record = createRecord(feed, entry, idAttributes);
                if (_log.isTraceEnabled()) {
                  _log.trace("created record " + record.getId());
                } // if
                getControllerCallback().add(getSessionId(), getConfig().getDeltaIndexing(), record, hash);
              }
            } catch (final AgentException e) {
              getAgentState().setLastError(e);
              if (_log.isErrorEnabled()) {
                _log
                  .error("Error during creation of record for entry " + entry.getUri() + " of feed " + feedUrl, e);
              }
            }
          } // for
        } // if
      } // if
    } catch (final FetcherException e) {
      getAgentState().setLastError(e);
      if (_log.isErrorEnabled()) {
        _log.error("HTTP error during fetching of feed " + feedUrl, e);
      }
    } catch (final FeedException e) {
      getAgentState().setLastError(e);
      if (_log.isErrorEnabled()) {
        _log.error("Error during fetching of feed " + feedUrl + ". The feed is invalid", e);
      }
    } catch (final IOException e) {
      getAgentState().setLastError(e);
      if (_log.isErrorEnabled()) {
        _log.error("TCP error during fetching of feed " + feedUrl, e);
      }
    } catch (final IllegalArgumentException e) {
      getAgentState().setLastError(e);
      if (_log.isErrorEnabled()) {
        _log.error("Error during fetching of feed " + feedUrl + ". The URL is invalid", e);
      }
      throw e;
    }
  }

  /**
   * Create a new record from the given feed and entry.
   * 
   * @param feed
   *          a SyndFeed
   * @param entry
   *          a SyndEntryImpl
   * @param idAttributes
   *          an AnyMap with id attributes
   * @return a Record object
   * @throws AgentException
   *           if any error occurs
   */
  private Record createRecord(final SyndFeed feed, final SyndEntryImpl entry, final AnyMap idAttributes)
    throws AgentException {

    // compute id
    final ConnectivityId id =
      ConnectivityIdFactory.getInstance().createId(getConfig().getDataSourceID(), idAttributes);

    // create record
    final Record record = _factory.createRecord();
    record.setId(id.getObjectId());
    record.setSource(id.getDataSourceId());

    fillRecord(feed, entry, record);
    return record;
  }

  /**
   * Computes the delta indexing hash.
   * 
   * @param hashAttributes
   *          an {@link AnyMap} with hash attributes
   * @param hashAttachments
   *          a list of hash attachments
   * @return a String containing the hash
   */
  private String createHash(final AnyMap hashAttributes, final Map<String, byte[]> hashAttachments) {
    return ConnectivityHashFactory.getInstance().createHash(hashAttributes, hashAttachments);
  }

  /**
   * Reads attributes/attachments to create Id and hash from. Fills the given containers with Attribute objects.
   * 
   * @param feed
   *          a SyndFeed
   * @param entry
   *          a SyndEntryImpl
   * @param idAttributes
   *          a List to add attributes to create the Id from to
   * @param hashAttributes
   *          a List to add attributes to create the hash from to
   * @param hashAttachments
   *          a Map to add attachments to create the hash from to
   * @throws AgentException
   *           if any error occurs
   */
  private void readIdAndHashAttributesAndAttachments(final SyndFeed feed, final SyndEntryImpl entry,
    final AnyMap idAttributes, final AnyMap hashAttributes, final Map<String, byte[]> hashAttachments)
    throws AgentException {
    for (final Attribute attributeDef : _attributes) {
      if (attributeDef.isKeyAttribute() || attributeDef.isHashAttribute()) {
        if (attributeDef.isAttachment()) {
          final byte[] value = readAttachment(feed, entry, attributeDef);
          hashAttachments.put(attributeDef.getName(), value);
        } else {
          final Any any = readAttribute(feed, entry, attributeDef);
          if (any != null) {
            if (attributeDef.isKeyAttribute()) {
              idAttributes.put(attributeDef.getName(), any);
            }
            if (attributeDef.isHashAttribute()) {
              hashAttributes.put(attributeDef.getName(), any);
            }
          } // if
        } // else
      } // if
    } // for
  }

  /**
   * Fills the record with the configured attributes/attachments using the data from the given MockAgentData object.
   * 
   * @param feed
   *          a SyndFeed
   * @param entry
   *          a SyndEntryImpl
   * @param record
   *          the Record object to fill the data in
   * @throws AgentException
   *           if any error occurs
   */
  private void fillRecord(final SyndFeed feed, final SyndEntryImpl entry, final Record record)
    throws AgentException {
    for (final Attribute attributeDef : _attributes) {
      if (attributeDef.isAttachment()) {
        final byte[] value = readAttachment(feed, entry, attributeDef);
        record.setAttachment(attributeDef.getName(), value);
      } else {
        final Any any = readAttribute(feed, entry, attributeDef);
        if (any != null) {
          record.getMetadata().put(attributeDef.getName(), any);
        } // if
      } // else
    } // for
  }

  /**
   * Reads the value for a given attribute from the MockAgentData object.
   * 
   * @param feed
   *          a SyndFeed
   * @param entry
   *          a SyndEntryImpl
   * @param attributeDef
   *          the attribute to read
   * @return an {@link Any} object
   * @throws AgentException
   *           if any error occurs
   */
  @SuppressWarnings("unchecked")
  private Any readAttribute(final SyndFeed feed, final SyndEntryImpl entry, final Attribute attributeDef)
    throws AgentException {
    switch (attributeDef.getFeedAttributes()) {
      // feed attributes
      case FEED_AUTHORS:
        return getPersons(feed.getAuthors(), feed.getAuthor());
      case FEED_CATEGORIES:
        return getCategories(feed.getCategories());
      case FEED_CONTRIBUTORS:
        return getPersons(feed.getContributors(), null);
      case FEED_COPYRIGHT:
        return getValue(feed.getCopyright());
      case FEED_DESCRIPTION:
        return getValue(feed.getDescription());
      case FEED_ENCODING:
        return getValue(feed.getEncoding());
      case FEED_TYPE:
        return getValue(feed.getFeedType());
      case FEED_IMAGE:
        return getImage(feed.getImage());
      case FEED_LANGUAGE:
        return getValue(feed.getLanguage());
      case FEED_LINKS:
        return getLinks(feed.getLinks(), feed.getLink());
      case FEED_PUBLISH_DATE:
        return getValue(feed.getPublishedDate());
      case FEED_TITLE:
        return getValue(feed.getTitle());
      case FEED_URI:
        return getValue(feed.getUri());

        // feed entry attributes
      case AUTHORS:
        return getPersons(entry.getAuthors(), entry.getAuthor());
      case CATEGORIES:
        return getCategories(entry.getCategories());
      case CONTENTS:
        return getContents(entry.getContents());
      case CONTRIBUTORS:
        return getPersons(entry.getContributors(), null);
      case DESCRIPTION:
        return getContent(entry.getDescription());
      case ENCLOSURES:
        return getEnclosures(entry.getEnclosures());
      case LINKS:
        return getLinks(entry.getLinks(), entry.getLink());
      case PUBLISH_DATE:
        return getValue(entry.getPublishedDate());
      case TITLE:
        return getValue(entry.getTitle());
      case URI:
        return getValue(entry.getUri());
      case UPDATE_DATE:
        return getValue(entry.getUpdatedDate());
      default:
        throw new RuntimeException("Unknown feed attributes type " + attributeDef.getFeedAttributes());
    }
  }

  /**
   * @param object
   *          The object
   * @return The matching {@link Value} object, null else
   */
  private Value getValue(final Object object) {
    if (object != null) {
      return _factory.parseFromObject(object);
    } else {
      return null;
    }
  }

  /**
   * Creates an {@link AnyMap} containing all image information.
   * 
   * @param feedImage
   *          a SyndImage
   * @return The {@link AnyMap} object with all information
   */
  private AnyMap getImage(final SyndImage feedImage) {
    if (feedImage != null) {
      try {
        final AnyMap anyMap = _factory.createAnyMap();
        anyMap.put("Link", getValue(feedImage.getLink()));
        anyMap.put("Title", getValue(feedImage.getTitle()));
        anyMap.put("Url", getValue(feedImage.getUrl()));
        anyMap.put("Description", getValue(feedImage.getDescription()));
      } catch (final InvalidValueTypeException e) {
        if (_log.isErrorEnabled()) {
          _log.error("Error while creating AnyMap for image.", e);
        }
      }
    }
    return null;
  }

  /**
   * Creates an {@link AnySeq}, where each {@link Value} contains all person information. If persons is empty the
   * fallbackValue will be used to create an AnySeq with one one person with given name
   * 
   * @param persons
   *          a List of SyndPerson
   * @param fallbackValue
   *          a fallback person name if parameter persons is empty
   * @return an {@link AnySeq} object with the list of persons
   */
  private AnySeq getPersons(final List<SyndPerson> persons, final String fallbackValue) {
    final AnySeq anySeq = _factory.createAnySeq();
    if (persons != null && !persons.isEmpty()) {
      for (final SyndPerson person : persons) {
        try {
          final AnyMap personMap = _factory.createAnyMap();
          personMap.put("Email", getValue(person.getEmail()));
          personMap.put("Name", getValue(person.getName()));
          personMap.put("Uri", getValue(person.getUri()));
          anySeq.add(personMap);
        } catch (final InvalidValueTypeException e) {
          if (_log.isErrorEnabled()) {
            _log.error("Error while creating AnyMap for Person ", e);
          }
        }
      }
      return anySeq;
    } else if (fallbackValue != null) {
      try {
        final AnyMap personMap = _factory.createAnyMap();
        personMap.put("Name", getValue(fallbackValue));
        anySeq.add(personMap);
        return anySeq;
      } catch (final InvalidValueTypeException e) {
        if (_log.isErrorEnabled()) {
          _log.error("Error while creating AnyMap for Person ", e);
        }
      }
    }
    return null;
  }

  /**
   * Creates an {@link AnySeq}, where each {@link AnyMap} contains all category information.
   * 
   * @param categories
   *          a List of SyndCategory
   * @return an {@link AnySeq} with the list of categories
   */
  private AnySeq getCategories(final List<SyndCategory> categories) {
    if (categories != null) {
      final AnySeq categoryList = _factory.createAnySeq();
      for (final SyndCategory category : categories) {
        try {
          final AnyMap anyMap = _factory.createAnyMap();
          anyMap.put("Name", getValue(category.getName()));
          anyMap.put("TaxanomyUri", getValue(category.getTaxonomyUri()));
          categoryList.add(anyMap);
        } catch (final InvalidValueTypeException e) {
          if (_log.isErrorEnabled()) {
            _log.error("Error while creating AnyMap for Category ", e);
          }
        }
      }
      return categoryList;
    }
    return null;
  }

  /**
   * Creates an {@link AnySeq}, where each {@link AnyMap} contains all enclosure information.
   * 
   * @param enclosures
   *          a List of SyndEnclosure
   * @return an {@link AnySeq} with the list of enclosures
   */
  private AnySeq getEnclosures(final List<SyndEnclosure> enclosures) {
    if (enclosures != null) {
      final AnySeq enclosureList = _factory.createAnySeq();
      for (final SyndEnclosure enclosure : enclosures) {
        try {
          final AnyMap anyMap = _factory.createAnyMap();
          anyMap.put("Type", getValue(enclosure.getType()));
          anyMap.put("Url", getValue(enclosure.getUrl()));
          anyMap.put("Length", getValue(enclosure.getLength()));
          enclosureList.add(anyMap);
        } catch (final InvalidValueTypeException e) {
          if (_log.isErrorEnabled()) {
            _log.error("Error while creating AnyMap for Category ", e);
          }
        }
      }
      return enclosureList;
    }
    return null;
  }

  /**
   * Creates an AnySeq, where each {@link AnyMap} contains all link information. If links is empty the fallbackValue
   * will be used.
   * 
   * @param links
   *          a List of SyndLink
   * @param fallbackValue
   *          a fallback link href if parameter links is empty
   * @return an {@link AnySeq} with all link information
   */
  private AnySeq getLinks(final List<SyndLink> links, final String fallbackValue) {
    final AnySeq anySeq = _factory.createAnySeq();
    if (links != null && !links.isEmpty()) {
      for (final SyndLink link : links) {
        try {
          final AnyMap anyMap = _factory.createAnyMap();
          anyMap.put("Href", getValue(link.getHref()));
          anyMap.put("Hreflang", getValue(link.getHreflang()));
          anyMap.put("Rel", getValue(link.getRel()));
          anyMap.put("Title", getValue(link.getTitle()));
          anyMap.put("Type", getValue(link.getType()));
          anyMap.put("Length", getValue(link.getLength()));
          anySeq.add(anyMap);
        } catch (final InvalidValueTypeException e) {
          if (_log.isErrorEnabled()) {
            _log.error("Error while creating AnyMap for Link ", e);
          }
        }
      }
      return anySeq;
    } else if (fallbackValue != null) {
      try {
        final AnyMap anyMap = _factory.createAnyMap();
        anyMap.put("Href", getValue(fallbackValue));
        anySeq.add(anyMap);
        return anySeq;
      } catch (final InvalidValueTypeException e) {
        if (_log.isErrorEnabled()) {
          _log.error("Error while creating AnyMap for Person ", e);
        }
      }
    }

    return null;
  }

  /**
   * Creates an {@link AnySeq}, where each {@link AnyMap} contains all contents information.
   * 
   * @param contents
   *          a List of SyndContent
   * @return an {@link AnySeq} with the contents information
   */
  private AnySeq getContents(final List<SyndContent> contents) {
    if (contents != null) {
      final AnySeq anySeq = _factory.createAnySeq();
      for (final SyndContent content : contents) {
        final AnyMap anyMap = getContent(content);
        if (anyMap != null) {
          anySeq.add(anyMap);
        }
      }
      return anySeq;
    }
    return null;
  }

  /**
   * Creates an {@link AnyMap} containing all content information.
   * 
   * @param content
   *          a SyndContent
   * @return an {@link AnyMap} with the content information
   */
  private AnyMap getContent(final SyndContent content) {
    if (content != null) {
      try {
        final AnyMap anyMap = _factory.createAnyMap();
        anyMap.put("Mode", getValue(content.getMode()));
        anyMap.put("Value", getValue(content.getValue()));
        String type = content.getType();
        if ("html".equals(type)) {
          type = "text/html";
        } else if ("xml".equals(type)) {
          type = "text/xml";
        } else if ("text".equals(type)) {
          type = "text/Plain";
        }
        anyMap.put("Type", getValue(type));
        return anyMap;
      } catch (final InvalidValueTypeException e) {
        if (_log.isErrorEnabled()) {
          _log.error("Error while creating AnyMap for Content ", e);
        }
      }
    }
    return null;
  }

  /**
   * Reads the value for a given attribute as an attachment (byte[]) from the MockAgentData object.
   * 
   * @param feed
   *          a SyndFeed
   * @param entry
   *          a SyndEntryImpl
   * @param attribute
   *          the attribute to read
   * @return a byte[]
   * @throws AgentException
   *           if any error occurs
   */
  private byte[] readAttachment(final SyndFeed feed, final SyndEntryImpl entry, final Attribute attribute)
    throws AgentException {
    final Any value = readAttribute(feed, entry, attribute);
    if (value != null) {
      if (value.isString()) {
        try {
          return ((Value) value).asString().getBytes("utf-8");
        } catch (final UnsupportedEncodingException e) {
          throw new AgentException(e);
        }
      } else {
        if (_log.isWarnEnabled()) {
          _log.warn("The value type " + value.getValueType() + " of attribute " + attribute.getName()
            + " cannot be used for attachments.");
        }
      }
    }
    return null;
  }

}
