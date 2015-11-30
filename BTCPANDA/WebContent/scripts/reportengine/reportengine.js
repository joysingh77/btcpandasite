function fnSaveReportingUrlCreationInfo() {
	var reportingUrlName = document.getElementById("reportingUrlName").value;
	if(reportingUrlName == "")
		alert("Enter Reporting Url Name");
	else {
		var fConfObj = {};
		fConfObj.isValiNotReq = true;
		fConfObj.doBeforeCallBack = function(o) {
			HalfPopulateFormUtils.populateFormFields(o);
			HalfWebTable.refreshTable("reportingUrlCreationWebTableCDiv");
			var jsonObj = YAHOO.lang.JSON.parse(o);hdnUrlName
			document.getElementById('hdnUrlId').value = jsonObj['urlId'];
			document.getElementById('hdnUrlName').value = jsonObj['reportName'];
			document.getElementById('showURLId').innerHTML = jsonObj['urlName'];
			document.getElementById('statusReportingUrlCreationMsg').style.display = "block";
			setTimeout(fnClearReportingUrlCreationMsgField, 3000);
			fnClearReportingUrlCreationInfo();
		};
		HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/saveReportingUrlCreationInfo.action',null,null,fConfObj);
		return false;
	}
}
function fnLoadReportingUrlCreationWebTableDetails() {
	return "../halosReport/loadReportingUrlCreationInfo.action";
}
function fnDeleteReportingUrlCreationInfo(reportingUrlCreationId) {
	var fConfObj = {};
	fConfObj.isValiNotReq=true;
	fConfObj.doBeforeCallBack = function(o) {
		HalfPopulateFormUtils.populateFormFields(o);
		HalfWebTable.refreshTable("reportingUrlCreationWebTableCDiv");
			document.getElementById('statusReportingUrlCreationMsg').style.display = "block";
			setTimeout(fnClearReportingUrlCreationMsgField, 3000);
		fnClearReportingUrlCreationInfo();
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/deleteReportingUrlCreationInfo.action?reportingUrlCreationId='+reportingUrlCreationId,null,null,fConfObj);
}
function fnClearReportingUrlCreationInfo() {
	document.getElementById("reportingUrlCreationId").value = "";
	document.getElementById("reportingUrlName").value = "";
}
function fnEditReportingUrlCreationInfo(reportingUrlCreationId){
	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
		var jsonObj = YAHOO.lang.JSON.parse(json);
		var url = jsonObj['url'].split('/');
		document.getElementById('reportingUrlProtocol').value = url[0];
		document.getElementById('reportingUrlip').value = url[1];
		document.getElementById('reportingUrlContext').value = url[2];
		document.getElementById('reportingUrlName').value = url[4].split(".")[0];
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/editReportingUrlCreationInfo.action?editReportingUrlCreationId='+reportingUrlCreationId, null, null,fConfObj);
}
function fnClearReportingUrlCreationMsgField() {
	document.getElementById('statusReportingUrlCreationMsg').style.display = "none";
}
function fnCreateUrl() {
	document.getElementById('hdnReportingUrl').value=document.getElementById('reportingUrlProtocol').value+"//"+document.getElementById('reportingUrlip').value+"/"+document.getElementById('reportingUrlContext').value+"/hReport/"+document.getElementById('reportingUrlName').value+".action";
}

function fnShowHtmlPreview() {
	document.getElementById('htmlPreview').innerHTML = document.getElementById('html').value;
}
//var prefix = "<table>";
//var postfix = "</table>";
//function fnCreateTextFields() {
//	
//	document.getElementById('selectBoxesAhref').style.display = "none";
//	var selectContent = document.getElementById('hdnSelectContent').value;
//	if(selectContent == ""){
//		selectContent = "<tr id='trId1'><td>id</td><td>proc name</td></tr><tr id='trId1'><td><input type='text' id='select1' name = 'select1'/></td>" +
//				"<td><input type='text' id='selectProcName1' name = 'selectProcName1'/></td><td><a href='javascript:void(0);' id='selectHref1' name ='selectHref1' onclick = 'fnCreateField();'>More</a></td></tr>" ;
//		document.getElementById('hdnSelectCount').value = 1; 
//		document.getElementById('hdnSelectContent').value = selectContent;
//	}
//	document.getElementById('selectDiv').innerHTML = prefix + selectContent + postfix;
//	
//}
//function fnCreateField() {
//	var selectCount = document.getElementById('hdnSelectCount').value;
//	var c = Number(selectCount)+1;
//	var selectContent = document.getElementById('selectDiv').innerHTML;
//	selectContent += "<tr id='trId"+c+"'><td><input type='text' id='select"+c+"' name = 'select"+c+"'/></td>" +
//			"<td><input type='text' id='selectProcName"+c+"' name = 'selectProcName"+c+"'/></td><td><a href='javascript:void(0);' id='selectHref"+c+"' name ='selectHref"+c+"' onclick = 'fnCreateField();'>More</a></td></tr>"; 
//	document.getElementById('selectDiv').innerHTML = prefix + selectContent + postfix;
//	document.getElementById('hdnSelectCount').value = c;
//	document.getElementById('hdnSelectContent').value = selectContent;
//}
//function fnCreateReportParamsTextFields() {
//
//	
//	document.getElementById('reportParamsAhref').style.display = "none";
//	var selectContent = document.getElementById('hdnParamsContent').value;
//	if(selectContent == ""){
//		selectContent = "<tr id='trIdParams1'><td><input type='text' id='params1' name = 'params1'/></td><td><a href='javascript:void(0);' id='paramsHref1' name ='paramsHref1' onclick = 'fnCreateParamsField();'>More</a></td></tr>" ;
//		document.getElementById('hdnParamsCount').value = 1; 
//		document.getElementById('hdnParamsContent').value = selectContent;
//	}
//	document.getElementById('paramsDiv').innerHTML = prefix + selectContent + postfix;
//	
//
//}
//
//function fnCreateParamsField() {
//	var selectCount = document.getElementById('hdnParamsCount').value;
//	var c = Number(selectCount)+1;
//	var selectContent = document.getElementById('hdnParamsContent').value;
//	selectContent += "<tr id='trIdParams"+c+"'><td><input type='text' id='params"+c+"' name = 'params"+c+"'/></td><td><a href='javascript:void(0);' id='paramsHref"+c+"' name ='paramsHref"+c+"' onclick = 'fnCreateParamsField();'>More</a></td></tr>"; 
//	document.getElementById('paramsDiv').innerHTML = prefix + selectContent + postfix;
//	document.getElementById('hdnParamsCount').value = c;
//	document.getElementById('hdnParamsContent').value = selectContent;
//}
function fnCreateInputTemplate() {

	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/createInputTemplate.action', null, null,fConfObj);


}
function fnUploadInputTemplate(templateType) {
	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
		document.getElementById('hdnTemplateMappingId').value = YAHOO.lang.JSON.parse(json)['templateMappingId'];
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/uploadTemplate.action', null, 'templateType='+templateType,fConfObj);

}

function fnCreateTextFields() {
	document.getElementById('selectBoxesAhref').style.display = "none";
	document.getElementById('hdnSelectCount').value = 2;
	document.getElementById('selectDiv').innerHTML = "<table id='selectTable'></table>";
	var table=document.getElementById("selectTable");
	
	var row=table.insertRow(0);
	var cell1=row.insertCell(0);
	var cell2=row.insertCell(1);
	var cell3=row.insertCell(2);
	var cell4=row.insertCell(3);
	cell1.innerHTML="Select id";
	cell2.innerHTML="Procedure";
	cell3.innerHTML="Depends";
	 row=table.insertRow(1);
	 cell1=row.insertCell(0);
	 cell2=row.insertCell(1);
	 cell3=row.insertCell(2);
	 cell4=row.insertCell(3);
	 cell1.innerHTML="<input type='text' id='select1' name = 'select1' class='inp-form'/>";
	 cell2.innerHTML="<input type='text' id='selectProcName1' name = 'selectProcName1' class='inp-form'/>";
	 cell3.innerHTML="<input type='text' id='selectDepends1' name = 'selectDepends1' class='inp-form'/>";
	 cell4.innerHTML="<a href='javascript:void(0);' id='selectHref1' name ='1' onclick = 'fnCreateField();'>More</a></td>";
}

function fnCreateField() {
var selectCount = document.getElementById('hdnSelectCount').value;
var c = Number(selectCount);
fnChangeLink(c);
var table=document.getElementById("selectTable");

var row=table.insertRow(c);
var cell1=row.insertCell(0);
var cell2=row.insertCell(1);
var cell3=row.insertCell(2);
var cell4=row.insertCell(3);
cell1.innerHTML="<input type='text' id='select"+c+"' name = 'select"+c+"' class='inp-form'/>";
cell2.innerHTML="<input type='text' id='selectProcName"+c+"' name = 'selectProcName"+c+"' class='inp-form'/>";
cell3.innerHTML="<input type='text' id='selectDepends"+c+"' name = 'selectDepends"+c+"' class='inp-form'/>";
cell4.innerHTML="<a href='javascript:void(0);' id='selectHref"+c+"' name ='"+c+"' onclick = 'fnCreateField();'>More</a></td>";
document.getElementById('hdnSelectCount').value = c+1;
}

function fnCreateReportParamsTextFields() {
	document.getElementById('reportParamsAhref').style.display = "none";
	document.getElementById('hdnParamsCount').value = 2;
	document.getElementById('paramsDiv').innerHTML = "<table id='paramsTable'></table>";
	var table=document.getElementById("paramsTable");
	var row=table.insertRow(0);
	var cell1=row.insertCell(0);
	var cell2=row.insertCell(1);
	var cell3=row.insertCell(2);
	var cell4=row.insertCell(3);
	cell1.innerHTML="Parameter";
	var row=table.insertRow(1);
	var cell1=row.insertCell(0);
	var cell2=row.insertCell(1);
	var cell3=row.insertCell(2);
	var cell4=row.insertCell(3);
	
	 cell1.innerHTML="<input type='text' id='params1' name = 'params1' class='inp-form'/>";
	 cell2.style.paddingRight="406px";
	 cell4.innerHTML="<a href='javascript:void(0);' id='paramsHref1' name ='1' onclick = 'fnCreateParamsField();'>More</a></td>";
}

function fnCreateParamsField() {
var selectCount = document.getElementById('hdnParamsCount').value;
var c = Number(selectCount);
fnChangeParamsLink(c);
var table=document.getElementById("paramsTable");

var row=table.insertRow(c);
var cell1=row.insertCell(0);
var cell2=row.insertCell(1);
var cell3=row.insertCell(2);
var cell4=row.insertCell(3);
cell1.innerHTML="<input type='text' id='params"+c+"' name = 'params"+c+"' class='inp-form'/>";
cell2.style.paddingRight="406px";
cell4.innerHTML="<a href='javascript:void(0);' id='paramsHref"+c+"' name ='"+c+"' onclick = 'fnCreateParamsField();'>More</a></td>";
document.getElementById('hdnParamsCount').value = c+1;
}
function fnChangeLink(total) {
	for(i=1;i<total;i++){
		var link = document.getElementById('selectHref'+i);
		if(link.innerHTML!="Drop"){
		link.innerHTML="Drop";
		link.setAttribute("onclick", "fnHideFiels(this.name)");
		}
	}
}
function fnHideFiels(index) {
	document.getElementById('select'+index).value = "";
	document.getElementById('selectProcName'+index).value = "";
	var table=document.getElementById("selectTable");
	table.rows[index].style.display="none";
}
function fnChangeParamsLink(total) {
	for(i=1;i<total;i++){
		var link = document.getElementById('paramsHref'+i);
		if(link.innerHTML!="Drop"){
		link.innerHTML="Drop";
		link.setAttribute("onclick", "fnHideParamsFiels(this.name)");
		}
	}
}
function fnHideParamsFiels(index) {
	document.getElementById('params'+index).value = "";
	var table=document.getElementById("paramsTable");
	table.rows[index].style.display="none";
}
function fnViewInputTemplate() {
	HalfGlobalObject.formId = 'inputTemplateFormId';
	var obj = {
			url : '../halosReport/viewInputTemplate.action',
			params :null,
			name : 'Input template',
			title : 'Input template',
			draggable : true,
			fixedcenter : true,
			xposition : 315,
			yposition :500,
			
			left:500,top:100
		};
		HalfDialog.openModalDialog(obj);
		return false;
}
function isInternetExplorer() {
	if(window.navigator.userAgent.indexOf("MSIE")>0)
		return true;
	else
		return false;
}
function fnDownloadInputTemplate() {

	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/downloadInputtemplate.action', null, null,fConfObj);

}
function funLoadPage(jsp_index){
	var fConfObj ={};
	fConfObj.isValiNotReq=true;
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/loadJspPage.action?jspIndex='+jsp_index, 'table-content', null,fConfObj);

	
}
function fnShowNext(jsp_index) {
	animatedcollapse.hide('table-content');

	setTimeout(function() {
		funLoadPage(jsp_index);
	},250);


}
function fnCreateHeaderFields() {
	document.getElementById('headersAhref').style.display = "none";
	document.getElementById('hdnHeadersCount').value = 2;
	document.getElementById('headingDiv').innerHTML = "<table id='headerTable'></table>";
	var table=document.getElementById("headerTable");
	
	var row=table.insertRow(0);
	var cell1=row.insertCell(0);
	var cell2=row.insertCell(1);
	var cell3=row.insertCell(2);
	cell1.innerHTML="Column 1";
	 cell2.innerHTML="<input type='text' id='header1' name = 'header1' class='inp-form'/>";
	 cell3.innerHTML="<a href='javascript:void(0);' id='headerHref1' name ='1' onclick = 'fnCreateHeaderField();'>More</a></td>";
}
function fnCreateHeaderField() {
	var selectCount = document.getElementById('hdnHeadersCount').value;
	var c = Number(selectCount);
	fnChangeHeaderLink(c);
	var table=document.getElementById("headerTable");
	var row=table.insertRow(c-1);
	var cell1=row.insertCell(0);
	var cell2=row.insertCell(1);
	var cell3=row.insertCell(2);
	cell1.innerHTML="Column "+c;
	cell2.innerHTML="<input type='text' id='header"+c+"' name = 'header"+c+"' class='inp-form'/>";
	cell3.innerHTML="<a href='javascript:void(0);' id='headerHref"+c+"' name ='"+c+"' onclick = 'fnCreateHeaderField();'>More</a></td>";
	document.getElementById('hdnHeadersCount').value = c+1;
	orderColumns();
}
function fnChangeHeaderLink(total) {
	for(i=1;i<total;i++){
		var link = document.getElementById('headerHref'+i);
		if(link.innerHTML!="Drop"){
		link.innerHTML="Drop";
		link.setAttribute("onclick", "fnHideHeaderFiels(this.name)");
		}
	}
}
function orderColumns() {
	var total = Number(document.getElementById('hdnHeadersCount').value);
	var table=document.getElementById("headerTable");
	var index = 1;
	for(i=0;i<total-1;i++){
		var curr_row = table.rows[i];
		if(!(curr_row.style.display=="none")){
			curr_row.cells[0].innerHTML = "Column "+index;
			index++;
		}
		}
	}
function fnHideHeaderFiels(index) {
	document.getElementById('header'+index).value = "";
	var table=document.getElementById("headerTable");
	table.rows[index-1].style.display="none";
	orderColumns();
}
function fnCreateOutputTemplate() {

	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/createOutputTemplate.action', null, null,fConfObj);


}
function fnLoadReportEngineSelectboxes() {
	
	var allboxes=(document.getElementById("selectboxes").value);
	if(allboxes!=""){
	var db_arr=document.getElementById("databaseName").value.split(":");
		paramsurl="";
		paramsurl+="allboxes="+allboxes+"&databaseName="+db_arr[0]+"&usr_name="+db_arr[1]+"&pwd="+db_arr[2];
		url='../halosReport/loadReportEngineSelectBoxes.action?'+paramsurl;
		var fConfObj ={};
		fConfObj.doBeforeCallBack = function(json) {
			HalfPopulateFormUtils.populateFormFields(json);
			var jsonObj = YAHOO.lang.JSON.parse(json);
			var results = jsonObj['results'];
			
			fnLoadSelectboxes(results);
			
		};
		HalfFormSubmitUtils.ajaxSubmit('POST', url, null, null,fConfObj);
	}
		
	}
function fnLoadSelectboxes(results) {
	var len=(document.getElementById("selectboxes").value).split(",").length;
	for(j=0;j<len;j++){
	var map = results[j][1];
	var selet = document.getElementById(results[j][0]);
	
		var i = 0;
		selet.options.length = 0;
		selet.options[0] = new Option("--Select--",'-1');
		i++;
		for ( var key in map) {
			selet.options[i] = new Option(map[key], key);
			i++;
		}
	}
}
function loadDependantSelectBox(childSelectBox,jsonMap) {

	var map = jsonMap;
	var selet = document.getElementById(childSelectBox);
	
		var i = 0;
		selet.options.length = 0;
		selet.options[0] = new Option("--Select--",'-1');
		i++;
		for ( var key in map) {
			selet.options[i] = new Option(map[key], key);
			i++;
		}

} 
function fnLoadDependentSelectbox(childid,procName,parentId) {
	paramsurl="";
	var db_arr=document.getElementById("databaseName").value.split(":");
	paramsurl+="proc_name="+procName+"&databaseName="+db_arr[0]+"&usr_name="+db_arr[1]+"&pwd="+db_arr[2];
	url='../halosReport/loadDependentReportEngineSelectBoxes.action?'+paramsurl;
	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
		var jsonObj = YAHOO.lang.JSON.parse(json);
		var records = jsonObj['map'];
		
		loadDependantSelectBox(childid,records);
		
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', url,null, "parentVal="+document.getElementById(parentId).value,fConfObj);

}
function fnGenerateReport() {
	var params=document.getElementById("paramsArr").value;
	var arr=params.split(",");
	var paramsurl="";
	for(i=0;i<arr.length;i++){
		if(arr[i]!="")
		paramsurl+=arr[i]+"="+document.getElementById(arr[i]).value+"&";
	}
	var db_arr=document.getElementById("databaseName").value.split(":");
	paramsurl+="procedureName="+document.getElementById("procedureName").value+"&databaseName="+db_arr[0]+"&usr_name="+db_arr[1]+"&pwd="+db_arr[2]+"&ip="+db_arr[3]+"&port="+db_arr[4];
	paramsurl+="&params="+params;
	paramsurl+="&outputFile="+document.getElementById("outputFile").value;
	url='../halosReport/GenerateReport.action?'+paramsurl;
	window.open(url);
}

function fnSelectUrl(urlId,reportName,urlName) {
	document.getElementById('hdnUrlId').value = urlId;
	document.getElementById('hdnUrlName').value = reportName;
	document.getElementById('showURLId').innerHTML = urlName;
}
function fnLoadAllReports() {

	HalfGlobalObject.formId = 'reportPageForm';
	var obj = {
			url : '../halosReport/loadAllReports.action',
			params :null,
			name : 'Reports',
			title : 'Reports',
			draggable : true,
			fixedcenter : true,
			xposition : 315,
			yposition :500,
			
			left:500,top:100
		};
		HalfDialog.openModalDialog(obj);
		return false;

}
function fnSelectThis(id,parameter,url) {
	var params = parameter.split(':');
	var count = document.getElementById('hdnTotalReportsCount').value;
	for(var i=1;i<=count;i++){
		document.getElementById('reportHref_'+i).innerHTML = 'select';
		
	}
	
	document.getElementById(id).innerHTML = 'selected';
	document.getElementById('hdnUrlId').value = params[0];
	document.getElementById('hdnUrlName').value = params[1];
	document.getElementById('showURLId').innerHTML = url;
	
	document.getElementById('reportname-div').innerHTML = params[1];
	document.getElementById('url-div').innerHTML = url;
}
function fnCloseReportPopup() {
	HalfDialog.closeDialog("Reports");
}
function fnTakeReport() {
	var urlArr = document.getElementById('showURLId').innerHTML.split("hReport");
	window.open("../hReport"+urlArr[urlArr.length-1]+"?urlid="+document.getElementById('hdnUrlId').value);
}
function loadProcedures(db) {
	var fConfObj ={};
	fConfObj.isValiNotReq=true;
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/loadProceduresPage.action?databasename='+db, 'procedure-content', null,fConfObj);

}
function fnCreateStoredProcedure() {

	var fConfObj ={};
	fConfObj.doBeforeCallBack = function(json) {
		HalfPopulateFormUtils.populateFormFields(json);
		var jsonObj = YAHOO.lang.JSON.parse(json);
		if(jsonObj['sqlErr']!=undefined){
			document.getElementById('sqlErrDiv').innerHTML = jsonObj['sqlErr'];
			document.getElementById('sqlErrDiv').style.color = "red";
			document.getElementById('sqlErrDiv').style.fontStyle = "regular";
		}
		else{
			loadProcedures(document.getElementById('databaseList').value);
			document.getElementById('sqlErrDiv').innerHTML = "Stored procedure is created successfully";
			document.getElementById('sqlErrDiv').style.color = "green";
			document.getElementById('sqlErrDiv').style.decoration = "blink";
			document.getElementById('sqlErrDiv').style.fontStyle = "italic";
		}
		
	};
	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/createStoredProcedure.action',null, null,fConfObj);


}
function fnCreateDownloadlink() {
	var parent = document.getElementById('Input template_Half_Popup_Div');
	var child = document.createElement("a");
	child.setAttribute("class", 'downloadLink');
	child.setAttribute("href", 'javascript:void(0);');
	child.setAttribute("onclick", 'fnDownloadTemplate();');
	child.setAttribute("title", 'download');
	parent.appendChild(child);
	
}
function fnDownloadTemplate() {
//	var fConfObj ={};
//	fConfObj.doBeforeCallBack = function(json) {
//		HalfPopulateFormUtils.populateFormFields(json);
//		
//	};
//	HalfFormSubmitUtils.ajaxSubmit('POST', '../halosReport/downloadInputtemplate.action',null, null,fConfObj);
	window.open('../halosReport/downloadInputtemplate.action?filename='+document.getElementById('hdnUrlName').value);
}