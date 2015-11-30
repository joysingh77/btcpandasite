<!-- Generated on Wed Apr 17 11:58:35 IST 2013 by AJIMON C using AutoCodings -->
<%
    response.setHeader("Cache-Control","no-cache"); 
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", -1); 
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="/half3-components" prefix="hc3" %>
<%@ taglib uri="/half3-tags" prefix="h3" %>
<%@ taglib uri="/half-tags" prefix="h" %>


<style>


.inp-form {
    height: 31px;
    padding: 5px 8px 5px 0;
    width: 201px;
}
</style>
<%ResultSet list = ReportEngineUtil.getAllDatabases(); %>


<%@page import="com.halos.reportengineutil.ReportEngineUtil"%>
<%@page import="java.sql.ResultSet"%>
<center>
<form name="stprcForm" id="stprcForm">
<table id="main-table-id"><tr><td>
<div id="output-params-div">

<table id="template-outparams-tb">
<tr><td id="title-td">
Select database
</td><td><select id="databaseList" name="databaseList" onchange="loadProcedures(this.value);" class="inp-form">
<option value="--select--">--select--</option>
<%while(list.next()){ %>
<option value="<%=list.getString("TABLE_CAT") %>">
<%=list.getString("TABLE_CAT") %>
</option>
<%} %>
</select></td></tr>
<tr>

<td id="title-td">MySQL Query</td>
<td><h3:textarea id="storedprocedureQuery" name="storedprocedureQuery"  cssStyle="width: 392px; height: 154px;"></h3:textarea></td>
	</tr>
	<tr><td colspan="2" ><center><input type="button" id="createatoredProcedureId" value="Submit" onclick="fnCreateStoredProcedure();" class="form-submit"></input></center></td></tr>
</table>

</div></td><td>
<div id="procedure-content"></div></td></tr></table>
<div id="sqlErrDiv"></div>
<script>
animatedcollapse.show('table-content');
document.getElementById('page-heading-h1').innerHTML = 'Stored Procedure Creation';
animatedcollapse.addDiv('procedure-content', 'fade=1,hide=1');
animatedcollapse.init();
</script>
</form>
</center>