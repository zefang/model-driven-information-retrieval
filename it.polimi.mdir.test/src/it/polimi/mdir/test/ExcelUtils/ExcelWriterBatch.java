/**
 * 
 */
package it.polimi.mdir.test.ExcelUtils;

import it.polimi.mdir.xquery.XQueryWrapper;

import java.io.File; 
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

import jxl.*; 
import jxl.read.biff.BiffException;
import jxl.write.*;
import jxl.write.biff.RowsExceededException;
import jxl.format.Colour;

/**
 * 
 * This class writes to
 * excel files the test results
 * taken as input from xml files
 * for a given meta-query instance
 * 
 * You can pass the meta-query
 * instance label (e.g. MQ1)
 * as input parameter
 * 
 * There is ONE sheet for each
 * meta-query instance and you
 * need 4 xml files for each of them
 * result1-A.xml
 * result1-B.xml
 * result1-C.xml
 * result1-D.xml
 * 
 * NOTICE: THIS CLASS IS A LITTLE 
 * DIFFERENT FROM PREVIOUS ExcelWriter.java
 * 
 */
public class ExcelWriterBatch {
	
	private enum Experiment {A, B, C, D};
	
	private String XQUERY_PATH;
	private String XML_RESULTS_PATH;
	
	private int sheetCount;
	private int column = 0;

	private WritableCellFormat captionStyle;
	private WritableCellFormat tableHeaderStyle;
	private WritableCellFormat tableCellStyle;
	
	private void init() throws IOException {
		
		// Load properties
		Properties pathConfig = new Properties();
		FileInputStream in = new FileInputStream("pathConfig.properties");
		pathConfig.load(in);
		in.close();

		XQUERY_PATH = pathConfig.getProperty("X-QUERY");
		XML_RESULTS_PATH = pathConfig.getProperty("XML_RESULTS");
		
	}
	
	private void createSheet(WritableSheet sheet, Experiment experiment, int queryInst) throws RowsExceededException, WriteException, IOException {
		
		int padding;
		if(experiment.equals(Experiment.A)) {
			padding = 0;
		} else {
			padding = 6;
		}

		
		String experimentStr = experiment.toString();
		this.column = this.column + padding;
		int row = 6;
		
		ArrayList<String> resultList = new ArrayList<String>();
		String projectIdStr = "";
		String projectNameStr = "";
		String classIdStr = "";
		String classNameStr = "";
		String scoreStr = "";
		String rankingStr = "";
				
		// Adding experiment title label
		addCaption(sheet, this.column, 4, "Experiment " + experimentStr);
		
		// Adding "table" headers	
		addTableHeader(sheet, this.column, row, "Ranking");
		addTableHeader(sheet, this.column+1, row, "Document Id");
		addTableHeader(sheet, this.column+2, row, "Project Name");
		addTableHeader(sheet, this.column+3, row, "Class Name");
		addTableHeader(sheet, this.column+4, row, "Score");
				
		// Load xquery and xml result file
		XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH + "testPresentation.xquery");
		xq.bindVariable("document", XML_RESULTS_PATH + "result" + queryInst + "-" + experimentStr+".xml");
		resultList = xq.executeQuery();
		
		for (int i=0; i<resultList.size(); i++) {
			String[] splittedResult = resultList.get(i).split(" ");
			projectIdStr = splittedResult[0];	
			projectNameStr = splittedResult[1];
			classIdStr = splittedResult[2];
			classNameStr = splittedResult[3];
			scoreStr = splittedResult[4];
			
			rankingStr = Integer.toString(i+1);
			
			addTableCell(sheet, this.column, row+i+1, rankingStr);
			// If ExperimentA write projectId..
			if(experiment.equals(Experiment.A)) {
				addTableCell(sheet, this.column+1, row+i+1, projectIdStr);
			} else {
			// ..Write classId
				addTableCell(sheet, this.column+1, row+i+1, classIdStr);
			}
			addTableCell(sheet, this.column+2, row+i+1, projectNameStr);
			addTableCell(sheet, this.column+3, row+i+1, classNameStr);
			addTableCell(sheet, this.column+4, row+i+1, scoreStr);
		}		
	}
	
	public void write(String sheetTitle, String queryString, int queryInst) throws BiffException, WriteException, IOException {
		
		// Call init method to get absolute paths
		init();
		
		// Contains sheet names of this workbook
		String sheetNames[];
		
		try {		
			WritableWorkbook workbook = null;
			Workbook lastWorkbook = null;

			File doc = new File("output.xls");

			if(!doc.exists()) {	
				// Create a workbook object (first call)
				workbook = Workbook.createWorkbook(new File("output.xls"));
				sheetCount = 1;
			} else {
				// Open the existing workbook
				lastWorkbook = Workbook.getWorkbook(doc);
				workbook = Workbook.createWorkbook(new File("output.xls"), lastWorkbook);
				
				/*
				 *  The file excel is deleted if it's present a sheet whose name is the same of the current sheetTitle
				 *  This prevents deleting the output.xls every time when I test the same meta-query multiple times
				 */
				sheetNames = workbook.getSheetNames();
				boolean found = false;
				
				for(int i=0; i<sheetNames.length; i++) {
					if(sheetNames[i].contentEquals(sheetTitle))
							found = true;
				}
				
				if (found) {
					doc.delete();
					workbook = Workbook.createWorkbook(new File("output.xls"));
				}
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
				createSheet(sheet, experiment, queryInst);	
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
	private void addCaption(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
		Label label;
		label = new Label(column, row, s, captionStyle);
		sheet.addCell(label);
	}
	
	private void addTableHeader(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
		Label label;
		label = new Label(column, row, s, tableHeaderStyle);
		sheet.addCell(label);
	}
	
	private void addTableCell(WritableSheet sheet, int column, int row, String s) throws RowsExceededException, WriteException {
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
	private void setStyle(WritableSheet sheet) throws WriteException {		
		
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
