package org.eclipse.smila.datamodel;

import java.util.ArrayList;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.NotImplementedException;
import org.apache.commons.lang.StringUtils;

/**
 * @author tmenzel
 * 
 */
public final class MetadataUtils {

  /** The logger. */
  private static final org.apache.commons.logging.Log _log = org.apache.commons.logging.LogFactory
    .getLog(MetadataUtils.class);

  /**
   * The Enum CreateFlags.
   */
  public enum CreateFlag {

    /** all missing elements but the last are created. */
    PARENTS,
    /** all missing elements including the last are created. */
    ALL,
    /** The NONE. */
    NONE
  }

  /**
   * returns the requested Any object.
   * 
   * @param metadata
   *          the metadata, must be either a SEQ or MAP
   * @param createFlag
   *          the create parents
   * @param path
   *          the path. may be distinct elements or whole segments. elements are separated by a /. an element is used an
   *          index into either a map or sequence. in the latter case it must evaluate to a number, otherwise a
   *          {@link IllegalArgumentException} is thrown
   */
  static AnyMap getMap(Any metadata, CreateFlag createFlag, String... path) {
    /* PERF: could be made faster with a tokenizer/iterator | TM @ Apr 27, 2011 */
    final ArrayList<String> pathElements = new ArrayList<String>(16);
    for (String pathSegment : path) {
      final String[] split = StringUtils.split(pathSegment, '/');
      CollectionUtils.addAll(pathElements, split);
    } // for

    final Any any = getAny(metadata, createFlag, pathElements, 0);
    return any == null ? null : any.asMap();

  }

  /**
   * Gets the map.
   * 
   * @param createAll
   *          false -> NONE, true -> ALL
   */
  public static AnyMap getMap(AnyMap metadata, boolean createAll, String... path) {
    return getMap(metadata, createAll ? CreateFlag.ALL : CreateFlag.NONE, path);
  }

  /**
   * 
   */
  private static boolean flags2bool(CreateFlag createFlag) {
    final boolean create;
    switch (createFlag) {
      case NONE:
        create = false;
        // case PARENTS:
        // create
        break;
      case ALL:
        create = true;
        break;
      default:
        throw new NotImplementedException("unknown create flag: " + createFlag);
    }
    return create;
  }

  /**
   * Gets the any.
   */
  private static Any getAny(Any parent, CreateFlag createFlag, ArrayList<String> pathElements, int index) {

    // recursion stop
    if (index >= pathElements.size() || parent == null) {
      return parent;
    }

    final String keyOrIndex = pathElements.get(index);
    final boolean create = flags2bool(createFlag);

    final Any child;
    if (parent.isMap()) {
      /*
       * BETTER: only maps are creared in the fly extend this for sequences in case the next element is a number| TM @
       * Apr 27, 2011
       */
      child = parent.asMap().getMap(keyOrIndex, create);
    } else if (parent.isSeq()) {
      child = parent.asSeq().get(Integer.parseInt(keyOrIndex));
    } else {
      final String subPath = getSubPath(pathElements, index);
      throw new InvalidValueTypeException("expected Any to be one of SEQ or MAP at: " + subPath);
    }

    if (child == null) {
      if (_log.isTraceEnabled()) {
        _log.trace("missing element: " + getSubPath(pathElements, index));
      } // if
    }

    // recursion
    return getAny(child, createFlag, pathElements, ++index);

  }

  /**
   * Gets the sub path.
   */
  private static String getSubPath(ArrayList<String> pathElements, int index) {
    return StringUtils.join(pathElements.subList(0, index), '/');
  }

  /**
   * Instantiates a new metadata utils.
   */
  private MetadataUtils() {
  }

}
