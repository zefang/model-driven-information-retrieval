
package it.polimi.mdir.solr;

import org.eclipse.smila.management.LocatedManagementAgentBase;
import org.eclipse.smila.management.ManagementRegistration;

public class SolrSearcherPipeletAgent extends LocatedManagementAgentBase {

	private SolrSearcherPipelet _spInstance = null;

	SolrSearcherPipeletAgent(final SolrSearcherPipelet sp) {
		_spInstance = sp;
		ManagementRegistration.INSTANCE.registerAgent(this);
	}

	@Override
  protected String getCategory() {
		return null;
	}

	@Override
  protected String getName() {
		return "SolrSearcherPipelet";
	}

	public void setShards(final String shards) {
		_spInstance.setShards(shards);
	}

	public String getShards() {
		return _spInstance.getShards();
	}
}
