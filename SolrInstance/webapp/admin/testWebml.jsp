<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html>
<head>


	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Query test submit form page for WebML</title>
	<link type="text/css" rel="stylesheet" href="test.css" />

<script type="text/javascript" language="JavaScript">
<!-- Copyright 2006,2007 Bontrager Connection, LLC
// http://bontragerconnection.com/ and http://willmaster.com/
// Version: July 28, 2007
var cX = 0; var cY = 0; var rX = 0; var rY = 0;
function UpdateCursorPosition(e){ cX = e.pageX; cY = e.pageY;}
function UpdateCursorPositionDocAll(e){ cX = event.clientX; cY = event.clientY;}
if(document.all) { document.onmousemove = UpdateCursorPositionDocAll; }
else { document.onmousemove = UpdateCursorPosition; }
function AssignPosition(d) {
if(self.pageYOffset) {
	rX = self.pageXOffset;
	rY = self.pageYOffset;
	}
else if(document.documentElement && document.documentElement.scrollTop) {
	rX = document.documentElement.scrollLeft;
	rY = document.documentElement.scrollTop;
	}
else if(document.body) {
	rX = document.body.scrollLeft;
	rY = document.body.scrollTop;
	}
if(document.all) {
	cX += rX; 
	cY += rY;
	}
d.style.left = (cX+10) + "px";
d.style.top = (cY+10) + "px";
}
function HideContent(d) {
	if(d.length < 1) { return; }
	document.getElementById(d).style.display = "none";
}
function ShowContent(d) {
	if(d.length < 1) { return; }
	var dd = document.getElementById(d);
	AssignPosition(dd);
	dd.style.display = "block";
}
function ReverseContentDisplay(d) {
	if(d.length < 1) { return; }
	var dd = document.getElementById(d);
	AssignPosition(dd);
	if(dd.style.display == "none") { dd.style.display = "block"; }
	else { dd.style.display = "none"; }
}

//-->
	
function showHide() {
	if (document.getElementById('writeToSheetCheckbox').checked) {
		document.getElementById('metaQueryLabel').style.visibility = 'visible';
     } else {
		document.getElementById('metaQueryLabel').style.visibility = 'hidden';
     }
}

</script>



</head>
<body onload="showHide();">
<form name="queryForm" method="GET" action="../testWebml" accept-charset="UTF-8">
<!-- these are good defaults to have if people bookmark the resulting
     URLs, but they should not show up in the form since they are very
     output type specific.
  -->
<input name="indent" type="hidden" value="on">
<input name="version" type="hidden" value="2.2">

<table>
<tr>
  <td>
	<strong>Query string</strong>
  </td>
  <td>
	<textarea rows="5" cols="60" name="q"></textarea>
  </td>
</tr>
<tr>
  <td>
	<strong>mm (Minimum 'Should' Match)</strong><br />
  </td>
  <td>
	<input name="mm" type="text" value="100%" size="20" onmouseover="ShowContent('mm'); return true;"
   onmouseout="HideContent('mm'); return true;" />
  </td>
</tr>
<tr>
  <td>
	<strong>qf (Query Field)</strong>
  </td>
  <td>
	<input name="qf" type="text" value="content" size="20" onmouseover="ShowContent('qf'); return true;"
   onmouseout="HideContent('qf'); return true;"
  />
  </td>
</tr>

<tr>
  <td>
  </td>
  <td>
    <input class="stdbutton" type="submit" value="search" 
		onclick="if (queryForm.q.value.length==0) { 
			alert('no empty queries, please'); 
			return false; 
			} else if (queryForm.qf.value.length==0) { 
			alert('you MUST specify fields in which search for the query string above'); 
			return false; 
			} else {
			queryForm.submit();
			}">
  </td>
</tr>
</table>
</form>


<div id="qf" class="tipBox">
List of fields in which search for the query string above and the "boosts" to associate with each field.
E.g. fieldOne^2.3 fieldTwo fieldThree^0.4, which indicates that fieldOne has a boost of 2.3, fieldTwo has the default boost, and fieldThree has a boost of 0.4.
</div>

<div id="mm" class="tipBox">
	AND => mm=100%; OR => mm=0%
</div>

<div id="bq-className" class="tipBox">
	You can boost results that have a class name that matches a specific value. E.g. 'int^10' indicates that documents with class name field matching the string 'int' has a boost of 10.
</div>

<div id="bq-projectName" class="tipBox">
	You can boost results that have a project name that matches a specific value. E.g. 'java^20' indicates that documents with project name filed matching 'java' has a boost of 20.
</div>

</body>
</html>
