
<%@page import="com.halos.reportengine.entity.ReportingUrlCreation"%>
<%@page import="java.util.List"%><!-- Generated on Wed Apr 17 11:58:35 IST 2013 by AJIMON C using AutoCodings -->
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


<%
List<ReportingUrlCreation> list = (List<ReportingUrlCreation>)request.getAttribute("allreports");
int sl = 1;
%>
<div  id="reportspopup-div">
<table>
<tr><td>sl no</td><td>Report Name</td><td>Report URL</td></tr>
<%for(ReportingUrlCreation obj:list){ 
String parameter = obj.getReportingUrlCreationId()+":"+obj.getName(); 

%>
<tr><td><%=sl+"" %></td><td><%=obj.getName().toString() %></td><td><%=obj.getReportingUrlName().toString() %></td><td><a href="javascript:void(0);" onclick="fnSelectThis(this.id,'<%=parameter %>','<%=obj.getReportingUrlName() %>');" id="reportHref_<%=sl %>">select</a></td></tr>
<%
sl++;
} %>
</table>
</div>
<h3:hidden id="hdnTotalReportsCount" name="hdnTotalReportsCount" value='<%=list.size()+"" %>'></h3:hidden>
<input type="button" id="report-ok" value="Ok" onclick="fnCloseReportPopup();" ></input>