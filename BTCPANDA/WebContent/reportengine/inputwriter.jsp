<%
    response.setHeader("Cache-Control","no-cache"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/half3-components" prefix="hc3" %>
<%@ taglib uri="/half3-tags" prefix="h3" %>
<%@ taglib uri="/half-tags" prefix="f" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Dynamic Reports</title>
<script type='text/javascript' src='<%=request.getContextPath()%>/scripts/reportengine/reportengine.js'></script>
<hc3:components ids="editable_webtable,webtable,calendar,tabview,multiselectcontrol,dialog,linkbutton,carousel,carousel"></hc3:components>
	<title> Stored Procedure Report Demo </title>
	</head>
<body>
<h3:form name="reportFrm" id="reportFrm">
<%





	String fieldFormat = "";
	String  params= "";
	String  procedureName= "";
	String  databaseName= "";
	String  selectboxes= "";
	String outputfile = "";
	Map<String, String> val = new HashMap();
	val = (Map<String, String>)request.getAttribute("inputTemplateVal");
		fieldFormat=val.get("jsp");
		params=val.get("params");
		procedureName=val.get("procedureName");
		databaseName=val.get("databaseName");
		selectboxes=val.get("selectboxes");
		outputfile = val.get("outputfile");
%>

   <%=fieldFormat%>
	
<input type="hidden" name="paramsArr" id="paramsArr" value='<%=params %>'/>
	<input type="hidden" name="procedureName" id="procedureName" value='<%=procedureName %>'/>
	<input type="hidden" name="databaseName" id="databaseName" value='<%=databaseName %>'/>
	<input type="hidden" name="outputFile" id="outputFile" value='<%=outputfile %>'/>
	<input type="hidden" name="selectboxes" id="selectboxes" value='<%=selectboxes %>'/>
<input type='button' value='submit' onclick='fnGenerateReport();'/>
		<script>
		fnLoadReportEngineSelectboxes();
		</script>
		</h3:form>
</body>

</html>
