<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/half3-components" prefix="hc3" %>
<%@ taglib uri="/half3-tags" prefix="h3" %>
<%@ taglib uri="/half-tags" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src='<%=request.getContextPath()%>/js/jquery-min.js'></script>
<script type="text/javascript" src='<%=request.getContextPath()%>/js/bootstrap.min.js'></script>
<script type="text/javascript" src='<%=request.getContextPath()%>/js/PopulateFormValues.js'></script>
<script type="text/javascript" src='<%=request.getContextPath()%>/js/test.js'></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<title>testing</title>
</head>
<body>
<form id="sampleform">
<table>
<tr><td>Name</td><td><h3:textfield name="u_name" id="u_name_id"></h3:textfield></td></tr>
<tr><td>Address</td><td><h3:textarea name="u_address" id="u_address_id"></h3:textarea></td></tr>
<tr><td>Date of birth</td><td><table><tr><td>
<h3:select name="u_dob_d" id="u_dob_d_id">
</h3:select></td>
<td>
<h3:select name="u_dob_m" id="u_dob_m">
</h3:select></td>
<td>
<h3:select name="u_dob_y" id="u_dob_y_id">

</h3:select></td>
</tr></table></td></tr>
<tr><td>Gender</td><td><input type="radio" name="u_gender" id="male">male</td><td><input type="radio" name="u_gender" id="female">female</td></tr>
<tr><td>Are you single</td><td><input type="checkbox" name="u_status" id="staus"></td></tr>
<tr><td><hc3:linkbutton onclick="fnSubmitThisForm()" label="submit" defaultlabel="submit" id="submit" name="submit"></hc3:linkbutton></td>
<td><hc3:linkbutton onclick="fnRetrieveThisForm()" label="Fetch from server" defaultlabel="Fetch from server" name="fetch" id="fetch"></hc3:linkbutton></td></tr>
</table>
</form>
<script>
hGlobalObj.startAjaxFetchData('../test/getSelectBoxContents.action');
</script>
</body>
</html>