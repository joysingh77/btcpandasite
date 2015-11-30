package com.halos.reportengine.action;

import java.sql.ResultSet;

import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.ReportEngineUtil;

public class LoadAllProcedursAction extends HalosBaseAction{
	String databasename;
@Override
public String execute() throws Exception {
	getServletRequest().setAttribute("procedures", ReportEngineUtil.getAllProcedurs(databasename));
	
	return super.execute();
}
public String getDatabasename() {
	return databasename;
}
public void setDatabasename(String databasename) {
	this.databasename = databasename;
}

}
