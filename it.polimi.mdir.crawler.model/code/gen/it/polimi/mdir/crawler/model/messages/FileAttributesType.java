
// CHECKSTYLE:OFF

package it.polimi.mdir.crawler.model.messages;

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
 *     &lt;enumeration value="projectName"/>
 *     &lt;enumeration value="classNames"/>
 *     &lt;enumeration value="classIds"/>
 *     &lt;enumeration value="attributeNames"/>
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
    @XmlEnumValue("projectName")
    PROJECT_NAME("projectName"),
    @XmlEnumValue("classNames")
    CLASS_NAMES("classNames"),
    @XmlEnumValue("classIds")
    CLASS_IDS("classIds"),
    @XmlEnumValue("attributeNames")
    ATTRIBUTE_NAMES("attributeNames");
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
