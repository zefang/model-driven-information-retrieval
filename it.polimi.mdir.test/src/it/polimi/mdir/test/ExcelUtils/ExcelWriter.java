/**
 * 
 */
package it.polimi.mdir.test.ExcelUtils;

import it.polimi.mdir.xquery.XQueryWrapper;

import java.io.File; 
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date; 
import jxl.*; 
import jxl.read.biff.BiffException;
import jxl.write.*;
import jxl.write.Number;
import jxl.write.biff.RowsExceededException;

/**
 * 
 * This class writes to
 * excel files the test results
 * taken as input from xml files
 * for a given meta-query instance
 * 
 * 
 * There is ONE sheet for each
 * meta-query instance and you
 * need 4 xml files for each of them
 * 
 * Everytime you call this class
 * you create a new sheet for a given
 * meta-query
 * 
 */
public class ExcelWriter {
	
	private enum Experiment {A, B, C, D};
	private static int sheetCount;
	final static int padding = 5;
	private static int column = 0;
	

	/**
	 * @param
	 * @throws WriteException 
	 * 
	 */
	
	public static void init() {
	}
	

	public static int createSheet(WritableSheet sheet, Experiment experiment, int column) throws RowsExceededException, WriteException {
		
		String experimentStr = experiment.toString();
		column = column + padding;
		int row = 6;
		
		ArrayList<String> resultList = new ArrayList<String>();
		//String projectIdStr = "";
		String projectNameStr = "";
		//String classIdStr = "";
		String classNameStr = "";
		String scoreStr = "";
		String rankingStr = "";
		
		Label label = null;
		
		// Adding experiment title label
		label = new Label(column, 4, "Experiment " + experimentStr);
		sheet.addCell(label);
		
		// Adding "table" headers
		Label rankingHeader = new Label(column, row, "Ranking");
		Label projectNameHeader = new Label(column+1, row, "Project Name");
		Label documentNameHeader = new Label(column+2, row, "Document Name");
		Label scoreHeader = new Label(column+3, row, "Score");
		
		sheet.addCell(rankingHeader);
		sheet.addCell(projectNameHeader);
		sheet.addCell(documentNameHeader);
		sheet.addCell(scoreHeader);
		
		//TODO: hard-coded stuff!
		XQueryWrapper xq = new XQueryWrapper("C:/Users/Stefano/Desktop/Thesis/model-driven-information-retrieval/it.polimi.mdir.test/xquery/testPresentation.xquery");
		xq.bindVariable("document", "result"+experimentStr+".xml");
		resultList = xq.executeQuery();
		
		for (int i=0; i<resultList.size(); i++) {
			String[] splittedResult = resultList.get(i).split(" ");
			//projectIdStr = splittedResult[0];	
			projectNameStr = splittedResult[1];
			//classIdStr = splittedResult[2];
			classNameStr = splittedResult[3];
			scoreStr = splittedResult[4];
			
			rankingStr = Integer.toString(i+1);
			
			Label ranking = new Label(column, row + i + 1, rankingStr);
			Label projectName = new Label(column+1, row + i + 1, projectNameStr);
			Label documentName = new Label(column+2, row + i + 1, classNameStr);
			Label score = new Label(column+3, row + i + 1, scoreStr);
			
			sheet.addCell(ranking);
			sheet.addCell(projectName);
			sheet.addCell(documentName);
			sheet.addCell(score);
		}
		
		
		return column;
		
	}


	
	/**
	 * @param args[0] contains sheet's title
	 * 		  args[1] contains the query string
	 * @throws WriteException 
	 * @throws BiffException 
	 * 
	 */
	
	public static void main(String[] args) throws WriteException, BiffException {
		try {
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
			
			WritableWorkbook workbook = null;
			Workbook lastWorkbook = null;
			//TODO: hard-coded stuff!
			File doc=new File("C:/Users/Stefano/Desktop/Thesis/model-driven-information-retrieval/it.polimi.mdir.test/output.xls");

			if(!doc.exists()) {	
				// Create a workbook object (first call)
				workbook = Workbook.createWorkbook(new File("output.xls"));
				sheetCount = 1;
			} else {
				// Open the existing workbook
				lastWorkbook = Workbook.getWorkbook(doc);
				workbook = Workbook.createWorkbook(new File("output.xls"), lastWorkbook);
				sheetCount = workbook.getNumberOfSheets() + 1;	
			}
						
			// Creat a new sheet
			WritableSheet sheet = workbook.createSheet(sheetTitle, sheetCount);
			
			Label label = null;
			
			// Adding sheet title (meta query id)
			label = new Label(0, 0, sheetTitle); 
			sheet.addCell(label); 
			
			// Adding query string
			label = new Label(0, 2, "Query string");
			sheet.addCell(label);
			label = new Label(1, 2, queryString);
			sheet.addCell(label);
			
			// Loop over experiments
			for(Experiment experiment : Experiment.values()) {
				column = createSheet(sheet, experiment, column);
				
			/*	
				switch(experiment) {
				case A:
					System.out.println("Experiment A");
					break;
				case B:
					System.out.println("Experiment B");
					break;
				case C:
					System.out.println("Experiment C");
					break;
				case D:
					System.out.println("Experiment D");
					break;			
				}	
			*/
			
			}
			
			// All sheets and cells added. Now write out the workbook 
			workbook.write(); 
			workbook.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
