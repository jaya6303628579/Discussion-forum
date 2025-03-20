<%@page import="com.nit.model.Alumini"%>
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
<td><a href="home" class="btn btn-warning">HOME</a></td><td><a href="stuprofile" class="btn btn-warning">STUDENT PROFILE</a></td><td><a href="postjob" class="btn btn-warning">POST JOB</a></<td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
<td><a href="query" class="btn btn-warning">POST QUESTION</a></td>
<td><a href="getAllQ&A" class="btn btn-warning">QUESTIONS & ANSWERS</a></td>
</tr>
</table></CENTER></div>

<H3>Alumini personal information</H3>
<%
Alumini s=(Alumini)request.getAttribute("stu");
%>

<table class="table table-striped table-hover">
<tr>
<th>ALUMINI REGNO</th>
<th>COMPANY NAME</th>
<th>BUSSINESS TYPE</th>
<th>ALUMINI NAME</th>
<th>GENDER</th>
<th>AGE</th>
<th>EMAIL</th>
<th>SKILLS</th>
<th>MOBILENO</th>
<th>ADDRESS</th>
<th>USERNAME</th>
</tr>
<tr>
<td><%= s.getRegNo() %></td>
<td><%= s.getCompanyName() %></td>
<td><%= s.getBussinessType() %></td>
<td><%= s.getAluminiName() %></td>
<td><%= s.getGender() %></td>
<td><%= s.getAge() %></td>
<td><%= s.getGmail() %></td>
<td><%= s.getSkills() %></td>
<td><%= s.getMobileno() %></td>
<td><%= s.getAddress() %></td>
<td><%= s.getUsername() %></td>
</tr>
</table>
</form>
</body>
</html>