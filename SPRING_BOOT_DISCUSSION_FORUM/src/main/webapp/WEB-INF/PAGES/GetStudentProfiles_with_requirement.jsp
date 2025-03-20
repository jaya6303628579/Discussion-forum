<%@ page import="com.nit.model.Student" %>
<%@ page import="com.nit.model.Postjob" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="jakarta.tags.core" %>
    <%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENTS PROFILES</title>
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
<td><a href="home" class="btn btn-warning">HOME</a></td></td><td><a href="stuprofile" class="btn btn-warning">STUDENT PROFILE</a></td><td><a href="postjob" class="btn btn-warning">POST JOB</a></<td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
<td><a href="query" class="btn btn-warning">POST QUESTION</a></td>
</tr>
</table></CENTER></div>
<form name="frm">
<%
List<Student> li=(List<Student>)request.getAttribute("li");
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
<%
for(Student s: li){
%>
<tr>
<td><%=s.getsRoll() %></td>
<td><%=s.getsName() %></td>
<td><%=s.getMobileNo() %></td>
<td><%=s.getcName() %></td>
<td><%=s.getMailId() %></td>
<td><%=s.getYop() %></td>
<td><%=s.getSkill() %></td>
<td><%=s.getLanguage() %></td>
<td><%=s.getUsername() %></td>

</tr>
<%} %>
</table>
</form>
</body>
</html>