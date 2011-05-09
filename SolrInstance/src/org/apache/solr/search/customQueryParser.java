package org.apache.solr.search;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.CachingTokenFilter;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;
import org.apache.lucene.analysis.tokenattributes.TermAttribute;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.CharStream;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.queryParser.QueryParserTokenManager;
import org.apache.lucene.search.BooleanClause;
import org.apache.lucene.search.BooleanQuery;
import org.apache.lucene.search.MultiPhraseQuery;
import org.apache.lucene.search.PhraseQuery;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.payloads.AveragePayloadFunction;
import org.apache.lucene.search.payloads.MaxPayloadFunction;
import org.apache.lucene.search.payloads.MinPayloadFunction;
import org.apache.lucene.search.payloads.PayloadFunction;
import org.apache.lucene.util.Version;
import org.apache.solr.common.SolrException;
import org.apache.solr.schema.IndexSchema;
import org.apache.solr.search.QParser;
import org.apache.solr.search.QueryParsing;
import org.apache.solr.search.SolrQueryParser;
import org.apache.solr.search.customPayloadTermQuery;

public class customQueryParser extends SolrQueryParser {

	private String payloadFunction = "avg";
	
	HashMap<Float,Float>  payloadWeights;
	
	public customQueryParser(IndexSchema schema, String defaultField) {
		super(schema, defaultField);
		this.payloadWeights = new HashMap<Float,Float>();
		// TODO Auto-generated constructor stub
	}


	public customQueryParser(QParser parser, String defaultField,
			Analyzer analyzer) {
		super(parser, defaultField, analyzer);
		this.payloadWeights = new HashMap<Float,Float>();
		// TODO Auto-generated constructor stub
	}


