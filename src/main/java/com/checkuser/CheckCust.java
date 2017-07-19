
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
 *         &lt;element name="Sys" type="{http://CMS_Selfie_Check}SysRequestType"/>
 *         &lt;element name="CustInfo" type="{http://CMS_Selfie_Check}CustInfoType"/>
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
    "sys",
    "custInfo"
})
@XmlRootElement(name = "checkCust")
public class CheckCust {

    @XmlElement(name = "Sys", required = true, nillable = true)
    protected SysRequestType sys;
    @XmlElement(name = "CustInfo", required = true, nillable = true)
    protected CustInfoType custInfo;

    /**
     * Gets the value of the sys property.
     * 
     * @return
     *     possible object is
     *     {@link SysRequestType }
     *     
     */
    public SysRequestType getSys() {
        return sys;
    }

    /**
     * Sets the value of the sys property.
     * 
     * @param value
     *     allowed object is
     *     {@link SysRequestType }
     *     
     */
    public void setSys(SysRequestType value) {
        this.sys = value;
    }

    /**
     * Gets the value of the custInfo property.
     * 
     * @return
     *     possible object is
     *     {@link CustInfoType }
     *     
     */
    public CustInfoType getCustInfo() {
        return custInfo;
    }

    /**
     * Sets the value of the custInfo property.
     * 
     * @param value
     *     allowed object is
     *     {@link CustInfoType }
     *     
     */
    public void setCustInfo(CustInfoType value) {
        this.custInfo = value;
    }

}
