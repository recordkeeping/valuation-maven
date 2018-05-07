package com.valuation.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity(name = "newEntry")
@Table(name = "newEntry")
public class NewEntry implements Serializable {

	private static final long serialVersionUID = 1L;

	private Date dateOfInspection;
	private Integer fileNo;
	private String bank;
	private String branch;
	private String clientName;
	private String clientContact;
	private String propertyAt;
	private String typeOfProperty;
	private String reportPreparedBy;

	public NewEntry(Date dateOfInspection, Integer fileNo, String bank, String branch, String clientName,
			String clientContact, String propertyAt, String typeOfProperty, String reportPreparedBy) {
		
		this.dateOfInspection = dateOfInspection;
		this.fileNo = fileNo;
		this.bank = bank;
		this.branch = branch;
		this.clientName = clientName;
		this.clientContact = clientContact;
		this.propertyAt = propertyAt;
		this.typeOfProperty = typeOfProperty;
		this.reportPreparedBy = reportPreparedBy;
	}

	public Date getDateOfInspection() {
		return dateOfInspection;
	}

	public void setDateOfInspection(Date dateOfInspection) {
		this.dateOfInspection = dateOfInspection;
	}

	public Integer getFileNo() {
		return fileNo;
	}

	public void setFileNo(Integer fileNo) {
		this.fileNo = fileNo;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getClientContact() {
		return clientContact;
	}

	public void setClientContact(String clientContact) {
		this.clientContact = clientContact;
	}

	public String getPropertyAt() {
		return propertyAt;
	}

	public void setPropertyAt(String propertyAt) {
		this.propertyAt = propertyAt;
	}

	public String getTypeOfProperty() {
		return typeOfProperty;
	}

	public void setTypeOfProperty(String typeOfProperty) {
		this.typeOfProperty = typeOfProperty;
	}

	public String getReportPreparedBy() {
		return reportPreparedBy;
	}

	public void setReportPreparedBy(String reportPreparedBy) {
		this.reportPreparedBy = reportPreparedBy;
	}

}
