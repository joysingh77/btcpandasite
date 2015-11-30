package com.halos.reportengine.action.reportingurlcreation;

import java.util.HashMap;
import java.util.Map;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.half3.dto.HalfHiddenFieldDTO;
import com.halos.half3.dto.HalfTextFieldDTO;
import com.halos.half3.util.HalfUIConstants;
import com.halos.reportengine.api.IReportingUrlCreationAPI;
import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengineutil.HalosBaseAction;

public class EditReportingUrlCreationAction extends HalosBaseAction {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	public static final long serialVersionUID = 1L;

	private Map<String, Object> validationsMap;
	private HalfHiddenFieldDTO reportingUrlCreationId;
	private HalfTextFieldDTO name;
	String url;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated using AutoCodings
		try {
			validationsMap = new HashMap<String, Object>();
			validationsMap.put(HalfUIConstants.STATUS, HalfUIConstants.STATUS_SUCCESS);

			IReportingUrlCreationAPI reportingUrlCreationAPI = (IReportingUrlCreationAPI) HalfBeanFactory.getBean("ReportingUrlCreationAPI");
			if (validationsMap.get(HalfUIConstants.STATUS).equals(
					HalfUIConstants.STATUS_SUCCESS)) {
				if (getServletRequest().getParameter("editReportingUrlCreationId") != null	
						&& !getServletRequest().getParameter("editReportingUrlCreationId").equals("") 
						&& !getServletRequest().getParameter("editReportingUrlCreationId").equals("null")) {

					ReportingUrlCreation reportingUrlCreationDTO = new ReportingUrlCreation();
					reportingUrlCreationDTO = reportingUrlCreationAPI.findById(Long.parseLong(getServletRequest().getParameter("editReportingUrlCreationId")));
					if(reportingUrlCreationDTO != null){
						reportingUrlCreationId = new HalfHiddenFieldDTO();
						reportingUrlCreationId.setValue(reportingUrlCreationDTO.getReportingUrlCreationId() + "");
						name = new HalfTextFieldDTO();
						name.setValue(reportingUrlCreationDTO.getName());
						 url = reportingUrlCreationDTO.getReportingUrlName();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public HalfHiddenFieldDTO getReportingUrlCreationId() {
		return reportingUrlCreationId;
	}

	public void setReportingUrlCreationId(HalfHiddenFieldDTO reportingUrlCreationId) {
		this.reportingUrlCreationId = reportingUrlCreationId;
	}

	public long getSerialversionuid() {
		return serialVersionUID;
	}

	public Map<String, Object> getValidationsMap() {
		return validationsMap;
	}

	public void setValidationsMap(Map<String, Object> validationsMap) {
		this.validationsMap = validationsMap;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public HalfTextFieldDTO getName() {
		return name;
	}

	public void setName(HalfTextFieldDTO name) {
		this.name = name;
	}


}
