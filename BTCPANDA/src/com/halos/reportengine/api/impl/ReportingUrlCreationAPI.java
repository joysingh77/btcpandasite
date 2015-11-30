package com.halos.reportengine.api.impl;

import java.util.List;

import com.halos.reportengine.api.IReportingUrlCreationAPI;
import com.halos.reportengine.dao.IReportingUrlCreationDAO;
import com.halos.reportengine.entity.ReportingUrlCreation;


public class ReportingUrlCreationAPI implements IReportingUrlCreationAPI {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	private IReportingUrlCreationDAO reportingUrlCreationDAO;

	public void setReportingUrlCreationDAO(IReportingUrlCreationDAO reportingUrlCreationDAO) {
		this.reportingUrlCreationDAO = reportingUrlCreationDAO;
	}

	public IReportingUrlCreationDAO getReportingUrlCreationDAO() {
		return reportingUrlCreationDAO;
	}

	@Override
	public Long persist(ReportingUrlCreation transientInstance){
		try {
			return reportingUrlCreationDAO.persist(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void update(ReportingUrlCreation transientInstance){
		try {
			reportingUrlCreationDAO.update(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void delete(ReportingUrlCreation transientInstance){
		try {
			reportingUrlCreationDAO.delete(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public ReportingUrlCreation findById(long reportingUrlCreationId){
		try {
			ReportingUrlCreation instance = reportingUrlCreationDAO.findById(reportingUrlCreationId);
			return instance;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public int getReportingUrlCreationInfoCount(Object obj){
		try {
			return reportingUrlCreationDAO.getReportingUrlCreationInfoCount(obj);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public List<?> getReportingUrlCreationInfo(int startIndex, int endIndex, Object obj) {
		try {
			return reportingUrlCreationDAO.getReportingUrlCreationInfo(startIndex, endIndex, obj);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

}
