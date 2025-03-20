<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STUDENT LOGIN</title>
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
        color:red;
        }
        img{
         height: 150px;
        width: 150px;
        border-radius: 40px;
        }
       div{
       display: flex;
       }
       h2{
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
<h2>STUDENT LOGIN</h2>
<div>
<div><img src="https://img6.arthub.ai/64fc84b6-7908.webp"> </div>
<div>
<form action="log" METHOD="post">
<%
String in=(String)request.getAttribute("s");
if(in!=null)
{
	out.println("<h4>Invalid Login!!</h4>");	
}
%>
<table>
<tr><td>USERNAME</td><td><input type="text" name="usr" placeholder="enter username"></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass" placeholder="enter password"></td></tr>
<tr><td><input type="submit" value="LOGIN" class="btn btn-outline-warning"></td></tr>
</table>
</form>
</div>
</div>
</body>
</html>