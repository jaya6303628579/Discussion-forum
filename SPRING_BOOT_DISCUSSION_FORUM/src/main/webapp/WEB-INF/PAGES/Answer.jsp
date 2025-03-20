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
        .sh{
        width: 50px;
        }
</style>
</head>
<body>
<div class="nav">
<CENTER><table>
<tr>
<td><a href="studenthome" class="btn btn-warning">HOME</a></td><td><a href="Jobnote" class="btn btn-warning">JOB NOTIFICATION</a></td><td><a href="logout" class="btn btn-warning">LOGOUT</a></td>
<td><a href="answer" class="btn btn-warning">QUESTIONS & ANSWER</a></td>
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
<th>ANSWER</th>
<th>SERIAL NO</th>
<th>ACTION</th>
</tr>

<tr>
<td><%=q.getNo() %></td>
<td><%=q.getQuestion() %></td>
<td><input type="text" name="ans"></td>
<td><input type="text" name="srno" value="<%=q.getNo()%>" readonly="readonly" class="sh"></td>
<td><input type="submit" value="Send" class="btn btn-outline-danger"></td>
</tr>
</table>
</form>
<% }

%>
</body>
</html>