<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="it.polimi.mdir.xquery.XQueryWrapper"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.*" %>

   
<%!
public String switchCSSclass(String oldClass) {
	if (oldClass.equals("even")) {
		return "odd";
	} else {
		return "even";
	}
}

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
			if (spaceCount > 1 && s.charAt(i-4) != 't') {
				before = s.substring(0, i-spaceCount);
				after = s.substring(i);
				String spaces = "";
				for (int j = 0; j < spaceCount; j++) {
					spaces += "&nbsp;&nbsp;";
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
			var rows = document.getElementsByTagName("tr");
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
		function toggle(id, experiment) {
			var box = document.getElementById("detailedScoreBox");
			var table = document.getElementById("table"+experiment); 
			var rows = table.getElementsByTagName("tr");
			
			for (i = 0; i < rows.length; i++) {
				if (rows[i].id == id) {
					var detailedScore = rows[i].cells[4].innerHTML;
					box.innerHTML = detailedScore;
				}
			}
		} 
		
	</script>
</head>
<body>

<h1> Query Test Presentation Page </h1>

<strong> Query string: </strong>
<tt> <%=request.getParameter("queryString")%> </tt>

<%

// create and load xquery properties
Properties xqueryConfig = new Properties();
FileInputStream in = new FileInputStream("xqueryConfig.properties");
xqueryConfig.load(in);
in.close();

String XQUERY_PATH = xqueryConfig.getProperty("DIR");

String[] experiments = new String[]{"A", "B", "C", "D"};

ArrayList<String> resultList = new ArrayList<String>();
String projectId = "";
String projectName = "";
String classId = "";
String className = "";
String score = "";

%>

<table>
   <tr>
   
<%
for (String experiment : experiments) {
	resultList.clear();
	XQueryWrapper xq = new XQueryWrapper(XQUERY_PATH.concat("/testPresentation.xquery"));
	xq.bindVariable("document", "result"+experiment+".xml");
	resultList = xq.executeQuery();
%>   
   <!-- EXPERIMENT <%=experiment %> -->
      <td>
<table id="table<%=experiment %>">
   <caption>EXPERIMENT <%=experiment %></caption>
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
	String previousScore = null;
	String trClass = "odd";
	for (int i=0; i<resultList.size(); i++) {
		String[] splittedResult = resultList.get(i).split(" ");
		projectId = splittedResult[0];	
		projectName = splittedResult[1];
		classId = splittedResult[2];
		className = splittedResult[3];
		score = splittedResult[4];
		
		String rowId;
		if ("A".equals(experiment)) {
			rowId = projectId;
		} else {
			rowId = classId;
		}
		
		//Get detailedScore of the project
		XQueryWrapper xqDetailedScore = new XQueryWrapper(XQUERY_PATH.concat("/getDetailedScore.xquery"));
		xqDetailedScore.bindVariable("document", "result"+experiment+".xml");
		xqDetailedScore.bindVariable("id", rowId);
		String detailedScore = xqDetailedScore.executeQuery().get(0);
		detailedScore = correctIndentation(detailedScore);

		if (!score.equals(previousScore)) {
			trClass = switchCSSclass(trClass);
			previousScore = score;
		}
	%>
		<tr class="<%=trClass %>" id="<%=rowId %>" onmouseover="highlightClasses(this.id)"
											 	   onmouseout="disableHighlightClasses(this.id)">
  			<td><%=i+1%></td>
  			<td><%=projectName%></td>
  			<td><%=className%></td>
  			<td onclick="toggle('<%=rowId %>', '<%=experiment %>')"><%=score%></td>
  			<td class="hidden"><%=detailedScore %></td>
		</tr> 
	<%
	}
	%>
  </tbody>
</table>
      
	</td>
<%
}
%>

  
   </tr>
</table>

<div class="detailedScore" id="detailedScoreBox">
</div>

</body>
</html>