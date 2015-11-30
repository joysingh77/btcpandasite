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


<form name="reportPageForm" id="reportPageForm">
<div id="output-params-div">
<table id="template-outparams-tb">
<tr id="title-td"><td>  Report name </td><td colspan="2"> Report URL </td></tr>
<tr>
<td><div id="reportname-div"></div></td>
<td><div id="headersDiv"><div id="url-div"></div>
</div></td><td><div id="urlchange-div"><a href="javascript:void(0);" id="urlchange-href" name="urlchange-href" onclick="fnLoadAllReports();">change</a></div></td>
</tr>

<tr><td colspan="3" ><div id="btn-td-div">
<input type="button" id="generatereportId" value="Generate" onclick="fnTakeReport();" class="form-submit"></input></div></td>
</tr></table>
</div>

<script>

document.getElementById('page-heading-h1').innerHTML = 'Take Report';
document.getElementById('reportname-div').innerHTML = document.getElementById('hdnUrlName').value;
document.getElementById('url-div').innerHTML = document.getElementById('showURLId').innerHTML;
animatedcollapse.show('table-content');
</script>
</form>