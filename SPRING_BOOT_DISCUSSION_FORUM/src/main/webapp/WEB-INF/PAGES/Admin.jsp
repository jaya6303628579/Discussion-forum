<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

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
        h4{
        color: red;
        }
        div{
       	display: flex;
        }
        img{
        border-radius: 40%;
        }
        h2,header{
        text-align: center;
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
<h2>ADMIN LOGIN</h2>
<% String in=(String)request.getAttribute("invalid") ;
String pass=(String)request.getAttribute("s");

%>

<% 
 if(in!=null)
{
	out.println("<h4>Invalid Login!!</h4>");	
}
%>
<div class="header">
<div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSd9WXCCrmw4e8fyf77ciExZkNTrUtSLYKl3w&s"></div>
<div>
<form action="ADMINLOG" method="post">
<table>
<tr>
<td>USERNAME</td><td><input type="text" name="usr"></td>
</tr>
<tr>
<td>PASSWORD</td><td><input type="password" name="pass"></td>
</tr>
<tr><td colspan="2"><input type="submit" value="SUBMIT" class="btn btn-outline-warning"></td></tr>
</table>
</form>
</div>
</div>

</body>
</html>