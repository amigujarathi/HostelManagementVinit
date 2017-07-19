
package com.checkuser;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Sys" type="{http://CMS_Selfie_Check}SysResponseType"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "sys"
})
@XmlRootElement(name = "checkCustResponse")
public class CheckCustResponse {

    @XmlElement(name = "Sys", required = true, nillable = true)
    protected SysResponseType sys;

    /**
     * Gets the value of the sys property.
     * 
     * @return
     *     possible object is
     *     {@link SysResponseType }
     *     
     */
    public SysResponseType getSys() {
        return sys;
    }

    /**
     * Sets the value of the sys property.
     * 
     * @param value
     *     allowed object is
     *     {@link SysResponseType }
     *     
     */
    public void setSys(SysResponseType value) {
        this.sys = value;
    }

}
