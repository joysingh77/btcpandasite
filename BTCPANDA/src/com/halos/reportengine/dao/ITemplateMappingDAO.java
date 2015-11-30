package com.halos.reportengine.dao;

import java.util.List;

import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengine.entity.TemplateMapping;

public interface ITemplateMappingDAO {
	/**
	 * @author AJIN C developed on Tue Aug 06 05:23:26 IST 2013 using AutoCodings
	 */

	public Long persist(TemplateMapping transientInstance);

	public void update(TemplateMapping transientInstance);

	public void delete(TemplateMapping transientInstance);

	public TemplateMapping findById(long templateMappingId);

	public int getTemplateMappingInfoCount(Object obj);

	public List<?> getTemplateMappingInfo(int startIndex, int endIndex, Object obj) ;

	public TemplateMapping getMappingDetails(String loadingUrl);

	public List<ReportingUrlCreation> getAllreports();

	public TemplateMapping getMappingDetailsByurlId(long urlId);

}
