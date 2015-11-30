var displayMsgId = "";
function fnClearMsgField() {
	document.getElementById(displayMsgId).style.display = "none";
}
function fnSetTimeout(id, time) {
	if(time == undefined)
		time = 3000;
	displayMsgId = id;
	document.getElementById(displayMsgId).style.display = "block";
	setTimeout('fnClearMsgField()', time);
}
function fnSetDateFormat(id) {
	document.getElementById(id).value = "mm/dd/yyyy";
}
function show5() {
	
}
function fnDisplaySBoxUsingMap(jsonMap, parentSelectBox, childSelectBox, childlbl, msgId) {
	//map, parentSBox, childSBox, childlbl,msgId<optional>
	var map = jsonMap;
	var selet = document.getElementById(childSelectBox);
	var opt = document.getElementById(parentSelectBox).value;
	if (opt != -1) {
		var i = 0;
		selet.options.length = 0;
		i++;
		var havingValues = false;
		for ( var key in map) {
			selet.options[i] = new Option(map[key], key);
			i++;
			havingValues = true;
		}
		i = 0;
		if(havingValues) {
			selet.options[i] = new Option("--select--", '-1');
		}
		else {
			selet.options[i] = new Option("--No Records--", '-1');
		}

		document.getElementById(childSelectBox).value = -1;;
	} else {
		selet.options.length = 0;
		document.getElementById(childlbl).style.display = "none";
		document.getElementById(childSelectBox).style.display = "none";
	}

	if (selet.options.length == 0) {
		document.getElementById(childlbl).style.display = "none";
		document.getElementById(childSelectBox).style.display = "none";
		if(document.getElementById(msgId))
			fnSetTimeout(msgId);
	}
	else{
		document.getElementById(childlbl).style.display = "block";
		document.getElementById(childSelectBox).style.display = "block";
		if(document.getElementById(msgId))
			fnSetTimeout(msgId, 100);
	}
}
function fnSetAnimate(id) {
	animatedcollapse.addDiv(id,'fade=1,hide=0');
	animatedcollapse.ontoggle=function($, divobj, state){};
	animatedcollapse.init();
}
function fnSetHide(id) {
	animatedcollapse.hide([id]);
}
function fnSetShow(id) {
	animatedcollapse.show([id]);
}
function fnDoHCampusAdminLogout(){
	if(document.getElementById("systemCodeForBillingList")){
		var billCode=document.getElementById("systemCodeForBillingList").value;
	}
	document.forms[0].action = '../InsAdmin/portallogout.action';
	document.forms[0].submit();
	 try{
         if(window.opener){
               window.opener.doLogOut();
               window.close();
         }
         }catch(e){return;}
}
function fnHsurePortalLogout(){
	
	document.forms[0].action = '../half/logoutPortal.action';
	document.forms[0].submit();
	 try{
         if(window.opener){
               window.opener.doLogOut();
               window.close();
         }
         }catch(e){return;}
}
function fnApplyEnterKey(e, fnName) {
	var keyCode;
	if (e)
		keyCode = e.which;
	else
		return true;
	if (keyCode == 13) {
		setTimeout(fnName, 0);
		return false;
	}
	else
		return true;
}
function fnHideId(id) {
	if(document.getElementById(id))
		document.getElementById(id).style.display = 'none';
}
function fnDisplayId(id) {
	if(document.getElementById(id))
		document.getElementById(id).style.display = 'block';
}
function getIdValue(id) {
	var value = document.getElementById(id).value;
	return value;
}
function setIdValue(id, value) {
	document.getElementById(id).value = value;
}
function fnSetInnerHTML(id, value) {
	if(document.getElementById(id))
		document.getElementById(id).innerHTML = value;
}
function fnValidateInputDate(inputDate) {
	
		var validformat=/^\d{2}\/\d{2}\/\d{4}$/;		
		var returnval=true;
		if (!validformat.test(inputDate))
			returnval=false;
		else{ 
			
			var monthfield=inputDate.split("/")[0];
			var dayfield=inputDate.split("/")[1];
			var yearfield=inputDate.split("/")[2];
			var dayobj = new Date(yearfield, monthfield-1, dayfield);
		
		if ((dayobj.getMonth()+1!=monthfield)||(dayobj.getDate()!=dayfield)||(dayobj.getFullYear()!=yearfield))

			returnval=false;
		
		}
	
		return returnval;
}

function fnValidatePositiveNonzeroNumber(inputNumber) {
	var	isNumber=true;
	if(isNaN(inputNumber) )
		isNumber=false;
	else{
	if(Number(inputNumber)<=0)	
		isNumber=false;
	}
	return isNumber;
}
function fnValidatePositiveNumberAndZero(inputNumber) {
	var	isNumber=true;
	if(isNaN(inputNumber) )
		isNumber=false;
	else{
	if(Number(inputNumber)<0)	
		isNumber=false;
	}
	return isNumber;
}
function fnValidateCreatingExtraRowInDataEntry(tableId,compulsoryFieldId,value) {
	var len = HalfDataEntryGrid.getTableData(tableId).length;
	var flag=true;
	if(len!=0){
		for( i=0;i<len;i++){
			if(document.getElementById(compulsoryFieldId+"_"+i) ){
				if(document.getElementById(compulsoryFieldId+"_"+i).value == value)
					flag=false;
			}
			if(!flag)
				break;
		}
	}
	return flag;
}
function fnValidateSystemcode() {
	var flag=true;
	if(document.getElementById("systemCodeList")){
		if(document.getElementById("systemCodeList").value=="-1" ){
			alert("Please Choose System Code !");
			flag=false;
		}
	}else if(document.getElementById("systemCodeForBillingList").value=="-1"){
	alert("Please Choose System Code !");
	flag=false;
	}
	return flag;
}

