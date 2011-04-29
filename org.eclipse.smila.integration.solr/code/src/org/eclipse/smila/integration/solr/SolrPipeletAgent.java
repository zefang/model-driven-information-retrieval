/*******************************************************************************
 * Copyright (c) 2010 Empolis GmbH and brox IT Solutions GmbH. 
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Igor Novakovic (Empolis GmbH) - initial implementation
 *******************************************************************************/

package org.eclipse.smila.integration.solr;

import org.eclipse.smila.management.LocatedManagementAgentBase;
import org.eclipse.smila.management.ManagementRegistration;

public class SolrPipeletAgent extends LocatedManagementAgentBase {

	private SolrSearchPipelet _spInstance = null;

	SolrPipeletAgent(final SolrSearchPipelet sp) {
		_spInstance = sp;
		ManagementRegistration.INSTANCE.registerAgent(this);
	}

	@Override
  protected String getCategory() {
		return null;
	}

	@Override
  protected String getName() {
		return "SolrSearchPipelet";
	}

	public void setShards(final String shards) {
		_spInstance.setShards(shards);
	}

	public String getShards() {
		return _spInstance.getShards();
	}
}
