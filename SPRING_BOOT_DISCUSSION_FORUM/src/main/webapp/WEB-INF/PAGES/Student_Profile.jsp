<%@page import="com.nit.model.Student"%>
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
<td><a href="studenthome" class="btn btn-warning">HOME</a></td><td><a href="Jobnote" class="btn btn-warning">JOB NOTIFICATION</a></td><td><a href="logout" class="btn btn-warning">LOGOUT</a></td>
<td><a href="answer" class="btn btn-warning">QUESTIONS & ANSWER</a></td>
</tr>
</table></CENTER></div>


<%
Student s=(Student)request.getAttribute("stu");
%>

<table class="table table-striped table-hover">
<tr>
<th>Student ROLLNO</th>
<th>Student NAME</th>
<th>Student MOBILE</th>
<th>COLLAGE NAME</th>
<th>MAIL ID</th>
<th>YEAR OF PASSOUT</th>
<th>IT SKILLS</th>
<th>LANGUAGES</th>
<th>USERNAME</th>
</tr>
<tr>
<td><%= s.getsRoll() %></td>
<td><%= s.getsName() %></td>
<td><%= s.getMobileNo() %></td>
<td><%= s.getcName() %></td>
<td><%= s.getMailId() %></td>
<td><%= s.getYop() %></td>
<td><%= s.getSkill() %></td>
<td><%= s.getLanguage() %></td>
<td><%= s.getUsername() %></td>
</tr>
</table>
</form>
</body>
</html>