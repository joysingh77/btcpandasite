package com.halos.reportengine.entity;

import java.io.Serializable;
import java.util.Date;

public class TemplateMapping implements Serializable {
	/**
	 * @author AJIN C developed on Tue Aug 06 05:23:25 IST 2013 using AutoCodings
	 */

	public static final long serialVersionUID = 1L;
	private Long templateMappingId;
	private Long urlId;
	private Long inputTemplateId;
	private Long outputTemplateId;
	private String status;
	private Long organizationId;
	private Date createdOn;
	private Long createdBy;
	private Date modifiedOn;
	private Long modifiedBy;

	public TemplateMapping(){
	}

	public TemplateMapping(Long templateMappingId){
		this.templateMappingId = templateMappingId;
	}

	public TemplateMapping(Long templateMappingId, 
		Long urlId, 
		Long inputTemplateId, 
		Long outputTemplateId, 
		Long organizationId, String status, Date createdOn, Long createdBy, Date modifiedOn, Long modifiedBy){
		this.templateMappingId = templateMappingId;
		this.urlId = urlId;
		this.inputTemplateId = inputTemplateId;
		this.outputTemplateId = outputTemplateId;
		this.organizationId = organizationId;
		this.status = status;
		this.createdOn = createdOn;
		this.createdBy = createdBy;
		this.modifiedOn = modifiedOn;
		this.modifiedBy = modifiedBy;
	}

	public Long getTemplateMappingId() {
		return templateMappingId;
	}

	public void setTemplateMappingId(Long templateMappingId) {
		this.templateMappingId = templateMappingId;
	}

	public Long getUrlId() {
		return urlId;
	}

	public void setUrlId(Long urlId) {
		this.urlId = urlId;
	}

	public Long getInputTemplateId() {
		return inputTemplateId;
	}

	public void setInputTemplateId(Long inputTemplateId) {
		this.inputTemplateId = inputTemplateId;
	}

	public Long getOutputTemplateId() {
		return outputTemplateId;
	}

	public void setOutputTemplateId(Long outputTemplateId) {
		this.outputTemplateId = outputTemplateId;
	}

	public Long getOrganizationId() {
		return organizationId;
	}

	public void setOrganizationId(Long organizationId) {
		this.organizationId = organizationId;
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

}
