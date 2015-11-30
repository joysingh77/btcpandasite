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

<center>
<table id="displayReportingUrlCreationTBId">
	<tr>
		<td>
			<hc3:webtable containerDiv="reportingUrlCreationWebTableCDiv"
				datasource="fnLoadReportingUrlCreationWebTableDetails" id="test12" pageSize="10"
				paginationRequired="true">
					<hc3:webtablemenu columns="name">
						<hc3:webtablemenuitem label="Edit" jsMethod="fnEditReportingUrlCreationInfo"
							jsParams="reportingUrlCreationId"></hc3:webtablemenuitem>	
	  					<hc3:webtablemenuitem label="Delete" jsMethod="fnDeleteReportingUrlCreationInfo"
							jsParams="reportingUrlCreationId"></hc3:webtablemenuitem>
						<hc3:webtablemenuitem label="Select" jsMethod="fnSelectUrl"
							jsParams="reportingUrlCreationId,name,reportingUrlName"></hc3:webtablemenuitem>	
	 				</hc3:webtablemenu>
                   <hc3:webtablecolumn label="" key="reportingUrlCreationId" type="hidden"></hc3:webtablecolumn>
                   <hc3:webtablecolumn label="Name" key="name" isColumnSort="true"></hc3:webtablecolumn>
				<hc3:webtablecolumn label="Url" key="reportingUrlName" isColumnSort="true"></hc3:webtablecolumn>
				
			</hc3:webtable>	
	    </td>
	</tr>
</table>

	<jsp:include page="editreportingurlcreation.jsp"></jsp:include>

</center>