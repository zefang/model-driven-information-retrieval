package org.apache.solr.search;

import org.apache.lucene.analysis.payloads.PayloadHelper;
import org.apache.lucene.search.DefaultSimilarity;

public class PayloadSimilarity extends DefaultSimilarity
{
    @Override public float scorePayload(int docId, String fieldName, int start, int end, byte[] payload, int offset, int length)
    {
        if (length > 0) {
        return PayloadHelper.decodeFloat(payload, offset);
        }
        return 1.0f;
    }
}