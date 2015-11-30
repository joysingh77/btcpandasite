package com.halos.reportengine.action;

import java.util.List;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.reportengine.api.ITemplateMappingAPI;
import com.halos.reportengine.entity.ReportingUrlCreation;
import com.halos.reportengineutil.HalosBaseAction;

public class LoadAllReportsAction extends HalosBaseAction{
@Override
public String execute() throws Exception {
	ITemplateMappingAPI api = (ITemplateMappingAPI) HalfBeanFactory.getBean("TemplateMappingAPI");
	getServletRequest().setAttribute("allreports", api.getAllreports());
	return super.execute();
}
}
