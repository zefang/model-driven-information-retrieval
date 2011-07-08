/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.crawler.webml;

import org.eclipse.smila.connectivity.framework.schema.DataSourceConnectionConfigPlugin;

/**
 * The Class DataSourceConnectionConfigPluginImpl.
 */
public class DataSourceConnectionConfigPluginImpl implements DataSourceConnectionConfigPlugin {

  /**
   * {@inheritDoc}
   * 
   * @see org.eclipse.smila.connectivity.framework.schema.DataSourceConnectionConfigPlugin#getSchemaLocation()
   */
  @Override
  public String getSchemaLocation() {
    return "schemas/WebMLDataSourceConnectionConfigSchema.xsd";
  }

  @Override
  public String getMessagesPackage() {
	  return "it.polimi.mdir.crawler.webml.messages";

  }
  
}

