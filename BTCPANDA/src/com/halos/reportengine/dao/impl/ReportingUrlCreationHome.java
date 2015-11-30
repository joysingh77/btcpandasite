package com.halos.reportengine.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.halos.half.core.dao.HalfBaseDAO;
import com.halos.reportengine.dao.IReportingUrlCreationDAO;
import com.halos.reportengine.entity.ReportingUrlCreation;

public class ReportingUrlCreationHome extends HalfBaseDAO implements IReportingUrlCreationDAO {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	@Override
	public Long persist(ReportingUrlCreation transientInstance){
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
	public void update(ReportingUrlCreation transientInstance){
		// Update values into Database
		try {
			getSession().update(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public void delete(ReportingUrlCreation transientInstance){
		// Delete values from Database
		try {
			getSession().delete(transientInstance);
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public ReportingUrlCreation findById(long reportingUrlCreationId){
		// Get the particular record values from Database by using primary key
		try {
			ReportingUrlCreation instance = (ReportingUrlCreation) getSession().get("com.halos.reportengine.entity.ReportingUrlCreation", reportingUrlCreationId);
			return instance;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public int getReportingUrlCreationInfoCount(Object obj){
		// Give the no of records of that Entity according to conditions
		try {
			Map<?, ?> map = (HashMap) obj;
			Long count = null;
			if (map != null && map.get("mapKey") != null){
				// Condition Codes
				count = (Long) getSession().createQuery("select count(*) from ReportingUrlCreation ruc" +
						" where ruc.status = 'A' and ruc.entityKey like :entityKey")
						.setParameter("entityKey", "%" + map.get("mapKey") + "%")
						.uniqueResult();
			} else {
				count = (Long) getSession().createQuery("select count(*) from ReportingUrlCreation ruc" +
						" where ruc.status = 'A' ")
						.uniqueResult();
			}
			return count.intValue();
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

	@Override
	public List<?> getReportingUrlCreationInfo(int startIndex, int endIndex, Object obj) {
		// Give the Records of that Entity according to conditions and as per startIndex and endIndex
		try {
			Map<?, ?> map = (HashMap) obj;
			List<?> valueList = null;
			if (map != null && map.get("mapKey") != null){
				// Condition Codes
				valueList = getSession().createQuery("select ruc from ReportingUrlCreation ruc" +
						" where ruc.status = 'A' and ruc.entityKey like :entityKey")
						.setParameter("entityKey", "%" + map.get("mapKey") + "%")
						.setFirstResult(startIndex).setMaxResults(endIndex - startIndex)
						.list();
			}else{
				valueList = getSession().createQuery("select ruc from ReportingUrlCreation ruc" +
						" where ruc.status = 'A' ")
						.setFirstResult(startIndex).setMaxResults(endIndex - startIndex)
						.list();
			}
			return valueList;
		} catch (RuntimeException re) {
			re.printStackTrace();
			throw re;
		}
	}

}
