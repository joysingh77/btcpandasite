package com.halos.reportengine.dao;

import java.util.List;

import com.halos.reportengine.entity.ReportingUrlCreation;

public interface IReportingUrlCreationDAO {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	public Long persist(ReportingUrlCreation transientInstance);

	public void update(ReportingUrlCreation transientInstance);

	public void delete(ReportingUrlCreation transientInstance);

	public ReportingUrlCreation findById(long reportingUrlCreationId);

	public int getReportingUrlCreationInfoCount(Object obj);

	public List<?> getReportingUrlCreationInfo(int startIndex, int endIndex, Object obj) ;

}
