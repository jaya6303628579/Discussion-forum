<%@ page import="com.nit.model.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style type="text/css">
 body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
   .nav{
        padding-top:50px;
        padding-left:15%;
        }
        td{
        padding:20px;
        }
        img{
        margin-left :20%;
        border-radius: 10%;
        }
    
</style>
</head>
<body>
<div class="nav">
<CENTER><table>
<tr>
<td><a href="AdminHome" class="btn btn-warning">HOME</a></td><td><a href="Aluminiinfo" class="btn btn-warning">ALUMINI INFO</a></td><td><a href="STUDENTPROFILE" class="btn btn-warning">STUDENT PROFILES</a></td><td><a href="jobs" class="btn btn-warning">POST JOBS</a></td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
<td><a href="getAllQ&A" class="btn btn-warning">QUESTIONS & ANSWERS</a></td>

</tr>
</table></CENTER></div>
<center><h2>ADMIN HOME</h2>
<h3><b>WELCOME TO ADMIN PAGE</b></h3>
</center>

<img src="https://hi-techmedical.org/img/administration.jpg">

</body>
</html>