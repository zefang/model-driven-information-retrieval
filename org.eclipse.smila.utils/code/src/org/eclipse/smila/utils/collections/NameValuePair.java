package org.eclipse.smila.utils.collections;

/**
 * Simple name value class.
 */
public class NameValuePair {

  /** The name. */
  private final String _name;

  /** The value. */
  private final String _value;

  /**
   * Creates a new pair of a name and a value.
   * 
   * @param name
   *          the name.
   * @param value
   *          the value for the name.
   */
  public NameValuePair(final String name, final String value) {
    _name = name;
    _value = value;
  }

  /**
   * @return The name of the name-value pair.
   */
  public String getName() {
    return _name;
  }

  /**
   * @return The value of the name-value pair.
   */
  public String getValue() {
    return _value;
  }

}
