<%@page import="com.nit.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
         .nav{
        padding-top:50px;
        padding-left:20%;
        padding:20px;
        }
        td{
        padding:20px;
        }
</style>
</head>
<body>
<div class="nav">
<CENTER><table>
<tr>

<td><h3>QUESTIONS AND ANSWERS </h3></td>
</tr>
</table></CENTER></div>


<%
List<Questions> li=(List<Questions>)request.getAttribute("li");
%>
<% 
for(Questions q:li){
	
%>
<form action="ans" method="post">
<table class="table table-striped table-hover">
<tr>
<th>QSNO</th>
<th>QUESTIONS</th>
<th>STUDENT ANSWERED</th>
<th>STATUS</th>
</tr>
<tr>
<td><%=q.getNo() %></td>
<td><%=q.getQuestion() %></td>
<td><%=q.getAnswer() %></td>
<td><h5>Updated  &#9989;</h5></td>
</tr>
</table>
</form>
<% }

%>
</body>
</html>