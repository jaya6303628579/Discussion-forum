<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT REGISTER</title>
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
<h1>post job</h1>
<form action="jobpost" method="post">
<table>
<tr><td>JOB ID</td><td><input type="text" name="id"></td></tr>
<tr><td>COMPANY NAME</td><td><input type="text" name="cname"></td></tr>
<tr><td>CONTACT NO</td><td><input type="text" name="mbl"></td></tr>
<tr><td>ADDRESS</td><td><input type="text" name="add"></td></tr>
<tr><td>JOB LOCATION</td><td><input type="text" name="loc"></td></tr>
<tr><td>VACANCY</td><td><input type="text" name="vac"></td></tr>
<tr><td>JOB TITLE</td><td><input type="text" name="jobtitle"></td></tr>
<tr><td>PROGRAMMING SKILLS</td><td><select name="SKILLS" id="SKILLS">
    <option value="JAVA FULL STACK">JAVA FULL STACK</option>
    <option value="C">C</option>
    <option value="PYTHON">PYTHON</option>
    <option value="C#">C#</option>
    <option value="ASP.NET">ASP.NET</option>
  </select></td></tr>
<tr><td>WEBSITE</td><td><input type="text" name="site"></td></tr>
<tr><td><input type="submit" value="SUBMIT" class="btn btn-outline-success"></td></tr>
</table>
</form>
</body>
</html>