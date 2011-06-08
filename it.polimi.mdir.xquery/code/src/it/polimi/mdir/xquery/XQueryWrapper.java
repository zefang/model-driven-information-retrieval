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
	
	
	
	public XQueryWrapper(String queryPath) {
		configure(queryPath);
	}
	
	/**
	 * @author Lorenzo Furrer
	 * 
	 * Funzionamento: ignora il metodo main(), serve solo per fare le prove.
	 * 
	 * Per utilizzarlo, istanziare una classe XQueryWrapper passando come 
	 * parametro il path del file con la query.
	 * Se ci sono variabili poi bisogna fare il bind chiamando il metodo bindVariable.
	 * Al momento può bindare solo stringhe, dovrebbe essere sufficiente.
	 * Alla fine usare executeQuery().
	 * Non so ancora che tipo fare ritornare a executeQuery, si vedrà. 
	 * 
	 */
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
			String resultString = "";
			
			while (result.next()) {
				listResults.add(result.getObject().toString());
			}
			result.close();
			System.out.println(listResults.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}
	
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
	
	public void bindVariable(String variableName, String value) {
		
		try {
			_xqPreparedExpression.bindString(new QName(variableName), value, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
