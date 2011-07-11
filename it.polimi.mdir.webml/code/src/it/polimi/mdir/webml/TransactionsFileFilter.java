package it.polimi.mdir.webml;

import java.io.File;
import java.io.FilenameFilter;

public class TransactionsFileFilter implements FilenameFilter {
	
	@Override
	public boolean accept(File dir, String name) {
		if (name.endsWith(".wr") && name.contains("tran")) 
			return true;
		else
			return false;
	}
	
}
