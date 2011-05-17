<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="it.polimi.mdir.xquery.XQueryWrapper"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.*" %>

   
<%!
/*
*Corrects the indentation of the detailed score
*/
public String correctIndentation(String s) {
	String before;
	String after;
	boolean startCounting = false;
	int spaceCount = 0;
	for (int i = 0; i < s.length(); i ++) {
		if (!startCounting) {
			spaceCount = 0;
		}
		
		if (s.charAt(i) == ' ') {
			startCounting = true;
			spaceCount++;
		} else {
			startCounting = false;
			if (spaceCount > 1) {
				before = s.substring(0, i-spaceCount);
				after = s.substring(i);
				String spaces = "";
				for (int j = 0; j < spaceCount; j++) {
					spaces += "&nbsp;";
				}
				s = before + "<br/>" + spaces + after;
			}
		}
	}
	//s = s.replaceAll(" ", "&nbsp;");
	return s;
};

%>   
   
<%--
Presentation page for query output from TestServlet. This JSP renders in a
more comprehensible way relevant information of query results.
--%>

<%

// create and load xquery properties
Properties xqueryConfig = new Properties();
FileInputStream in = new FileInputStream("xqueryConfig.properties");
xqueryConfig.load(in);
in.close();

String XQUERY_PATH = xqueryConfig.getProperty("DIR");


XQueryWrapper xqA;
XQueryWrapper xqB;
XQueryWrapper xqC;

ArrayList<String> resultList = new ArrayList<String>();
String projectId = "";
String projectName = "";
String classId = "";
String className = "";
String score = "";

xqA = new XQueryWrapper(XQUERY_PATH.concat("/testPresentation.xquery"));
xqA.bindVariable("document", "resultA.xml");
resultList = xqA.executeQuery();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Query Test Presentation Page</title>
	<link type="text/css" rel="stylesheet" href="test.css" />
	<script type="text/javascript">

		/*
		* Color the same class in different experiments 
		*/
		var originalColors = new Array(2);
		
		function highlightClasses(classId) {
			var rows = new Array();
			rows = document.getElementsByTagName("tr");
			var k = 0;
			var i = 0;
			for (i = 0; i < rows.length; i++) {
				if (rows[i].id != "" && rows[i].id == classId) {
					originalColors[k++] = rows[i].style.background;
					rows[i].style.background = "#FF8040";
				}
			}
		}

		function disableHighlightClasses(classId) {
			var rows = document.getElementsByTagName("tr");
			var k = 0;
			var i = 0;
			for (i = 0; i < rows.length; i++) {
				if (rows[i].id == classId) {
					rows[i].style.background = originalColors[k++];
				}
			}
		}

		/*
		* Toggle show/hide detailed score 
		*/
		function toggle(projectId) {
			var box = document.getElementById("detailedScoreBox");
			var projectRow = document.getElementById(projectId);
			var detailedScore = projectRow.cells[4].innerHTML;
			box.innerHTML = detailedScore;
		} 
		
	</script>
</head>
<body>

<h1> Query Test Presentation Page </h1>

<strong> Query string: </strong>
<tt> <%=request.getParameter("queryString")%> </tt>

<table>
   <tr>
   <!-- EXPERIMENT A -->
      <td>

<table>
   <caption>EXPERIMENT A</caption>
   <thead>
		<tr>
  		<th>Ranking</th>
  		<th>Project Name</th>
  		<th>Class Name</th>
  		<th>Score</th>
		</tr>
	</thead>
	
	<tbody>
<%

for (int i=0; i<resultList.size(); i++) {

projectId = resultList.get(i).split(" ")[0];	
projectName = resultList.get(i).split(" ")[1];
classId = resultList.get(i).split(" ")[2];
className = resultList.get(i).split(" ")[3];
score = resultList.get(i).split(" ")[4];

//Get detailedScore of the project
XQueryWrapper xqDetailedScore = new XQueryWrapper(XQUERY_PATH.concat("/getDetailedScore.xquery"));
xqDetailedScore.bindVariable("document", "resultA.xml");
xqDetailedScore.bindVariable("projectId", projectId);
String detailedScore = xqDetailedScore.executeQuery().get(0);
detailedScore = correctIndentation(detailedScore);

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>" id="<%=projectId %>">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td onclick="toggle('<%=projectId %>')"><%=score%></td>
  <td class="hidden" id="detailedScore"><%=detailedScore %></td>
</tr> 
<%

}

%>
  </tbody>
</table>
      
      </td>
      
   <!-- EXPERIMENT B -->   
      <td>
      
<%

xqB = new XQueryWrapper(XQUERY_PATH.concat("/testPresentation.xquery"));
xqB.bindVariable("document", "resultB.xml");
resultList = xqB.executeQuery();


%>


<table>
   <caption>EXPERIMENT B</caption>
   <thead>
		<tr>
  		<th>Ranking</th>
  		<th>Project Name</th>
  		<th>Class Name</th>
  		<th>Score</th>
		</tr>
	</thead>

<%

for (int i=0; i<resultList.size(); i++) {

projectId = resultList.get(i).split(" ")[0];
projectName = resultList.get(i).split(" ")[1];
classId = resultList.get(i).split(" ")[2];
className = resultList.get(i).split(" ")[3];
score = resultList.get(i).split(" ")[4];

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>" id="<%=classId %>" onmouseover="highlightClasses(this.id)"
											 onmouseout="disableHighlightClasses(this.id)">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td><%=score%></td>
</tr> 
  
<%

}

%>
  
</table>
      
      </td>
      
   <!-- EXPERIMENT C -->   
      <td>
      
<%

xqC = new XQueryWrapper(XQUERY_PATH.concat("/testPresentation.xquery"));
xqC.bindVariable("document", "resultC.xml");
resultList = xqC.executeQuery();

%>

<table>
   <caption>EXPERIMENT C</caption>
   <thead>
		<tr>
  		<th>Ranking</th>
  		<th>Project Name</th>
  		<th>Class Name</th>
  		<th>Score</th>
		</tr>
	</thead>

<%

for (int i=0; i<resultList.size(); i++) {

projectId = resultList.get(i).split(" ")[0];
projectName = resultList.get(i).split(" ")[1];
classId = resultList.get(i).split(" ")[2];
className = resultList.get(i).split(" ")[3];
score = resultList.get(i).split(" ")[4];

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>" id="<%=classId %>" onmouseover="highlightClasses(this.id)"
											 onmouseout="disableHighlightClasses(this.id)">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td><%=score%></td>
</tr> 
  
<%

}

%>
  
</table>
      
      </td>    
   </tr>
</table>

<div class="detailedScore" id="detailedScoreBox">
	as
</div>

</body>
</html>