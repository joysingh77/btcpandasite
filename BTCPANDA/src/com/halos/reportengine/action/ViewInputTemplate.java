package com.halos.reportengine.action;

import org.dom4j.io.SAXReader;

import com.halos.half3.dto.HalfLabelDTO;
import com.halos.util.commonpackages.HalosBaseAction;

public class ViewInputTemplate extends HalosBaseAction{
@Override
public String execute() throws Exception {
	getServletRequest().setAttribute("xmlContent", new SAXReader().read("D://input_template.xml").asXML());
	return super.execute();
}

}
