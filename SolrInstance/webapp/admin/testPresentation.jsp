<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="it.polimi.mdir.xquery.XQueryWrapper"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.*" %>

   
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
String projectName = "";
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
<tr>
  <th>Ranking</th>
  <th>Project Name</th>
  <th>Class Name</th>
  <th>Score</th>
</tr>
<tr>

<%

for (int i=0; i<resultList.size(); i++) {

projectName = resultList.get(i).split(" ")[0];
className = resultList.get(i).split(" ")[1];
score = resultList.get(i).split(" ")[2];

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td><%=score%></td>
</tr> 
  
<%

}

%>
  
</tr>
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
<tr>
  <th>Ranking</th>
  <th>Project Name</th>
  <th>Class Name</th>
  <th>Score</th>
</tr>
<tr>

<%

for (int i=0; i<resultList.size(); i++) {

projectName = resultList.get(i).split(" ")[0];
className = resultList.get(i).split(" ")[1];
score = resultList.get(i).split(" ")[2];

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td><%=score%></td>
</tr> 
  
<%

}

%>
  
</tr>
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
<tr>
  <th>Ranking</th>
  <th>Project Name</th>
  <th>Class Name</th>
  <th>Score</th>
</tr>
<tr>

<%

for (int i=0; i<resultList.size(); i++) {

projectName = resultList.get(i).split(" ")[0];
className = resultList.get(i).split(" ")[1];
score = resultList.get(i).split(" ")[2];

String trClass = "";
if (i % 2 == 0) {
	trClass = "even";
} else {
	trClass = "odd";
}
%>
<tr class="<%=trClass %>">
  <td><%=i+1%></td>
  <td><%=projectName%></td>
  <td><%=className%></td>
  <td><%=score%></td>
</tr> 
  
<%

}

%>
  
</tr>
</table>
      
      </td>    
   </tr>
</table>

</body>
</html>