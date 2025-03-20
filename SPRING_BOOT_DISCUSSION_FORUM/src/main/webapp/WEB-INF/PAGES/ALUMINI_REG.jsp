<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ALUMINI REGISTER</title>
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
<h1>Alumini Registration</h1>
<form action="aluminiupdate" method="post">
<table>
<tr><td>ALUMINI REGNO</td><td><input type="text" name="aroll"></td></tr>
<tr><td>COMPANY NAME</td><td><input type="text" name="cname"></td></tr>
<tr><td>BUSSINESS TYPE</td><td><input type="text" name="btype"></td></tr>
<tr><td>ALUMINI NAME</td><td><input type="text" name="aname"></td></tr>
<tr><td>GENDER</td><td><input type="radio" name="G" value="MALE"> MALE <input type="radio" name="G" value="Female"> FEMALE</td></tr>
<tr><td>AGE</td><td><input type="text" name="age"></td></tr>
<tr><td>EMAIL</td><td><input type="text" name="mid"></td></tr>
<tr><td>ADD IT SKILL</td><td><select name="SKILLS" id="SKILLS">
    <option value="JAVA FULL STACK">JAVA FULL STACK</option>
    <option value="C">C</option>
    <option value="PYTHON">PYTHON</option>
    <option value="C#">C#</option>
    <option value="ASP.NET">ASP.NET</option>
  </select></td></tr>
<tr><td>MOBILENO</td><td><input type="text" name="mobile"></td></tr>
<tr><td>ADDRESS</td><td><input type="text" name="address"></td></tr>
<tr><td>USERNAME</td><td><input type="text" name="user"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass"></td></tr>
<tr><td><input type="submit" value="SUBMIT" class="btn btn-outline-success"></td></tr>
</table>
</form>
</body>
</html>