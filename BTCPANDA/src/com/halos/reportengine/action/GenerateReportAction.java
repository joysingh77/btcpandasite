package com.halos.reportengine.action;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.halos.reportengineutil.HalosBaseAction;
import com.halos.reportengineutil.ReportEngineUtil;
import com.halos.util.commonpackages.IHalosConstants;

public class GenerateReportAction extends HalosBaseAction{
	ResultSet rs;
	String outputFile;
@Override

public String execute() throws Exception {
	try {
		
	
	
	String databaseName=getServletRequest().getParameter("databaseName");
	String procedureName=getServletRequest().getParameter("procedureName");
	String usr_name=getServletRequest().getParameter("usr_name");
	String pwd=getServletRequest().getParameter("pwd");
	String ip_addr=getServletRequest().getParameter("ip");
	String port=getServletRequest().getParameter("port");
	String params=getServletRequest().getParameter("params");
		Class.forName("com.mysql.jdbc.Driver");
		 Connection con =  DriverManager.getConnection("jdbc:mysql://localhost/"+databaseName+"?user=root&password=");
	    Statement st = con.createStatement();
	    
	    CallableStatement cs = con.prepareCall("{ call "+procedureName+"}");
	    String arrparams[];
	    if(!params.equals(""))
	     arrparams=params.split(",");
	    else
	    	arrparams=new String[0];
	   for(int i=0;i<arrparams.length;i++){
		   cs.setString(i+1, getServletRequest().getParameter(arrparams[i]));
	   }
	     rs=  cs.executeQuery();
	   
	
	List<Object[]> records=new ArrayList<Object[]>();
	while(rs.next()){
	    int cols = rs.getMetaData().getColumnCount();
	    Object[] arr = new Object[cols];
	    for(int i=0; i<cols; i++){
	      arr[i] = rs.getObject(i+1);
	    }
	    records.add(arr);
	}

	int len=0;
	for (Object[] obj : records) {
		len=obj.length;
		break;
	}
	String query="";
	
	for (Object[] object : records) {
		query+="<tr>";
		for (int i = 0; i < len; i++) {
			query+="<td>"+object[i]+"</td>";
		}
		query+="</tr>";
	}
	
	
	Map<String, String> outTemplateMap = ReportEngineUtil.readInputTemplate(outputFile);
	
	getServletRequest().setAttribute("result_source", outTemplateMap.get("jsp")+query);
	rs.close();
    cs.execute();
    cs.close();
    st.close();
    con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	return super.execute();
}
public ResultSet getRs() {
	return rs;
}
public void setRs(ResultSet rs) {
	this.rs = rs;
}
public String getOutputFile() {
	return outputFile;
}
public void setOutputFile(String outputFile) {
	this.outputFile = outputFile;
}

}
