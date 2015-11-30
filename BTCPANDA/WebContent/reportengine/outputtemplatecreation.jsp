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


<h3:hidden id="hdnHeadersCount" name=""></h3:hidden>

<div id="output-params-div">
<table id="template-outparams-tb">
<tr><td id="title-td">  Column Titles </td></tr>
<tr>
<td><div id="headersDiv"><a href="javascript:void(0);" id="headersAhref" onclick="fnCreateHeaderFields();">Add headings</a></div><div id="headingDiv"></div></td>
</tr>

<tr><td colspan="2" ><div id="btn-td-div"><input type="button" id="create" name="create" value="Create" onclick="fnCreateOutputTemplate();" class="form-submit"/>
<input type="button" id="upload" value="Upload" onclick="fnUploadInputTemplate('output');" class="form-submit"></input></div></td>
</tr></table>
</div>

<script>

document.getElementById('page-heading-h1').innerHTML = 'Output Template Creation';

fnCreateHeaderFields();
animatedcollapse.show('table-content');
</script>