package org.apache.solr.search;

/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import org.apache.lucene.index.Term;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.TermPositions;
import org.apache.lucene.search.Searcher;
import org.apache.lucene.search.Scorer;
import org.apache.lucene.search.Weight;
import org.apache.lucene.search.Similarity;
import org.apache.lucene.search.Explanation;
import org.apache.lucene.search.ComplexExplanation;
import org.apache.lucene.search.payloads.PayloadFunction;
import org.apache.lucene.search.payloads.PayloadTermQuery;
import org.apache.lucene.search.spans.TermSpans;
import org.apache.lucene.search.spans.SpanTermQuery;
import org.apache.lucene.search.spans.SpanWeight;
import org.apache.lucene.search.spans.SpanScorer;

import org.apache.solr.search.customSimilarity;

import java.io.IOException;
import java.util.HashMap;

/**
 * This class is very similar to
 * {@link org.apache.lucene.search.spans.SpanTermQuery} except that it factors
 * in the value of the payload located at each of the positions where the
 * {@link org.apache.lucene.index.Term} occurs.
 * <p>
 * In order to take advantage of this, you must override
 * {@link org.apache.lucene.search.Similarity#scorePayload(String, byte[],int,int)}
 * which returns 1 by default.
 * <p>
 * Payload scores are aggregated using a pluggable {@link PayloadFunction}.
 **/
public class customPayloadTermQuery extends PayloadTermQuery {  

  protected HashMap<Float,Float> payloadWs;
  protected boolean includeSpanScore;
  protected PayloadFunction function;
	
  public customPayloadTermQuery(Term term, PayloadFunction function) {
    super(term, function, true);
    this.includeSpanScore = true;
    this.function = function;
  }

  public customPayloadTermQuery(Term term, PayloadFunction function,
      boolean includeSpanScore) {
	  super(term,function,includeSpanScore);
	  this.includeSpanScore = includeSpanScore;
	  this.function = function;
  }
  
  public customPayloadTermQuery(Term term, PayloadFunction function,
	      boolean includeSpanScore, HashMap<Float,Float> payloadWs) {
		  super(term,function,includeSpanScore);
		  this.payloadWs = payloadWs;
		  this.includeSpanScore = includeSpanScore;
		  this.function = function;
  }

  public Weight createWeight(Searcher searcher) throws IOException {
	  if(this.payloadWs == null){
		  return new PayloadTermWeight(this, searcher);
	  }else{
		  return new CustomPayloadTermWeight(this, searcher, this.payloadWs);
	  }
  }

  protected class CustomPayloadTermWeight extends SpanWeight {
	  
	protected HashMap<Float,Float> cusString;
    public CustomPayloadTermWeight(PayloadTermQuery query, Searcher searcher, HashMap<Float,Float> customString)
        throws IOException {
      super(query, searcher);
      this.cusString = customString;
    }

    public Scorer scorer(IndexReader reader, boolean scoreDocsInOrder,
        boolean topScorer) throws IOException {    	
      return new CustomPayloadTermSpanScorer((TermSpans) query.getSpans(reader),
          this, new customSimilarity(), reader.norms(query.getField()), this.cusString);
    }

    protected class CustomPayloadTermSpanScorer extends SpanScorer {
      // TODO: is this the best way to allocate this?
      protected byte[] payload = new byte[256];
      protected TermPositions positions;
      protected float payloadScore;
      protected int payloadsSeen;
      protected HashMap<Float,Float> payloadTypeWeights;
      
      public CustomPayloadTermSpanScorer(TermSpans spans, Weight weight,
    		  customSimilarity similarity, byte[] norms, HashMap<Float,Float> payloadTypeWeights) throws IOException {
        super(spans, weight, similarity, norms);
        positions = spans.getPositions();
        this.payloadTypeWeights = payloadTypeWeights;
      }

      protected boolean setFreqCurrentDoc() throws IOException {
        if (!more) {
          return false;
        }
        doc = spans.doc();
        freq = 0.0f;
        payloadScore = 0;
        payloadsSeen = 0;
        customSimilarity similarity1 = (customSimilarity)getSimilarity();
        while (more && doc == spans.doc()) {
          int matchLength = spans.end() - spans.start();

          freq += similarity1.sloppyFreq(matchLength);
          processPayload(similarity1);

          more = spans.next();// this moves positions to the next match in this
                              // document
        }
        return more || (freq != 0);
      }

      protected void processPayload(customSimilarity similarity) throws IOException {
        if (positions.isPayloadAvailable()) {
          payload = positions.getPayload(payload, 0);
          payloadScore = function.currentScore(doc, term.field(),
              spans.start(), spans.end(), payloadsSeen, payloadScore,
              similarity.scorePayload(doc, term.field(), spans.start(), spans
                  .end(), payload, 0, positions.getPayloadLength(), this.payloadTypeWeights));
          payloadsSeen++;

        } else {
          // zero out the payload?
        }
      }

      /**
       * 
       * @return {@link #getSpanScore()} * {@link #getPayloadScore()}
       * @throws IOException
       */
      public float score() throws IOException {

        return includeSpanScore ? getSpanScore() * getPayloadScore()
            : getPayloadScore();
      }

      /**
       * Returns the SpanScorer score only.
       * <p/>
       * Should not be overridden without good cause!
       * 
       * @return the score for just the Span part w/o the payload
       * @throws IOException
       * 
       * @see #score()
       */
      protected float getSpanScore() throws IOException {
        return super.score();
      }

      /**
       * The score for the payload
       * 
       * @return The score, as calculated by
       *         {@link PayloadFunction#docScore(int, String, int, float)}
       */
      protected float getPayloadScore() {
        return function.docScore(doc, term.field(), payloadsSeen, payloadScore);
      }

      public Explanation explain(final int doc) throws IOException {
        ComplexExplanation result = new ComplexExplanation();
        Explanation nonPayloadExpl = super.explain(doc);
        result.addDetail(nonPayloadExpl);
        // QUESTION: Is there a way to avoid this skipTo call? We need to know
        // whether to load the payload or not
        Explanation payloadBoost = new Explanation();
        result.addDetail(payloadBoost);

        float payloadScore = getPayloadScore();
        payloadBoost.setValue(payloadScore);
        // GSI: I suppose we could toString the payload, but I don't think that
        // would be a good idea
        payloadBoost.setDescription("scorePayload(...)");
        result.setValue(nonPayloadExpl.getValue() * payloadScore);
        result.setDescription("btq, product of:");
        result.setMatch(nonPayloadExpl.getValue() == 0 ? Boolean.FALSE
            : Boolean.TRUE); // LUCENE-1303
        return result;
      }

    }
  }

  public int hashCode() {
    final int prime = 31;
    int result = super.hashCode();
    result = prime * result + ((function == null) ? 0 : function.hashCode());
    result = prime * result + (includeSpanScore ? 1231 : 1237);
    return result;
  }

  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (!super.equals(obj))
      return false;
    if (getClass() != obj.getClass())
      return false;
    customPayloadTermQuery other = (customPayloadTermQuery) obj;    
    if (function == null) {
      if (other.function != null)
        return false;
    } else if (!function.equals(other.function))
      return false;
    if (includeSpanScore != other.includeSpanScore)
      return false;
    return true;
  }

}
