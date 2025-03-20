<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT REGISTER</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
         .nav{
        padding-top:50px;
        padding-left:20%;
       
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
<td><a href="home" class="btn btn-warning">HOME</a></td><td><a href="ADMINLOGIN" class="btn btn-warning">ADMIN LOGIN</a></td><td><a href="ALUMINILOGIN" class="btn btn-warning">ALUMINI LOGIN</a></td><td><a href="ALUMINIREG" class="btn btn-warning">NEW ALUMINI</a></td><td><a href="stuLogin" class="btn btn-warning">STUDENT LOGIN</a></td><td><a href="STUDENTREG" class="btn btn-warning">NEW STUDENT</a></td>
</tr>
</table></CENTER></div>
<h1>Student registration</h1>
<form action="studentupdate" method="post">
<table>
<tr><td>STUDENT ROLLNO</td><td><input type="text" name="sroll"></td></tr>
<tr><td>STUDENT NAME</td><td><input type="text" name="sname"></td></tr>
<tr><td>COLLAGE NAME</td><td><input type="text" name="cname"></td></tr>
<tr><td>YEAR OF PASSOUT</td><td><input type="text" name="yop"></td></tr>
<tr><td>MOBILE NO</td><td><input type="text" name="mbl"></td></tr>
<tr><td>MAIL ID</td><td><input type="text" name="mid"></td></tr>
<tr><td>USERNAME</td><td><input type="text" name="usr"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass"></td></tr>
<tr><td>ADD IT SKILL</td><td><select name="SKILLS" id="SKILLS">
    <option value="JAVA FULL STACK">JAVA FULL STACK</option>
    <option value="C">C</option>
    <option value="PYTHON">PYTHON</option>
    <option value="C#">C#</option>
    <option value="ASP.NET">ASP.NET</option>
  </select></td></tr>
<tr><td>ENTER LANGUAGES</td><td><input type="text" name="lang"></td></tr>
<tr><td><input type="submit" value="SUBMIT" class="btn btn-outline-success"></td></tr>
</table>
</form>
</body>
</html>