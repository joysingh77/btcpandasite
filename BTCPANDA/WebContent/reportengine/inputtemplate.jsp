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

<div id="xmlContentDiv">
<h3:textarea  id="xmlContent" name="xmlContent" value='<%=request.getAttribute("xmlContent").toString() %>' readonly="true" ></h3:textarea>
</div>
<script>
var xmlArea = document.getElementById("xmlContent");
xmlArea.setAttribute("spellcheck", false);
xmlArea.style.width="750px";;
xmlArea.style.height = xmlArea.scrollHeight-((isInternetExplorer())?0:3)+"px";

fnCreateDownloadlink();


</script>