package com.halos.reportengine.api.impl;

import java.util.List;

import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengine.entity.TemplateMapping;
import com.halos.reportengine.api.ITemplateMappingAPI;
import com.halos.reportengine.dao.ITemplateMappingDAO;


public class TemplateMappingAPI implements ITemplateMappingAPI {
	/**
	 * @author AJIN C developed on Tue Aug 06 05:23:26 IST 2013 using AutoCodings
	 */

	private ITemplateMappingDAO templateMappingDAO;

	public void setTemplateMappingDAO(ITemplateMappingDAO templateMappingDAO) {
		this.templateMappingDAO = templateMappingDAO;
	}

	public ITemplateMappingDAO getTemplateMappingDAO() {
		return templateMappingDAO;
	}

	@Override
	public Long persist(TemplateMapping transientInstance){
		try {
			return templateMappingDAO.persist(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void update(TemplateMapping transientInstance){
		try {
			templateMappingDAO.update(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void delete(TemplateMapping transientInstance){
		try {
			templateMappingDAO.delete(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public TemplateMapping findById(long templateMappingId){
		try {
			TemplateMapping instance = templateMappingDAO.findById(templateMappingId);
			return instance;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public int getTemplateMappingInfoCount(Object obj){
		try {
			return templateMappingDAO.getTemplateMappingInfoCount(obj);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public List<?> getTemplateMappingInfo(int startIndex, int endIndex, Object obj) {
		try {
			return templateMappingDAO.getTemplateMappingInfo(startIndex, endIndex, obj);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public TemplateMapping getMappingDetails(String loadingUrl) {
		try {
			return templateMappingDAO.getMappingDetails(loadingUrl);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public List<ReportingUrlCreation> getAllreports() {
		try {
			return templateMappingDAO.getAllreports();
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public TemplateMapping getMappingDetailsByurlId(long urlId) {
		try {
			return templateMappingDAO.getMappingDetailsByurlId(urlId);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

}
