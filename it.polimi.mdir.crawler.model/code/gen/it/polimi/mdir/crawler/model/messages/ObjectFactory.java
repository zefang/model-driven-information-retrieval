
// CHECKSTYLE:OFF

package it.polimi.mdir.crawler.model.messages;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the it.polimi.mdir.crawler.model.messages package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: it.polimi.mdir.crawler.model.messages
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Process }
     * 
     */
    public Process createProcess() {
        return new Process();
    }

    /**
     * Create an instance of {@link Process.Filter }
     * 
     */
    public Process.Filter createProcessFilter() {
        return new Process.Filter();
    }

    /**
     * Create an instance of {@link Attribute }
     * 
     */
    public Attribute createAttribute() {
        return new Attribute();
    }

    /**
     * Create an instance of {@link OriginalAttribute }
     * 
     */
    public OriginalAttribute createOriginalAttribute() {
        return new OriginalAttribute();
    }

    /**
     * Create an instance of {@link OriginalProcess }
     * 
     */
    public OriginalProcess createOriginalProcess() {
        return new OriginalProcess();
    }

    /**
     * Create an instance of {@link Process.Filter.Include }
     * 
     */
    public Process.Filter.Include createProcessFilterInclude() {
        return new Process.Filter.Include();
    }

    /**
     * Create an instance of {@link Process.Filter.Exclude }
     * 
     */
    public Process.Filter.Exclude createProcessFilterExclude() {
        return new Process.Filter.Exclude();
    }

}

// CHECKSTYLE:ON
