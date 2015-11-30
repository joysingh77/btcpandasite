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
<%@ taglib uri="/struts-tags" prefix="s"%>
<form name="inputTemplateForm" id="inputTemplateFormId">
<h3:hidden id="hdnSelectContent" name=""></h3:hidden>
<h3:hidden id="hdnSelectCount" name=""></h3:hidden>
<h3:hidden id="hdnParamsContent" name=""></h3:hidden>
<h3:hidden id="hdnParamsCount" name=""></h3:hidden>



<div id="input-template-div">
<center>
<table id="main-table-div">
<tr>
<td><div id="html-code-div">HTML</div><h3:textarea name="html" id="html" onkeyup="fnShowHtmlPreview();" onchange="fnShowHtmlPreview();" cols="100" rows="25"></h3:textarea></td>
<td><div id="html-out-div">RESULT</div><div id="htmlPreview"></div></td>
</tr>
<tr>
<td colspan="2">
<div id="template-params">
<table id="template-params-tb">
<tr><td><h3:label name="dynaSelectBoxbl" id="dynaSelectBoxbl" label="Dynamic valued selectbox" defaultlabel="Dynamic valued selectbox" theme="simple"></h3:label></td>
<td><div id="selectBoxesDiv"><a href="javascript:void(0);" id="selectBoxesAhref" onclick="fnCreateTextFields();">Add select box</a></div><div id="selectDiv"></div></td>
</tr>
<tr><td><h3:label name="reportParamslbl" id="reportParamslbl" label="Reporting parameters" defaultlabel="Reporting parameters" theme="simple"></h3:label></td>
<td><div id="reportParamsDiv"><a href="javascript:void(0);" id="reportParamsAhref" onclick="fnCreateReportParamsTextFields();">Add parameters</a></div><div id="paramsDiv"></div></td>
</tr>
<tr><td><h3:label name="procedurelbl" id="procedurelbl" label="Report procedure" defaultlabel="Report procedure" theme="simple"></h3:label></td>
<td><div id="procedureDiv"><table>
<tr>
<td><h3:label name="procedurelbl" id="procedurelbl" label="Report procedure" defaultlabel="Report procedure" theme="simple" cssStyle="color:black;font-size:12px"></h3:label></td>
</tr>
<tr><td>
<h3:textfield name="procedure" id="procedure" cssClass='inp-form'></h3:textfield>
</td></tr>
</table></div></td>
</tr>
<tr>
<td>
<h3:label name="databaseNamelbl" id="databaseNamelbl" label="Database" defaultlabel="Database" theme="simple"></h3:label>
</td>
<td>
<div id="dbDetailDiv">
<table>
<tr>
<td><h3:label name="databaseNamelbl" id="databaseNamelbl" label="Name" defaultlabel="Name" theme="simple" cssStyle="color:black;font-size:12px" ></h3:label></td>
<td><h3:label name="dbusrNamelbl" id="dbusrNamelbl" label="User name" defaultlabel="User name" theme="simple" cssStyle="color:black;font-size:12px"></h3:label></td>
<td><h3:label name="passwordlbl" id="passwordlbl" label="Password" defaultlabel="Password" theme="simple" cssStyle="color:black;font-size:12px"></h3:label></td>
</tr>
<tr>
<td><h3:textfield name="databaseName" id="databaseName" cssClass='inp-form'></h3:textfield></td>
<td><h3:textfield name="usrName" id="usrName" cssClass='inp-form'></h3:textfield></td>
<td><h3:textfield name="password" id="password" cssClass='inp-form'></h3:textfield></td>
</tr>
</table>
</div>
</td>
</tr>

</table>
</div>
</td>
</tr>
</table>
</center>
</div>
<div>

</div>
<div id="btnDiv"><input type="button" id="create" value="create" onclick="fnCreateInputTemplate();" class="form-submit"></input>
<input type="button" id="view" value="view" onclick="fnViewInputTemplate();" class="form-submit"></input>
<input type="button" id="upload" value="upload" onclick="fnUploadInputTemplate('input');" class="form-submit"></input>
</div>
<script>
document.getElementById('page-heading-h1').innerHTML = 'Input Template Creation';


animatedcollapse.show('table-content');
</script>
</form>
