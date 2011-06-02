/**
 * 
 */
package it.polimi.mdir.test.ExcelUtils;

import it.polimi.mdir.xquery.XQueryWrapper;

import java.awt.Color;
import java.io.File; 
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date; 
import jxl.*; 
import jxl.format.UnderlineStyle;
import jxl.read.biff.BiffException;
import jxl.write.*;
import jxl.write.Number;
import jxl.write.biff.RowsExceededException;
import jxl.format.Colour;

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

	private static WritableCellFormat captionStyle;
	private static WritableCellFormat tableHeaderStyle;
	private static WritableCellFormat tableCellStyle;
	
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
				
		// Adding experiment title label
		addCaption(sheet, column, 4, "Experiment " + experimentStr);
		
		// Adding "table" headers		
		addTableHeader(sheet, column, row, "Ranking");
		addTableHeader(sheet, column+1, row, "Project Name");
		addTableHeader(sheet, column+2, row, "Document Name");
		addTableHeader(sheet, column+3, row, "Score");
				
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
			
			addTableCell(sheet, column, row+i+1, rankingStr);
			addTableCell(sheet, column+1, row+i+1, projectNameStr);
			addTableCell(sheet, column+2, row+i+1, classNameStr);
			addTableCell(sheet, column+3, row+i+1, scoreStr);
		}
		
		
		return column;
		
	}


	
	/**
	 * First param: the title of this sheet, which is the label of the current meta-query instance (e.g. MQ1INST1)
	 * Second param: the query string
	 * 
	 * @throws WriteException 
	 * @throws BiffException 
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
						
			// Create a new sheet
			WritableSheet sheet = workbook.createSheet(sheetTitle, sheetCount);
			sheet.getSettings().setDefaultColumnWidth(15);
				
			Label label = null;
			
			// Prepare cells style
			setStyle(sheet);
			
			// Adding sheet title (meta query id)
			addCaption(sheet, 0, 0, sheetTitle);
			
			// Adding query string
			addCaption(sheet, 0, 2, "Query string");
			label = new Label(1, 2, queryString);
			sheet.addCell(label);
			
			// Loop over experiments
			for(Experiment experiment : Experiment.values()) {
				column = createSheet(sheet, experiment, column);	
			}
			
			// All sheets and cells added. Now write out the workbook 
			workbook.write(); 
			workbook.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
	
	
	/**
	 * This method writes a new cell caption
	 * 
	 * @param sheet The sheet
	 * @param column The column position
	 * @param row The row position
	 * @param s The string to write		  
	 * @throws RowsExceededException 
	 * @throws WriteException 
	 * 
	 */
	private static void addCaption(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
		Label label;
		label = new Label(column, row, s, captionStyle);
		sheet.addCell(label);
	}
	
	private static void addTableHeader(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
		Label label;
		label = new Label(column, row, s, tableHeaderStyle);
		sheet.addCell(label);
	}
	
	private static void addTableCell(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
		Label label;
		
		WritableFont times10ptBold = new WritableFont(WritableFont.ARIAL, 10, WritableFont.BOLD, false);
		tableCellStyle = new WritableCellFormat(times10ptBold);
		
		if (row % 2 == 0)
			tableCellStyle.setBackground(Colour.GREY_25_PERCENT);
		else tableCellStyle.setBackground(Colour.GREY_40_PERCENT);

		label = new Label(column, row, s, tableCellStyle);
		sheet.addCell(label);
	}
	
	/**
	 * This method prepares the cells style
	 * 
	 * @param sheet The sheet
	 * @throws WriteException 
	 * 
	 */
	private static void setStyle(WritableSheet sheet) throws WriteException {		
		
		// Set caption style
		
		WritableFont times12ptBold = new WritableFont(WritableFont.ARIAL, 12, WritableFont.BOLD, false);
		captionStyle = new WritableCellFormat(times12ptBold);
		// Automatically wrap the cells
		captionStyle.setWrap(true);
		captionStyle.setBackground(Colour.ICE_BLUE);
		
		CellView cv = new CellView();
		cv.setFormat(captionStyle);
				
		// Set table header style
		
		WritableFont times10ptBold = new WritableFont(WritableFont.ARIAL, 10, WritableFont.BOLD, false);
		tableHeaderStyle = new WritableCellFormat(times10ptBold);
		// Automatically wrap the cells
		tableHeaderStyle.setWrap(true);
		tableHeaderStyle.setBackground(Colour.ICE_BLUE);
		
		cv.setFormat(captionStyle);
	}

}
