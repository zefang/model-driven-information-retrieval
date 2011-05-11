package org.apache.solr.search;

import java.util.HashMap;

import org.apache.lucene.analysis.payloads.PayloadHelper;
import org.apache.lucene.search.DefaultSimilarity;

public class customSimilarity extends DefaultSimilarity {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
    public float scorePayload(String fieldName, byte[] bytes, int offset, int length) {
       float pl = PayloadHelper.decodeFloat(bytes, offset);//we can ignore length here, because we know it is encoded as 4 bytes	          
       return pl;
    }
	
	public float scorePayload(int docId, String fieldName, int start, int end, byte [] payload, int offset, int length, HashMap<Float,Float> payWeight)
	  {
		float pl = PayloadHelper.decodeFloat(payload, offset);//we can ignore length here, because we know it is encoded as 4 bytes
		float score = 1.0f;
		return pl;
		/*if(payWeight.containsKey(new Float(pl))){
		   score = ((Float)payWeight.get(new Float(pl))).floatValue();
		}		       
	    return score;*/
	  }
		
	
}