function fnApplyOnchangeToDate(dateFieldId, fnName, readOnly) {
	var dateTag = document.getElementById(dateFieldId);
	dateTag.setAttribute("onchange", fnName);
	dateTag.value = "mm/dd/yyyy";
	if(readOnly)
		dateTag.readOnly = readOnly;
}
function fnGetStringDate(date) {
	
	var d  = date.getDate();
	var day = (d < 10) ? '0' + d : d;
	var m = date.getMonth() + 1;
	var month = (m < 10) ? '0' + m : m;
	var year = date.getFullYear();
	return month + "/" + day + "/" + year;

}
var HashMap = function() {
	  this.initialize();
	};

HashMap.prototype = {
  hashkey_prefix: "<#HashMapHashkeyPerfix>",
  hashcode_field: "<#HashMapHashcodeField>",
  hashmap_instance_id: 0,

  initialize: function() {
    this.mapValues = {};
    this.code = 0;
    this.hashmap_instance_id += 1;
    this.instance_id = this.hashmap_instance_id;
  },

  hashcodeField: function() {
    return this.hashcode_field + this.instance_id;
  },
  /*
maps value to key returning previous assocciation
*/
  put: function(key, value) {
    var prev;

    if (key && value) {
      var hashCode;
      if (typeof(key) === "number" || typeof(key) === "string") {
        hashCode = key;
      } else {
        hashCode = key[this.hashcodeField()];
      }
      if (hashCode) {
        prev = this.mapValues[hashCode];
      } else {
        this.code += 1;
        hashCode = this.hashkey_prefix + this.code;
        key[this.hashcodeField()] = hashCode;
      }
      this.mapValues[hashCode] = [key, value];
    }
    return prev === undefined ? undefined : prev[1];
  },
  /*
returns value associated with given key
*/
  get: function(key) {
    var value;
    if (key) {
      var hashCode;
      if (typeof(key) === "number" || typeof(key) === "string") {
        hashCode = key;
      } else {
        hashCode = key[this.hashcodeField()];
      }
      if (hashCode) {
        value = this.mapValues[hashCode];
      }
    }
    return value === undefined ? undefined : value[1];
  },
  /*
deletes association by given key.
Returns true if the assocciation existed, false otherwise
*/
  del: function(key) {
    var success = false;
    if (key) {
      var hashCode;
      if (typeof(key) === "number" || typeof(key) === "string") {
        hashCode = key;
      } else {
        hashCode = key[this.hashcodeField()];
      }
      if (hashCode) {
        var prev = this.mapValues[hashCode];
        this.mapValues[hashCode] = undefined;
        if (prev !== undefined){
          key[this.hashcodeField()] = undefined; //let's clean the key object
          success = true;
        }
      }
    }
    return success;
  },
  /*
iterate over key-value pairs passing them to provided callback
the iteration process is interrupted when the callback returns false.
the execution context of the callback is the value of the key-value pair
@ returns the HashMap (so we can chain) (
*/
  each: function(callback, args) {
    var key;
    for (key in this.mapValues){
      if (callback.call(this.mapValues[key][1], this.mapValues[key][0], this.mapValues[key][1]) === false)
        break;
    }
    return this;
  },
  toString: function() {
    return "HashMapJS";
  }

}
function fnSampleGetValues() {
	var map = new HashMap();
	map.put("1", "Raj");
	map.put("3", "Kumar");
	map.put("5", "Kumar");
	map.put("4", "Kumar");
	map.put("2", "Kumar");
	var innerHTML = "";
	for(var key in map['mapValues']) {
		innerHTML += "  key :" + key + "  -> val :" + map.get(key);
	}
	document.getElementById("Hai").innerHTML = innerHTML;
}
function fnSortMap(map) {
	var newMap = new HashMap();
	var array = new Array();
	for(var keyOut in map['mapValues']) {
		array.push(keyOut);
	}
	array.sort(function(a,b) {return a - b;});
	for ( var int = 0; int < array.length; int++) {
		newMap.put(array[int], map.get(array[int]));
	}
	return newMap;
}
function fnSetBasicJSPLabels() {
	HalfGlobalObject.commnMsg = YAHOO.lang.JSON.parse('{"F_Rows_per_page":"Rows/Page&nbsp;","F_DELETE_CONFIRM":"Do you want to delete?","F_Browse":"Browse","F_Submit":"Submit","F_Cancel":"Cancel", "F_Prev":"Prev", "F_Next":"Next"}');
}
function fnSetBasicLabels() {
	setTimeout(fnSetBasicJSPLabels, 100);
	setTimeout(fnSetBasicJSPLabels, 250);
	setTimeout(fnSetBasicJSPLabels, 500);
	setTimeout(fnSetBasicJSPLabels, 750);
	setTimeout(fnSetBasicJSPLabels, 1000);
}
function fnMainTitle(title)
{
	document.getElementById("AdminCPP_lblUserListing").innerHTML = title;
}

function fnSideBarTitle(title)
{
	document.getElementById("AdminCPP_lblGroups").innerHTML = title;
}

