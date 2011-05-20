package it.polimi.mdir.graph.processing;

import java.io.File;
import java.io.FilenameFilter;

public class UmlFileFilter implements FilenameFilter {
	@Override
	public boolean accept(File dir, String name) {
		if (name.endsWith(".uml")) 
			return true;
		else
			return false;
	}
	
}