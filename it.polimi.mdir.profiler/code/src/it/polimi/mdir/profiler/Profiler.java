package it.polimi.mdir.profiler;

import it.polimi.mdir.xquery.XQueryWrapper;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class Profiler {

	
	final static private String MODELS_PATH = "C:/UML_models";
	final static private String QUERY_PATH = "xquery/getPackages.xquery";
	final static private String OUTPUT_PATH = "output/numpackages.txt";
	
	private static int _numClasses = -1;
	
	/**
	 * Counts the number of packages and classes of the UML dataset.
	 */
	public static void main(String[] args) {
		
		//delete old file if it exists;
		File outputFile = new File(OUTPUT_PATH);
		if (outputFile.exists()) {
			outputFile.delete();
		}
		
		File directory = new File(MODELS_PATH);
		ArrayList<String> resultList = new ArrayList<String>();
		
		File[] fileList = directory.listFiles();
		for(int i = 0; i < fileList.length; i++) {
			System.out.println("Calculate number of classes of: " + fileList[i].getPath());
			XQueryWrapper xqw = new XQueryWrapper(QUERY_PATH);
			xqw.bindVariable("document", fileList[i].getPath());
			resultList = xqw.executeQuery();
			_numClasses = resultList.size();
			
			//fill output file
			try {
				FileWriter fw = new FileWriter(outputFile,true);
				PrintWriter outputstream = new PrintWriter(fw);
				outputstream.println(_numClasses);
				outputstream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
        }
	}

}
