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
        padding-left:20%;
        }
        td{
        padding:20px;
        }
    
</style>
<script type="text/javascript">
function del(id){
	if(confirm("DO U WANT TO DELETE THIS STUDENT  ??")){
		document.frm.id.value=id;
		document.frm.action="Sdelete";
		document.frm.method="POST";
		document.frm.submit();
	}
}
</script>
</head>
<body>
<div class="nav">
<CENTER><table>
<tr>
<td><a href="AdminHome" class="btn btn-warning">HOME</a></td><td><a href="Aluminiinfo" class="btn btn-warning">ALUMINI INFO</a></td><td><a href="STUDENTPROFILE" class="btn btn-warning">STUDENT PROFILES</a></td><td><a href="jobs" class="btn btn-warning">POST JOBS</a></td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
</tr>
</table></CENTER></div>
<center><h2>Students information</h2></center>
<h3>Students Records</h3>
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
<th>ACTIONS</th>
</tr>
<form name="frm">
<input type="hidden" name="id">
<%
if(li!=null){
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
<td><button onclick="del('<%=s.getsRoll()%>')" class="btn btn-success">DELETE</button></td>
</tr>
<%} }

%>
</form>
</table>
</body>
</html>