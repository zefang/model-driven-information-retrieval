package it.polimi.mdir.solr.plugin;

import java.util.HashMap;
import java.util.Map;

import org.apache.lucene.search.DefaultSimilarity;
import org.apache.lucene.search.Similarity;

/**
 * A delegating Similarity implementation similar to PerFieldAnalyzerWrapper.
 */
public class MyPerFieldSimilarityWrapper extends Similarity {

  private static final long serialVersionUID = -7777069917322737611L;

  private Similarity defaultSimilarity;
  private Map<String,Similarity> fieldSimilarityMap; 
  
  public MyPerFieldSimilarityWrapper() {
    this.defaultSimilarity = new DefaultSimilarity();
    this.fieldSimilarityMap = new HashMap<String,Similarity>();
    this.fieldSimilarityMap.put("text_C", new PayloadSimilarity());
    this.fieldSimilarityMap.put("className", new PayloadSimilarity());
  }
  
  @Override
  public float coord(int overlap, int maxOverlap) {
    return defaultSimilarity.coord(overlap, maxOverlap);
  }

  @Override
  public float idf(int docFreq, int numDocs) {
    return defaultSimilarity.idf(docFreq, numDocs);
  }

  @Override
  public float lengthNorm(String fieldName, int numTokens) {
    Similarity sim = fieldSimilarityMap.get(fieldName);
    if (sim == null) {
      return defaultSimilarity.lengthNorm(fieldName, numTokens);
    } else {
      return sim.lengthNorm(fieldName, numTokens);
    }
  }

  @Override
  public float queryNorm(float sumOfSquaredWeights) {
    return defaultSimilarity.queryNorm(sumOfSquaredWeights);
  }

  @Override
  public float sloppyFreq(int distance) {
    return defaultSimilarity.sloppyFreq(distance);
  }

  @Override
  public float tf(float freq) {
    return defaultSimilarity.tf(freq);
  }
  
  @Override
  public float scorePayload(int docId, String fieldName,
      int start, int end, byte[] payload, int offset, int length) {
    Similarity sim = fieldSimilarityMap.get(fieldName);
    if (sim == null) {
      return defaultSimilarity.scorePayload(docId, fieldName, 
        start, end, payload, offset, length);
    } else {
      return sim.scorePayload(docId, fieldName, 
        start, end, payload, offset, length);
    }
  }
}