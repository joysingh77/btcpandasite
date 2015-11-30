package com.halos.reportengine;

import com.halos.util.commonpackages.HalosBaseAction;
import com.halos.half.core.struts.action.BaseAction;

public class LoadPages extends  HalosBaseAction{
	String jspIndex;
@Override
public String execute() throws Exception {
	return jspIndex;
}
public String getJspIndex() {
	return jspIndex;
}
public void setJspIndex(String jspIndex) {
	this.jspIndex = jspIndex;
}

}
