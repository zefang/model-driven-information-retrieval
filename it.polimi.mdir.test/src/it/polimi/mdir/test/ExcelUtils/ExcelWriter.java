/**
 * 
 */
package it.polimi.mdir.test.ExcelUtils;

import java.io.File; 
import java.io.IOException;
import java.util.Date; 
import jxl.*; 
import jxl.write.*;

/**
 * This class writes to
 * excel files the test results
 * taken as input from xml files
 */
public class ExcelWriter {

	/**
	 * @param args
	 * 
	 */
	public static void main(String[] args) {
		// Create a workbook object
		try {
			WritableWorkbook workbook = Workbook.createWorkbook(new File("output.xls"));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
