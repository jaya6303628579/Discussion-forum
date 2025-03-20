<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Question</title>
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
        th{
        padding-left: 20px;
        }
        .s{
        width: 50px;
        }
        
</style>
</head>
<body>
<div class="nav">
<CENTER><table>
<tr>
<td><a href="home" class="btn btn-warning">HOME</a></td><td><a href="stuprofile" class="btn btn-warning">STUDENT PROFILE</a></td><td><a href="postjob" class="btn btn-warning">POST JOB</a></<td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
<td><a href="query" class="btn btn-warning">POST QUESTION</a></td>
</tr>
</table></CENTER></div>
<h3>PLEASE TYPE YOUR QUESTIONS TO STUDENTS</h3>
<table>
<form action="postQuestion" Method="post">
<tr><th>SERIAL NO</th><th>QUESTION</th></tr>
<tr>
<td><input type="number" name="no" class="s"></td>
<td>
<textarea name="pq">enter your questions</textarea>
</td>
<td><input type="submit" value="SEND" class="btn btn-outline-success"></td>
</tr>
</form>


</table>
</body>
</html>