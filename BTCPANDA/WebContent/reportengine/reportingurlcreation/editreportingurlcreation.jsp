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
<%@ taglib uri="/half-tags" prefix="f" %>

<h3:hidden id="reportingUrlCreationId" name=""></h3:hidden>
<table id="editReportingUrlCreationTBId">
		<tr>
			<td id="statusReportingUrlCreationMsg">
				<div class="errormsg">
				<div id="half_msg_statusReportingUrlCreationMsg" 
					class="null"></div>
				</div>
			</td>
		</tr>
<tr>
		<td>
			<h3:label id="Namelbl" name="Namelbl" label="Report name:"
				defaultlabel="Report name:" theme="simple"></h3:label>
		</td>
		
		<td>
			<h3:textfield id="name" name="name" maxlength="100" accesskey="" cssStyle=""
				cssClass="inp-form" tabindex="2" disabled="" theme="" ></h3:textfield>
		</td>
</tr>
	<tr>
		<td>
			<h3:label id="urllbl" name="urllbl" label="Url:"
				defaultlabel="Url:" theme="simple"></h3:label>
		</td>
		
		<td>
		<%
		String[] url=(request.getRequestURL()+"").split("/");
		String newUrl="";
		for(int i=0;i<url.length-1;i++)
			newUrl+=url[i]+"/";
	//	out.write(newUrl+"hReport/"); %>
		<h3:textfield id="reportingUrlProtocol" name="reportingUrlProtocol" maxlength="100" accesskey="" cssStyle=""
				cssClass="txtline" tabindex="2" disabled="" theme="" onchange="fnCreateUrl()" value="<%=url[0] %>"></h3:textfield>//
				<h3:textfield id="reportingUrlip" name="reportingUrlip" maxlength="100" accesskey="" cssStyle=""
				cssClass="txtline" tabindex="2" disabled="" theme="" onchange="fnCreateUrl()" value="<%=url[2] %>"></h3:textfield>/
				<h3:textfield id="reportingUrlContext" name="reportingUrlContext" maxlength="100" accesskey="" cssStyle=""
				cssClass="txtline" tabindex="2" disabled="" theme="" onchange="fnCreateUrl()" value="<%=url[3] %>"></h3:textfield>/hReport/
			<h3:textfield id="reportingUrlName" name="reportingUrlName" maxlength="100" accesskey="" cssStyle=""
				cssClass="txtline" tabindex="2" disabled="" theme="" onchange="fnCreateUrl()"></h3:textfield>.action
				<h3:hidden id="hdnReportingUrl" name="" ></h3:hidden>
				
		</td>
	</tr>
</table>
<table id="saveReportingUrlCreationTBId">
	<tr>
		<td><input type="button"
				name="saveReportingUrlCreationBtn" id="saveReportingUrlCreationBtnId" value="Save"
				 class="form-submit"
				onclick="return fnSaveReportingUrlCreationInfo()" /></td>
		<td><input type="button" value="Clear"
				name="clearReportingUrlCreationBtn" id="clearReportingUrlCreationBtnId"
				class="form-submit"
				onclick="return fnClearReportingUrlCreationInfo()"/></td>
	</tr>
</table>
<script>
document.getElementById('page-heading-h1').innerHTML = 'URL Creation';
animatedcollapse.show('table-content');
</script>