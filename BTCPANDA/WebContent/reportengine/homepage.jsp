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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Report Engine</title>
<hc3:components ids="editable_webtable,webtable,calendar,tabview,multiselectcontrol,dialog,linkbutton,carousel,carousel"></hc3:components>
<link rel="stylesheet" type="text/css"	href="<%=request.getContextPath()%>/styles/screen.css"/>
<link rel="stylesheet" type="text/css"	href="<%=request.getContextPath()%>/styles/reportengine.css"/>
<script type='text/javascript' src="<%=request.getContextPath()%>/scripts/reportengine/reportengine.js"></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/scripts/reportengine/animatedcollapse.js"></script>
<script type='text/javascript' src="<%=request.getContextPath()%>/scripts/jquery/jquery.js"></script>

<script>
$(function(){
	var arrayId = ['createurl','inputtemplate','outputtemplate','storedprocedure','report'];
	for(var i = 0;i<arrayId.length;i++){
		$('#'+arrayId[i]).click(function(){
			for(var j = 0;j<arrayId.length;j++){
				document.getElementById(arrayId[j]).setAttribute('class','select');
			}
		 	$(this).toggleClass('current');
			return false;
			});
	}
	
});
</script> 


</head>
<body class="half-skin"> 

<!-- Start: page-top-outer -->
<div id="page-top-outer">    
<input type="hidden" id="hdnUrlId" name="hdnUrlId"/>
<input type="hidden" id="hdnUrlName" name="hdnUrlName" value="none"/>
<input type="hidden" id="hdnTemplateMappingId" name="hdnTemplateMappingId"/>
<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
	<a href=""><img src="../images/shared/logo.gif" width="100" height="100" alt="" /></a>
	</div>
	<!-- end logo -->
	
	<!--  start top-search -->
	<div id="top-search">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td><input type="text" value="Search" onblur="if (this.value=='') { this.value='Search'; }" onfocus="if (this.value=='Search') { this.value=''; }" class="top-search-inp" /></td>
		<td>
		<select  class="styledselect">
			<option value=""> All</option>
			
		</select> 
		</td>
		<td>
		<input type="image" src="../images/shared/top_search_btn.gif"  />
		</td>
		</tr>
		</table>
	</div>
 	<!--  end top-search -->
 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->
	
<div class="clear">&nbsp;</div>
 
<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat"> 
<!--  start nav-outer -->
<div class="nav-outer"> 

		


		<!--  start nav -->
		<div class="nav">
		<div class="table">
		
		<ul class="select" id="createurl"><li><a href="javascript:void(0);" onclick="fnShowNext('1');"><b>Create url</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->

		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		                    
		<ul class="select" id="inputtemplate"><li><a href="javascript:void(0);" onclick="fnShowNext('2');"><b>Input template</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->

		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select" id="outputtemplate"><li><a href="javascript:void(0);" onclick="fnShowNext('3');"><b>Output template</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select" id="storedprocedure"><li><a href="javascript:void(0);" onclick="fnShowNext('4');"><b>Stored procedure</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select" id="report"><li><a href="javascript:void(0);" onclick="fnShowNext('5');"><b>Report</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div><br></br>
		<marquee behaviour="alternate" direction="right" scrolldelay="125" onmouseover="stop();" onmouseout="start();"><div  id="showURLParentId" >URL : <span id="showURLId">none</span></div></marquee>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->

  <div class="clear"></div>
 
<!-- start content-outer ........................................................................................................................START -->
<div id="content-outer">
<!-- start content -->
<div id="content">

	<!--  start page-heading -->
	<div id="page-heading">
		<h1 id="page-heading-h1">Report Generator</h1>
	</div>
	<!-- end page-heading -->
<div id="content-table">
	<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table-content">
	<tr>
		<th rowspan="3" class="sized"><img src="../images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
		<th class="topleft"></th>
		<td id="tbl-border-top">&nbsp;</td>
		<th class="topright"></th>
		<th rowspan="3" class="sized"><img src="../images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
	</tr>
	<tr>
		<td id="tbl-border-left"></td>
		<td>
		<!--  start content-table-inner ...................................................................... START -->
		<div id="content-table-inner">
		
			<!--  start table-content  -->
			<div id="table-content">
			
			<h2>Get your report in just 4 steps ! </h2>
			<h3>Steps to follow</h3>
			
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. Create an Universal Resource Locator (URL) in your apllication to load reporting page.
			<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Create an Input template which is a XML file contains full information to load input page 
			   for reports.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It needs complete information about HTML code for input page, parameters for 
			   reports,<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MySQL stored procedure names for select boxes as well as reports and database information.
			<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. Create an Output template which is also a XML file contains only the HTML code for viewing the report.
			<br />
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. Create MySQL Stored  procedures by submiting queries.
			<br />
			<br />
			<br />
			<br /><h4>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You are almost done... Now take your report from the URL created above. 
			</h4></div>
			<!--  end table-content  -->
	
			<div class="clear"></div>
		 
		</div>
		<!--  end content-table-inner ............................................END  -->
		</td>
		<td id="tbl-border-right"></td>
	</tr>
	<tr>
		<th class="sized bottomleft"></th>
		<td id="tbl-border-bottom">&nbsp;</td>
		<th class="sized bottomright"></th>
	</tr>
	</table></div>
	<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer........................................................END -->
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	Report Engine &copy; Copyright Halos Technologies Ltd. <a href="">www.halostechnolgies.com</a>. All rights reserved.</div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
    
<script>
animatedcollapse.addDiv('table-content', 'fade=1,hide=0');
animatedcollapse.init();
</script>
</body>
</html>