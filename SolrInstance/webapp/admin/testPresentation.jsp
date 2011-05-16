<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="it.polimi.mdir.xquery.XQueryWrapper"%>
<%@ page import="java.util.ArrayList" %> 
   
<%--
Presentation page for query output from TestServlet. This JSP renders in a
more comprehensible way relevant information of query results.
--%>

<%

XQueryWrapper xqA;
XQueryWrapper xqB;
XQueryWrapper xqC;

ArrayList<String> resultList = new ArrayList<String>();
String projectName = "";
String className = "";
String score = "";

xqA = new XQueryWrapper("C:/Users/Stefano/Desktop/Thesis/model-driven-information-retrieval/SolrInstance/xquery/testPresentation.xquery");
xqA.bindVariable("document", "resultA.xml");
resultList = xqA.executeQuery();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Query Test Presentation Page</title>
</head>
<body>

<h1> Query Test Presentation Page </h1>

<h2> Experiment A </h2>

<table border="1">
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

%>
<tr>
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

<h2> Experiment B </h2>

<%

xqB = new XQueryWrapper("C:/Users/Stefano/Desktop/Thesis/model-driven-information-retrieval/SolrInstance/xquery/testPresentation.xquery");
xqB.bindVariable("document", "resultB.xml");
resultList = xqB.executeQuery();


%>


<table border="1">
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

%>
<tr>
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

<h2> Experiment C </h2>

<%

xqC = new XQueryWrapper("C:/Users/Stefano/Desktop/Thesis/model-driven-information-retrieval/SolrInstance/xquery/testPresentation.xquery");
xqC.bindVariable("document", "resultC.xml");
resultList = xqC.executeQuery();

%>

<table border="1">
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

%>
<tr>
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

</body>
</html>