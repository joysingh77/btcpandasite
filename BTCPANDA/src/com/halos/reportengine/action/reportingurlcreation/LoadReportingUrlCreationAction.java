package com.halos.reportengine.action.reportingurlcreation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.reportengine.api.IReportingUrlCreationAPI;
import com.halos.reportengineutil.HalosBaseAction;

public class LoadReportingUrlCreationAction extends HalosBaseAction {
	/**
	 * @author AJIMON C developed on Wed Apr 17 11:58:35 IST 2013 using AutoCodings
	 */

	public static final long serialVersionUID = 1L;

	private String initialRequest;
	private List<?> datasource;
	private int startIndex;
	private int results;
	private int totalRecords;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated using AutoCodings

		try {
			Map<?, ?> map = new HashMap();
			// NOTE : INSERT YOUR SEARCH KEY TO THIS MAP -> Delete this line

			IReportingUrlCreationAPI reportingUrlCreationAPI = (IReportingUrlCreationAPI) HalfBeanFactory.getBean("ReportingUrlCreationAPI");

			if ("true".equals(getInitialRequest())) {
				setTotalRecords((int) reportingUrlCreationAPI.getReportingUrlCreationInfoCount(map));
			}

			int endIndex = startIndex + results;

			datasource = reportingUrlCreationAPI.getReportingUrlCreationInfo(startIndex, endIndex, map);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public String getInitialRequest() {
		return initialRequest;
	}

	public void setInitialRequest(String initialRequest) {
		this.initialRequest = initialRequest;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getResults() {
		return results;
	}

	public void setResults(int results) {
		this.results = results;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public long getSerialversionuid() {
		return serialVersionUID;
	}

	public List<?> getDatasource() {
		return datasource;
	}

	public void setDatasource(List<?> datasource) {
		this.datasource = datasource;
	}

}
