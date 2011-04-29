/***********************************************************************************************************************
 * Copyright (c) 2008 empolis GmbH and brox IT Solutions GmbH. All rights reserved. This program and the accompanying
 * materials are made available under the terms of the Eclipse Public License v1.0 which accompanies this distribution,
 * and is available at http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors: Contributors: Andrey Basalaev (brox IT Solutions GmbH) - initial creator, Ivan Churkin (brox IT Solutions GmbH)
 **********************************************************************************************************************/
// CHECKSTYLE:OFF

package org.eclipse.smila.connectivity.framework.crawler.web.messages;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for MetaType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="MetaType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="MetaData"/>
 *     &lt;enumeration value="ResponseHeader"/>
 *     &lt;enumeration value="MetaDataWithResponseHeaderFallBack"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "MetaType")
@XmlEnum
public enum MetaType {

    @XmlEnumValue("MetaData")
    META_DATA("MetaData"),
    @XmlEnumValue("ResponseHeader")
    RESPONSE_HEADER("ResponseHeader"),
    @XmlEnumValue("MetaDataWithResponseHeaderFallBack")
    META_DATA_WITH_RESPONSE_HEADER_FALL_BACK("MetaDataWithResponseHeaderFallBack");
    private final String value;

    MetaType(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static MetaType fromValue(String v) {
        for (MetaType c: MetaType.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}

// CHECKSTYLE:ON
