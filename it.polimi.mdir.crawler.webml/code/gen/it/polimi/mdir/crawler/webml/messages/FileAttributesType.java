
// CHECKSTYLE:OFF

package it.polimi.mdir.crawler.webml.messages;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for FileAttributesType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="FileAttributesType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="FileName"/>
 *     &lt;enumeration value="Path"/>
 *     &lt;enumeration value="projectId"/>
 *     &lt;enumeration value="xmiContent"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "FileAttributesType")
@XmlEnum
public enum FileAttributesType {

    @XmlEnumValue("FileName")
    FILE_NAME("FileName"),
    @XmlEnumValue("Path")
    PATH("Path"),
    @XmlEnumValue("projectId")
    PROJECT_ID("projectId"),
    @XmlEnumValue("xmiContent")
    XMI_CONTENT("xmiContent");
    private final String value;

    FileAttributesType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static FileAttributesType fromValue(String v) {
        for (FileAttributesType c: FileAttributesType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}

// CHECKSTYLE:ON
