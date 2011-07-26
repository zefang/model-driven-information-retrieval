package it.polimi.mdir.xquery;

import java.io.FileInputStream;
import java.util.ArrayList;

import javax.xml.namespace.QName;
import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQPreparedExpression;
import javax.xml.xquery.XQResultSequence;

public class XQueryWrapper {
	
	private static final String DRIVER = "org.basex.api.xqj.BXQDataSource";
	
	private XQDataSource _xqDatasource;
	private XQConnection _xqConnection;
	private XQPreparedExpression _xqPreparedExpression;
	private XQResultSequence _xqResultSequence;
	
	private FileInputStream _queryFile;
	
	
	/**
	 * The main() method is used only to do tests.<br /><br />
	 * 
	 * How to use XQueryWrapper:<br />
	 * Instantiate XQueryWrapper class ppassing as parameter
	 * the path of the xquery that you want to run.<br />
	 * If there are variables to bind, call the bindVariable() method. Which at
	 * the moment can bind only variables of type String.<br />
	 * At the end call executeQuery(), which will return an ArrayList of String types
	 * containing the result of the xquery. 
	 * 
	 *  @param queryPath
	 *  Path to the xquery that you want to run. 
	 * 
	 */
	public XQueryWrapper(String queryPath) {
		configure(queryPath);
	}
	
	public static void main(String[] args) {
		
		try {
				
			XQDataSource source = (XQDataSource) Class.forName(DRIVER).newInstance();
		
			XQConnection conn = source.getConnection();
		
			FileInputStream inputStream = new FileInputStream("xquery/q.xquery"); 
			XQPreparedExpression expr = conn.prepareExpression(inputStream);
			expr.bindObject(new QName("document"),new String("exampledocs/PetriNet_extended.uml"), null);
			//expr.bindObject(new QName("v"),new Integer(23), null);
			
			XQResultSequence result = expr.executeQuery();
			
			ArrayList<String> listResults = new ArrayList<String>();
			//String resultString = "";
			
			while (result.next()) {
				listResults.add(result.getObject().toString());
			}
			result.close();
			System.out.println(listResults.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}
	
	/**
	 * Initializes the various objects needed to perform the xquery.
	 * @param queryPath
	 * Path to the xquery that you want to run. 
	 */
	private void configure(String queryPath) {
		try {
			_xqDatasource = (XQDataSource) Class.forName(DRIVER).newInstance();
			_xqConnection = _xqDatasource.getConnection();
			
			_queryFile = new FileInputStream(queryPath);
			_xqPreparedExpression = _xqConnection.prepareExpression(_queryFile);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
	}
	
	/**
	 * Performs the selected xquery.
	 * 
	 * @return
	 * An ArrayList containing the results of the xquery as Strings.
	 */
	public ArrayList<String> executeQuery() {
		
		ArrayList<String> resultList = new ArrayList<String>();
		try {
			_xqResultSequence = _xqPreparedExpression.executeQuery();
			
			while (_xqResultSequence.next()) {
				resultList.add(_xqResultSequence.getObject().toString());
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultList;
	}
	
	/**
	 * Binds the passed parameter to a variable of the xquery.
	 * At the moment it accepts only String types.
	 *  
	 * @param variableName
	 * The name of the variable of the xquery.
	 * @param value
	 * The value to assign to this variable.
	 */
	public void bindVariable(String variableName, String value) {
		
		try {
			_xqPreparedExpression.bindString(new QName(variableName), value, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
