package com.halos.reportengine.dao.impl;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengine.entity.TemplateMapping;
import com.halos.reportengine.dao.ITemplateMappingDAO;
import com.halos.util.commonpackages.IHalosConstants;
import com.halos.half.core.dao.HalfBaseDAO;

public class TemplateMappingHome extends HalfBaseDAO implements ITemplateMappingDAO {
	/**
	 * @author AJIN C developed on Tue Aug 06 05:23:26 IST 2013 using AutoCodings
	 */

	@Override
	public Long persist(TemplateMapping transientInstance){
		// Insert values into Database
		try {
			Long insertedId = (Long) super.save(transientInstance);
			return insertedId;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void update(TemplateMapping transientInstance){
		// Update values into Database
		try {
			getSession().update(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void delete(TemplateMapping transientInstance){
		// Delete values from Database
		try {
			getSession().delete(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public TemplateMapping findById(long templateMappingId){
		// Get the particular record values from Database by using primary key
		try {
			TemplateMapping instance = (TemplateMapping) getSession().get("com.halos.reportengine.entity.TemplateMapping", templateMappingId);
			return instance;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public int getTemplateMappingInfoCount(Object obj){
		// Give the no of records of that Entity according to conditions
		try {
			Map map = (HashMap) obj;

			Criteria crit = getSession().createCriteria(TemplateMapping.class);
			Criterion statusCriterion = Restrictions.eq("status", IHalosConstants.ACTIVE);
			crit.add(statusCriterion);
			Criterion orgIdCriterion = Restrictions.eq("organizationId", map.get("organizationId"));
			crit.add(orgIdCriterion);

			return crit.list().size();
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public List<?> getTemplateMappingInfo(int startIndex, int endIndex, Object obj) {
		// Give the Records of that Entity according to conditions and as per startIndex and endIndex
		try {
			Map map = (HashMap) obj;

			List<?> valueList = getSession().createQuery("select tm.templateMappingId, tm.urlId, tm.inputTemplateId, tm.outputTemplateId from TemplateMapping tm" +
						" where tm.status = 'A' and tm.organizationId = :organizationId")
						.setParameter("organizationId", map.get("organizationId"))
						.setFirstResult(startIndex).setMaxResults(endIndex - startIndex)
						.list();
			return valueList;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public TemplateMapping getMappingDetails(String loadingUrl) {
		TemplateMapping mappingDTO = (TemplateMapping) getSession().createQuery("select tm from TemplateMapping tm,ReportingUrlCreation ruc where tm.status='A' and ruc.status='A'" +
				" and ruc.reportingUrlName=:loadingUrl and ruc.reportingUrlCreationId = tm.urlId")
				.setParameter("loadingUrl", loadingUrl)
				.uniqueResult();
		return mappingDTO;
	}

	@Override
	public List<ReportingUrlCreation> getAllreports() {
		return getSession().createQuery("select r from ReportingUrlCreation r where r.status='A'").list();
	}

	@Override
	public TemplateMapping getMappingDetailsByurlId(long urlId) {
		TemplateMapping mappingDTO = (TemplateMapping) getSession().createQuery("select tm from TemplateMapping tm where tm.status='A'" +
		" and  tm.urlId =:urlId")
		.setParameter("urlId", urlId)
		.uniqueResult();
return mappingDTO;
	}

}
