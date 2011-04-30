package it.polimi.mdir.xquery;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import javax.xml.namespace.QName;
import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;
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
	 * Al momento pu� bindare solo stringhe, dovrebbe essere sufficiente.
	 * Alla fine usare executeQuery().
	 * Non so ancora che tipo fare ritornare a executeQuery, si vedr�. 
	 * 
	 */
	public static void main(String[] args) {
		
		try {
			XQDataSource source = (XQDataSource) Class.forName(DRIVER).newInstance();
		
			XQConnection conn = source.getConnection();
		
			FileInputStream inputStream = new FileInputStream("xquery/q.xquery"); 
			XQPreparedExpression expr = conn.prepareExpression(inputStream);
			expr.bindObject(new QName("document"),new String("exampledocs/books.xml"), null);
			expr.bindObject(new QName("v"),new Integer(23), null);
			
			XQResultSequence result = expr.executeQuery();
			
			while (result.next()) {
				System.out.println(result.getItemAsString(null));
			}
		
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (XQException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

	}
	
	public void configure(String queryPath) {
		try {
			
			_xqDatasource = (XQDataSource) Class.forName(DRIVER).newInstance();
			_xqConnection = _xqDatasource.getConnection();
			
			_queryFile = new FileInputStream(queryPath);
			_xqPreparedExpression = _xqConnection.prepareExpression(_queryFile);
			
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (XQException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
	public XQResultSequence executeQuery(String query, String documentPath) throws XQException {
		
		_xqResultSequence = _xqPreparedExpression.executeQuery();
			
		while (_xqResultSequence.next()) {
			System.out.println(_xqResultSequence.getItemAsString(null));
		}
			
		return _xqResultSequence;
	}
	
	public void bindVariable(String variableName, String value) throws XQException {
		
		_xqPreparedExpression.bindString(new QName(variableName), value, null);
		
	}

}
