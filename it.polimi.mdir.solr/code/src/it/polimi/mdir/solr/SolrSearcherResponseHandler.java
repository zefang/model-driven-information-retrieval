package it.polimi.mdir.solr;

import java.net.URLDecoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.eclipse.smila.blackboard.Blackboard;
import org.eclipse.smila.blackboard.BlackboardAccessException;
import org.eclipse.smila.datamodel.Any;
import org.eclipse.smila.datamodel.AnyMap;
import org.eclipse.smila.datamodel.AnySeq;
import org.eclipse.smila.datamodel.Record;
import org.eclipse.smila.datamodel.Value;
import org.eclipse.smila.search.api.SearchResultConstants;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class SolrSearcherResponseHandler extends DefaultHandler {

  private static final String TEXT = "text";

  private static final String HIGHLIGHT = "highlight";

  private static final String HIGHLIGHTING = "highlighting";

  private static final String LST = "lst";

  private static final String MAX_SCORE = "maxScore";

  private static final String NUM_FOUND = "numFound";

  private static final String RESULT = "result";

  private static final String ARR = "arr";

  private static final String STR = "str";

  private static final String BOOL = "bool";

  private static final String INT = "int";

  private static final String FLOAT = "float";

  private static final String DATE = "date";

  private static final String SCORE = "score";

  private Blackboard _b = null;

  private List<String> _ids = null;

  private String _id = null;

  private String _tagName = null;

  private String _attrName = null;

  private boolean _mvAttr = false;

  private boolean _highlight = false;

  private String _hl = "";

  private double _maxScore = 1.0;

  public int noOfHits = 0;

  public static final String SOLR = "solr";

  public static final String DATE_FORMAT_PATTERN = "yyyy-MM-dd'T'HH:mm:ss'Z'";

  public static final String DOC = "doc";

  public static final String NAME = "name";

  public static final String ID = "id";

  public SolrSearcherResponseHandler(final Blackboard blackboard, final List<String> rrIds) {
    _b = blackboard;
    _ids = rrIds;
  }

  @Override
  public void startElement(final String uri, final String localName, final String qName, final Attributes attributes)
    throws SAXException {
    _tagName = qName;
    try {
      if (_tagName.equals(DOC)) {
        _id = SOLR + ":" + Double.toString(System.nanoTime());
        _b.create(_id);
      } else if (_tagName.equals(STR)) {
        if (!_mvAttr) {
          _attrName = attributes.getValue(NAME);
        }
      } else if (_tagName.equals(BOOL)) {
        _attrName = attributes.getValue(NAME);
      } else if (_tagName.equals(DATE)) {
        _attrName = attributes.getValue(NAME);
      } else if (_tagName.equals(INT)) {
        _attrName = attributes.getValue(NAME);
      } else if (_tagName.equals(FLOAT)) {
        _attrName = attributes.getValue(NAME);
      } else if (_tagName.equals(ARR)) {
        _attrName = attributes.getValue(NAME);
        _mvAttr = true;
      } else if (_tagName.equals(RESULT)) {
        final String numFound = attributes.getValue(NUM_FOUND);
        noOfHits = Integer.parseInt(numFound);
        final String maxScoreStr = attributes.getValue(MAX_SCORE);
        _maxScore = Double.parseDouble(maxScoreStr);
      } else if (_tagName.equals(LST)) {
        final String name = attributes.getValue(NAME);
        if (name.equals(HIGHLIGHTING)) {
          _highlight = true;
        } else if (_highlight) {
          final String idDecoded = URLDecoder.decode(name, SolrIndexerPipelet.UTF8);
          _id = idDecoded;
        }
      }
    } catch (final Exception e) {
      System.out.println("Error while extracting attributes for tag'" + _tagName + "'. " + e.toString());
    }
  }

  @Override
  public void characters(final char[] ch, final int start, final int length) throws SAXException {
    final String value = new String(ch, start, length);
    try {
      if (_id != null && _tagName != null && !_highlight) {
        if (_tagName.equals(STR)) {
          if (!_mvAttr) {
            if (_attrName.equals("projectId")) { //TODO original: ID
              final String idDecoded = URLDecoder.decode(value, SolrIndexerPipelet.UTF8);
              _id = idDecoded;
              final Record r = _b.getRecord(_id);
              r.setId(_id);
              _ids.add(_id);
            } else {
              addLiteral(_attrName, _b.getDataFactory().createStringValue(value));
            }
          } else {
            addLiteral(_attrName, _b.getDataFactory().createStringValue(value));
          }
        } else if (_tagName.equals(BOOL)) {
          addLiteral(_attrName, _b.getDataFactory().createBooleanValue(Boolean.valueOf(value)));
        } else if (_tagName.equals(DATE)) {
          final DateFormat df = new SimpleDateFormat(DATE_FORMAT_PATTERN);
          final Date attrValue = df.parse(value);
          addLiteral(_attrName, _b.getDataFactory().createDateTimeValue(attrValue));
        } else if (_tagName.equals(INT)) {
          final Long attrValue = Long.parseLong(value);
          addLiteral(_attrName, _b.getDataFactory().createLongValue(attrValue));
        } else if (_tagName.equals(FLOAT)) {
          final Float attrValue = Float.parseFloat(value); //original: Double.parseDouble
          if (_attrName.equals(SCORE)) { //TODO: cambiato
            //final Double normalizedScore = attrValue / _maxScore;
        	  System.out.println("Class: " + attrValue.getClass() + " :Value -> " + attrValue);
            addLiteral(SearchResultConstants.WEIGHT, _b.getDataFactory().createDoubleValue(attrValue)); //original: normalizedScore
          } else {
            addLiteral(_attrName, _b.getDataFactory().createDoubleValue(attrValue));
          }
        }
      } else if (_id != null && _tagName != null && _highlight) {
        if (_tagName.equals(STR)) {
          if (_mvAttr) {
            _hl += value;
          }
        }
      }
    } catch (final Exception e) {
    	System.out.println("Error while extracting characters '" + value + "' for tag'" + _tagName + "'. " + e.toString());
    }
  }

  @Override
  public void endElement(final String uri, final String localName, final String qName) throws SAXException {
    try {
      if (qName.equals(ARR)) {
        _mvAttr = false;
        if (_highlight) {
          AnyMap highlights = _b.getMetadata(_id).getMap(SearchResultConstants.HIGHLIGHT);
          if (highlights == null) {
            highlights = _b.getDataFactory().createAnyMap();
            _b.getMetadata(_id).put(SearchResultConstants.HIGHLIGHT, highlights);
          }
          final AnyMap highlight = _b.getDataFactory().createAnyMap();
          highlights.put(_attrName, highlight);
          highlight.put(SearchResultConstants.HIGHLIGHT_TEXT, _hl);
        }
        _hl = "";
      }
      if (qName.equals(DOC)) {
        _id = null;
      }
      _tagName = null;
    } catch (final Exception e) {
    	System.out.println("Error while closeing a tag'" + _tagName + "'. " + e.toString());
    }
  }

  private void addLiteral(final String attributeName, final Value value) throws BlackboardAccessException {
    final AnyMap record = _b.getMetadata(_id);
    if (!record.containsKey(attributeName)) {
      record.put(attributeName, value);
    } else {
      final Any currentValue = record.get(attributeName);
      if (currentValue.isSeq()) {
        ((AnySeq) currentValue).add(value);
      } else {
        final AnySeq seq = _b.getDataFactory().createAnySeq();
        seq.add(currentValue);
        seq.add(value);
        record.put(attributeName, value);
      }
    }

  }
}
