package com.halos.reportengine.entity;

import java.io.Serializable;
import java.util.Date;

public class ReportingUrlCreation implements Serializable {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	public static final long serialVersionUID = 1L;
	private Long reportingUrlCreationId;
	private String reportingUrlName;
	private String name;
	private String status;
	private Date createdOn;
	private Long createdBy;
	private Date modifiedOn;
	private Long modifiedBy;

	public ReportingUrlCreation(){
	}

	public ReportingUrlCreation(Long reportingUrlCreationId){
		this.reportingUrlCreationId = reportingUrlCreationId;
	}

	public ReportingUrlCreation(Long reportingUrlCreationId, 
		String reportingUrlName, String name,
		String status, Date createdOn, Long createdBy, Date modifiedOn, Long modifiedBy){
		this.reportingUrlCreationId = reportingUrlCreationId;
		this.reportingUrlName = reportingUrlName;
		this.name = name;
		this.status = status;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.modifiedOn = modifiedOn;
		this.modifiedBy = modifiedBy;
	}

	public Long getReportingUrlCreationId() {
		return reportingUrlCreationId;
	}

	public void setReportingUrlCreationId(Long reportingUrlCreationId) {
		this.reportingUrlCreationId = reportingUrlCreationId;
	}

	public String getReportingUrlName() {
		return reportingUrlName;
	}

	public void setReportingUrlName(String reportingUrlName) {
		this.reportingUrlName = reportingUrlName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public Long getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}

	public Date getModifiedOn() {
		return modifiedOn;
	}

	public void setModifiedOn(Date modifiedOn) {
		this.modifiedOn = modifiedOn;
	}

	public Long getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(Long modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
