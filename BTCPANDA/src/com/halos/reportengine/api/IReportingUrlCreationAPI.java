package com.halos.reportengine.api;

import java.util.List;

import com.halos.reportengine.entity.ReportingUrlCreation;

public interface IReportingUrlCreationAPI {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	public Long persist(ReportingUrlCreation transientInstance);

	public void update(ReportingUrlCreation instance);

	public void delete(ReportingUrlCreation persistentInstance);

	public ReportingUrlCreation findById(long reportingUrlCreationId);

	public int getReportingUrlCreationInfoCount(Object obj);

	public List<?> getReportingUrlCreationInfo(int startIndex, int endIndex, Object obj) ;

}
