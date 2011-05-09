package it.polimi.mdir.solr.plugin;

import org.apache.lucene.analysis.payloads.PayloadHelper;
import org.apache.lucene.search.DefaultSimilarity;

/**
 * Payload Similarity implementation. Uses Payload scores for scoring.
 */
public class PayloadSimilarity extends DefaultSimilarity {

  private static final long serialVersionUID = -2402909220013794848L;

  @Override
  public float scorePayload(int docId, String fieldName,
      int start, int end, byte[] payload, int offset, int length) {
    if (payload != null) {
      return PayloadHelper.decodeFloat(payload, offset);
    } else {
      return 1.0F;
    }
  }
}