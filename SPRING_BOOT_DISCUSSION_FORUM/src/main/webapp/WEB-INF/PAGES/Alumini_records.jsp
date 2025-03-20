<%@page import="java.util.List"%>
<%@page import="com.nit.model.Alumini"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script type="text/javascript">
function del(id){
	if(confirm("DO U WANT TO DELETE THIS STUDENT  ??")){
		document.frm.id.value=id;
		document.frm.action="Adelete";
		document.frm.method="POST";
		document.frm.submit();
	}
}
</script>
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
<td><a href="AdminHome" class="btn btn-warning">HOME</a></td><td><a href="Aluminiinfo" class="btn btn-warning">ALUMINI INFO</a></td><td><a href="STUDENTPROFILE" class="btn btn-warning">STUDENT PROFILES</a></td><td><a href="jobs" class="btn btn-warning">POST JOBS</a></td><td><a href="logout1" class="btn btn-warning">LOGOUT</a></td>
<td><a href="query" class="btn btn-warning">POST QUESTION</a></td>
</tr>
</table></CENTER></div>

<H3>Alumini personal information</H3>
<%
List<Alumini> li=(List<Alumini>)request.getAttribute("li");
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
<th>ACTION</th>
</tr>
<form name="frm">
<input type="hidden" name="id">
<tr>
<%
if(li!=null){
for(Alumini s: li){
%>
<td><%=s.getRegNo() %></td>
<td><%=s.getCompanyName() %></td>
<td><%=s.getBussinessType() %></td>
<td><%=s.getAluminiName() %></td>
<td><%=s.getGender() %></td>
<td><%=s.getAge() %></td>
<td><%=s.getGmail() %></td>
<td><%=s.getSkills() %></td>
<td><%=s.getMobileno() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getUsername() %></td>
<td><button onclick="del('<%=s.getRegNo()%>')" class="btn btn-success">DELETE</button></td>
</tr>
<%}} %>
</table>

</form>

</body>
</html>