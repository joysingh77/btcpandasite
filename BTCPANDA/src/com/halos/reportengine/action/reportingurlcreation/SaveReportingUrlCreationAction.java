package com.halos.reportengine.action.reportingurlcreation;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.half3.dto.HalfMessageDTO;
import com.halos.half3.util.HalfUIConstants;
import com.halos.reportengine.api.IReportingUrlCreationAPI;
import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.IHalosReportEngineConstants;

public class SaveReportingUrlCreationAction extends HalosBaseAction {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */
	public static final long serialVersionUID = 1L;

	private Map<String, Object> validationsMap;
	private ReportingUrlCreation reportingUrlCreationDTO;
	Long urlId;
	String urlName;
	String reportName;
	public void setReportingUrlCreationDTO() {
		if (this.reportingUrlCreationDTO != null) {
			reportingUrlCreationDTO.setReportingUrlName(getFieldValue("hdnReportingUrl"));
			reportingUrlCreationDTO.setName(getFieldValue("name"));
			reportingUrlCreationDTO.setStatus(IHalosReportEngineConstants.ACTIVE);
			reportingUrlCreationDTO.setCreatedOn(new Date());
			//reportingUrlCreationDTO.setCreatedBy(getLoginUserId());
		}
	}

	public void updateReportingUrlCreation(ReportingUrlCreation reportingUrlCreationDTO) {
		if (reportingUrlCreationDTO != null) {
			reportingUrlCreationDTO.setReportingUrlName(getFieldValue("hdnReportingUrl"));
			reportingUrlCreationDTO.setName(getFieldValue("name"));
			reportingUrlCreationDTO.setModifiedOn(new Date());
			//reportingUrlCreationDTO.setModifiedBy(getLoginUserId());
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated using AutoCodings
		try {
			validationsMap = new HashMap<String, Object>();
			validationsMap.put(HalfUIConstants.STATUS, HalfUIConstants.STATUS_SUCCESS);

			IReportingUrlCreationAPI reportingUrlCreationAPI = (IReportingUrlCreationAPI) HalfBeanFactory.getBean("ReportingUrlCreationAPI");
			if (validationsMap.get(HalfUIConstants.STATUS).equals(
					HalfUIConstants.STATUS_SUCCESS)) {
				this.reportingUrlCreationDTO = new ReportingUrlCreation();
				if (getFieldValue("reportingUrlCreationId") != null	
						&& !getFieldValue("reportingUrlCreationId").equals("") 
						&& !getFieldValue("reportingUrlCreationId").equals("null")) {
					urlId = Long.parseLong(getFieldValue("reportingUrlCreationId"));
					reportingUrlCreationDTO = reportingUrlCreationAPI.findById(urlId);
					updateReportingUrlCreation(reportingUrlCreationDTO);
					reportingUrlCreationAPI.update(reportingUrlCreationDTO);
				}
			 	else {
					setReportingUrlCreationDTO();
					urlName = reportingUrlCreationDTO.getReportingUrlName();
					reportName = reportingUrlCreationDTO.getName();
					urlId = reportingUrlCreationAPI.persist(reportingUrlCreationDTO);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public Map<String, Object> getValidationsMap() {
		return validationsMap;
	}

	public void setValidationsMap(Map<String, Object> validationsMap) {
		this.validationsMap = validationsMap;
	}

	public Long getUrlId() {
		return urlId;
	}

	public void setUrlId(Long urlId) {
		this.urlId = urlId;
	}

	public String getUrlName() {
		return urlName;
	}

	public void setUrlName(String urlName) {
		this.urlName = urlName;
	}

	public String getReportName() {
		return reportName;
	}

	public void setReportName(String reportName) {
		this.reportName = reportName;
	}
	
	
	}

