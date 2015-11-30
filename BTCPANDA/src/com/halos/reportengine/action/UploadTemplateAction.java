package com.halos.reportengine.action;

import java.util.Date;

import com.halos.half.core.spring.HalfBeanFactory;
import com.halos.reportengine.api.ITemplateMappingAPI;
import com.halos.reportengine.entity.TemplateMapping;
import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.ReportEngineUtil;
import com.halos.util.commonpackages.IHalosConstants;

public class UploadTemplateAction extends HalosBaseAction{
	Long templateMappingId;
	String templateType;
@Override
public String execute() throws Exception {
	
	if(templateType.equals("input")){
	Long docId = ReportEngineUtil.uploadDocument("D:\\input_template.xml","input_template.xml");
	
	TemplateMapping mappingDTO = new TemplateMapping();
	mappingDTO.setInputTemplateId(docId);
	mappingDTO.setUrlId(Long.parseLong(getFieldValue("hdnUrlId")));
	mappingDTO.setStatus(IHalosConstants.ACTIVE);
	mappingDTO.setCreatedBy(getLoginUserId());
	mappingDTO.setCreatedOn(new Date());
	ITemplateMappingAPI mappingAPI = (ITemplateMappingAPI) HalfBeanFactory.getBean("TemplateMappingAPI");
	templateMappingId = mappingAPI.persist(mappingDTO);
	}
	else{
		ITemplateMappingAPI mappingAPI = (ITemplateMappingAPI) HalfBeanFactory.getBean("TemplateMappingAPI");
		
		Long docId = ReportEngineUtil.uploadDocument("D:/output_template.xml","output_template.xml");
		TemplateMapping mappingDTO = new TemplateMapping();
		mappingDTO = mappingAPI.findById(Long.parseLong(getFieldValue("hdnTemplateMappingId")));
		mappingDTO.setOutputTemplateId(docId);
		mappingAPI.update(mappingDTO);
	}
	return super.execute();
}
public Long getTemplateMappingId() {
	return templateMappingId;
}
public void setTemplateMappingId(Long templateMappingId) {
	this.templateMappingId = templateMappingId;
}
public String getTemplateType() {
	return templateType;
}
public void setTemplateType(String templateType) {
	this.templateType = templateType;
}

}
