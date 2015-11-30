package com.halos.reportengine.action;

import java.util.List;
import java.util.Map;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.htechdms.halosdms.Hdms.datamanagement.dmsUserAPI.HalosDms;
import com.halos.htechdms.halosdms.Hdms.datamanagement.dto.UserDocumentDTO;
import com.halos.reportengine.api.ITemplateMappingAPI;
import com.halos.reportengine.entity.TemplateMapping;
import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.ReportEngineUtil;

public class LoadingInputTemplate extends HalosBaseAction{
	String urlid;
	@Override
	public String execute() throws Exception {
		TemplateMapping mappingDTO = null;
		ITemplateMappingAPI api = (ITemplateMappingAPI) HalfBeanFactory.getBean("TemplateMappingAPI");
		if(!((urlid+"").equals("null")) && !((urlid+"").equals(""))){
			mappingDTO = api.getMappingDetailsByurlId(Long.parseLong(urlid)); 
		}else{
			 mappingDTO = api.getMappingDetails(ReportEngineUtil.buildURL(getServletRequest())); 
		}
		
		
		
		List<UserDocumentDTO> templateDTO = HalosDms.getDocumentByDmsDocId(mappingDTO.getInputTemplateId());
		
		Map inputTemplateMap = ReportEngineUtil.readInputTemplate(templateDTO.get(0).getFileLocation());
		templateDTO = HalosDms.getDocumentByDmsDocId(mappingDTO.getOutputTemplateId());
		inputTemplateMap.put("outputfile", templateDTO.get(0).getFileLocation());
		getServletRequest().setAttribute("inputTemplateVal", inputTemplateMap);
		return super.execute();
	}
	public String getUrlid() {
		return urlid;
	}
	public void setUrlid(String urlid) {
		this.urlid = urlid;
	}
	
}