	public customQueryParser(QParser parser, String defaultField) {
		super(parser, defaultField);
		this.payloadWeights = new HashMap<Float,Float>();
		// TODO Auto-generated constructor stub
	}


	
	
				
	protected Query getFieldQuery(String field, String queryText, HashMap<Float,Float> payWeights, String payloadFunction)  throws ParseException {
	    
		if(payWeights != null){
			this.payloadWeights = payWeights;
		}
		
		if(payloadFunction != null){
			if(!payloadFunction.equals("")){
				this.payloadFunction = payloadFunction;
			}
		}
		
		checkNullField(field);
	    // intercept magic field name of "_" to use as a hook for our
	    // own functions.
	    if (field.charAt(0) == '_') {
	      if ("_val_".equals(field)) {
	        if (parser==null) {
	          return QueryParsing.parseFunction(queryText, schema);
	        } else {
	          QParser nested = parser.subQuery(queryText, "func");
	          return nested.getQuery();
	        }
	      } else if ("_query_".equals(field) && parser != null) {
	        return parser.subQuery(queryText, null).getQuery();
	      }
	    }
	    				
		// Use the analyzer to get all the tokens, and then build a TermQuery,
	    // PhraseQuery, or nothing based on the term count

	    TokenStream source;
	    try {
	      source = getAnalyzer().reusableTokenStream(field, new StringReader(queryText));
	      source.reset();
	    } catch (IOException e) {
	      source = getAnalyzer().tokenStream(field, new StringReader(queryText));
	    }
	    CachingTokenFilter buffer = new CachingTokenFilter(source);
	    TermAttribute termAtt = null;
	    PositionIncrementAttribute posIncrAtt = null;
	    int numTokens = 0;

	    boolean success = false;
	    try {
	      buffer.reset();
	      success = true;
	    } catch (IOException e) {
	      // success==false if we hit an exception
	    }
	    if (success) {
	      if (buffer.hasAttribute(TermAttribute.class)) {
	        termAtt = (TermAttribute) buffer.getAttribute(TermAttribute.class);
	      }
	      if (buffer.hasAttribute(PositionIncrementAttribute.class)) {
	        posIncrAtt = (PositionIncrementAttribute) buffer.getAttribute(PositionIncrementAttribute.class);
	      }
	    }

	    int positionCount = 0;
	    boolean severalTokensAtSamePosition = false;

	    boolean hasMoreTokens = false;
	    if (termAtt != null) {
	      try {
	        hasMoreTokens = buffer.incrementToken();
	        while (hasMoreTokens) {
	          numTokens++;
	          int positionIncrement = (posIncrAtt != null) ? posIncrAtt.getPositionIncrement() : 1;
	          if (positionIncrement != 0) {
	            positionCount += positionIncrement;
	          } else {
	            severalTokensAtSamePosition = true;
	          }
	          hasMoreTokens = buffer.incrementToken();
	        }
	      } catch (IOException e) {
	        // ignore
	      }
	    }
	    try {
	      // rewind the buffer stream
	      buffer.reset();

	      // close original stream - all tokens buffered
	      source.close();
	    }
	    catch (IOException e) {
	      // ignore
	    }

	    if (numTokens == 0)
	      return null;
	    else if (numTokens == 1) {
	      String term = null;
	      try {
	        boolean hasNext = buffer.incrementToken();
	        assert hasNext == true;
	        term = termAtt.term();
	      } catch (IOException e) {
	        // safe to ignore, because we know the number of tokens
	      }
	      
	      return new customPayloadTermQuery(new Term(field, term),createPayloadFunction(this.payloadFunction),true, this.payloadWeights);
	    } else {
	      if (severalTokensAtSamePosition) {
	        if (positionCount == 1) {
	          // no phrase query:
	          BooleanQuery q = newBooleanQuery(true);
	          for (int i = 0; i < numTokens; i++) {
	            String term = null;
	            try {
	              boolean hasNext = buffer.incrementToken();
	              assert hasNext == true;
	              term = termAtt.term();
	            } catch (IOException e) {
	              // safe to ignore, because we know the number of tokens
	            }

	            Query currentQuery = new customPayloadTermQuery(new Term(field, term),createPayloadFunction(this.payloadFunction),true, this.payloadWeights ); 	            	
	            q.add(currentQuery, BooleanClause.Occur.SHOULD);
	          }
	          return q;
	        }
	        else {
	          // phrase query:
	          MultiPhraseQuery mpq = newMultiPhraseQuery();
	          mpq.setSlop(getPhraseSlop());
	          List multiTerms = new ArrayList();
	          int position = -1;
	          for (int i = 0; i < numTokens; i++) {
	            String term = null;
	            int positionIncrement = 1;
	            try {
	              boolean hasNext = buffer.incrementToken();
	              assert hasNext == true;
	              term = termAtt.term();
	              if (posIncrAtt != null) {
	                positionIncrement = posIncrAtt.getPositionIncrement();
	              }
	            } catch (IOException e) {
	              // safe to ignore, because we know the number of tokens
	            }

	            if (positionIncrement > 0 && multiTerms.size() > 0) {
	              if (getEnablePositionIncrements()) {
	                mpq.add((Term[])multiTerms.toArray(new Term[0]),position);
	              } else {
	                mpq.add((Term[])multiTerms.toArray(new Term[0]));
	              }
	              multiTerms.clear();
	            }
	            position += positionIncrement;
	            multiTerms.add(new customPayloadTermQuery(new Term(field, term),createPayloadFunction(this.payloadFunction),true, this.payloadWeights ));
	          }
	          if (getEnablePositionIncrements()) {
	            mpq.add((Term[])multiTerms.toArray(new Term[0]),position);
	          } else {
	            mpq.add((Term[])multiTerms.toArray(new Term[0]));
	          }
	          return mpq;
	        }
	      }
	      else {
	        PhraseQuery pq = newPhraseQuery();
	        pq.setSlop(getPhraseSlop());
	        int position = -1;


	        for (int i = 0; i < numTokens; i++) {
	          String term = null;
	          int positionIncrement = 1;

	          try {
	            boolean hasNext = buffer.incrementToken();
	            assert hasNext == true;
	            term = termAtt.term();
	            if (posIncrAtt != null) {
	              positionIncrement = posIncrAtt.getPositionIncrement();
	            }
	          } catch (IOException e) {
	            // safe to ignore, because we know the number of tokens
	          }

	          if (getEnablePositionIncrements()) {
	            position += positionIncrement;
	            pq.add(new Term(field, term),position);
	          } else {
	            pq.add(new Term(field, term));
	          }
	        }
	        return pq;
	      }
	    }
	  }

	
	 private void checkNullField(String field) throws SolrException {
		    if (field == null && defaultField == null) {
		      throw new SolrException
		        (SolrException.ErrorCode.BAD_REQUEST,
		         "no field name specified in query and no defaultSearchField defined in schema.xml");
		    }
	 }
	 
	 private PayloadFunction createPayloadFunction(String func) {
	    // TODO: refactor so that payload functions are registered as plugins and loaded
	    //       through SolrResourceLoader.

	    PayloadFunction payloadFunction = null;
	    if ("min".equals(func)) {
	      payloadFunction = new MinPayloadFunction();
	    } else if ("avg".equals(func)) {
	      payloadFunction = new AveragePayloadFunction();
	    } else if ("max".equals(func)) {
	      payloadFunction = new MaxPayloadFunction();
	    }

	    if (payloadFunction == null) {
	      throw new SolrException( SolrException.ErrorCode.BAD_REQUEST, "unknown PayloadFunction: " + func);
	    }

	    return payloadFunction;
	  }

}
