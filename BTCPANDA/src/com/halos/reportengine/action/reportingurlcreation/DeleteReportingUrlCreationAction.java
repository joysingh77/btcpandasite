package com.halos.reportengine.action.reportingurlcreation;

import java.util.HashMap;
import java.util.Map;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.half3.dto.HalfMessageDTO;
import com.halos.half3.util.HalfUIConstants;
import com.halos.reportengine.api.IReportingUrlCreationAPI;
import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.IHalosReportEngineConstants;

public class DeleteReportingUrlCreationAction extends HalosBaseAction {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */
	public static final long serialVersionUID = 1L;
	private Map<String, Object> validationsMap;
	private HalfMessageDTO statusReportingUrlCreationMsg;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated using AutoCodings
		try {
			validationsMap = new HashMap<String, Object>();
			validationsMap.put(HalfUIConstants.STATUS, HalfUIConstants.STATUS_SUCCESS);

			if (validationsMap.get(HalfUIConstants.STATUS).equals(
					HalfUIConstants.STATUS_SUCCESS)) {
				IReportingUrlCreationAPI reportingUrlCreationAPI = (IReportingUrlCreationAPI) HalfBeanFactory.getBean("ReportingUrlCreationAPI");
				statusReportingUrlCreationMsg = new HalfMessageDTO();
				if (getServletRequest().getParameter("reportingUrlCreationId") != null	
						&& !getServletRequest().getParameter("reportingUrlCreationId").equals("") 
						&& !getServletRequest().getParameter("reportingUrlCreationId").equals("null")) {

					ReportingUrlCreation reportingUrlCreationDTO = new ReportingUrlCreation();
					reportingUrlCreationDTO = reportingUrlCreationAPI.findById(Long.parseLong(getServletRequest().getParameter("reportingUrlCreationId")));
					reportingUrlCreationDTO.setStatus(IHalosReportEngineConstants.DEACTIVE);
					reportingUrlCreationAPI.update(reportingUrlCreationDTO);
					statusReportingUrlCreationMsg.setMessageType(IHalosReportEngineConstants.MESSAGETYPE_ACTIONMESSAGE);
					statusReportingUrlCreationMsg.getHalfMessage().add("Reporting Url Creation was deleted successfully");
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

	public HalfMessageDTO getStatusReportingUrlCreationMsg() {
		return statusReportingUrlCreationMsg;
	}

	public void setStatusReportingUrlCreationMsg(HalfMessageDTO statusReportingUrlCreationMsg) {
		this.statusReportingUrlCreationMsg = statusReportingUrlCreationMsg;
	}

}
