/*******************************************************************************
 * Contributors: Stefano Celentano, Lorenzo Furrer
 **********************************************************************************************************************/

package it.polimi.mdir.crawler.model;

import org.eclipse.smila.connectivity.ConnectivityId;
import org.eclipse.smila.connectivity.framework.AbstractCrawler;
import org.eclipse.smila.connectivity.framework.CrawlerCriticalException;
import org.eclipse.smila.connectivity.framework.CrawlerException;
import org.eclipse.smila.connectivity.framework.DataReference;
import org.eclipse.smila.connectivity.framework.schema.config.DataSourceConnectionConfig;
import org.eclipse.smila.datamodel.AnyMap;

public class ModelCrawler extends AbstractCrawler {

	@Override
	public DataReference[] getNext() throws CrawlerException,
			CrawlerCriticalException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void initialize(DataSourceConnectionConfig config)
			throws CrawlerException, CrawlerCriticalException {
		// TODO Auto-generated method stub
		
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

}
