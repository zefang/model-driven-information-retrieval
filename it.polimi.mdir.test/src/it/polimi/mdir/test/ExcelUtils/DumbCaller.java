package it.polimi.mdir.test.ExcelUtils;

import jxl.read.biff.BiffException;
import jxl.write.WriteException;

public class DumbCaller {
	
	/**
	 * First param: the title of this sheet, which is the label of the current meta-query instance (e.g. MQ1INST1)
	 * Second param: the query string
	 * 
	 * @throws WriteException 
	 * @throws BiffException 
	 */
	public static void main(String[] args) throws WriteException, BiffException {

		String sheetTitle = "";
		String queryString = "";
		
		/*
		 *  This variable represents the first writable column
		 *  for the next experiment
		 */
		
		if (args[0].isEmpty() || args[1].isEmpty()) {
			System.out.println("Missing one or more parameters!");
			return;
		} else {
			sheetTitle = args[0];
			queryString = args[1];		
		}
		
		ExcelWriter excelWriter = new ExcelWriter();
		excelWriter.write(sheetTitle, queryString);

	}

}
