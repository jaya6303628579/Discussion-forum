<%@ page import="com.nit.model.Student" %>
<%@ page import="com.nit.model.Postjob" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@taglib prefix="c" uri="jakarta.tags.core" %>
    <%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOBS LIST</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">
body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
         .nav{
        padding-top:50px;
        padding-left:25%;
        
        }
        td{
        padding:20px;
        }
</style>
<script type="text/javascript">
function del(id){
	if(confirm("DO U WANT TO DELETE THIS STUDENT  ??")){
		document.frm.id.value=id;
		document.frm.action="Pdelete";
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
<%
List<Postjob> li=(List<Postjob>)request.getAttribute("li");
%>
<table class="table table-striped table-hover">
<tr>
<th>JOB ID</th>
<th>COMPANY NAME</th>
<th>CONTACT NO</th>
<th>ADDRESS</th>
<th>JOB LOCATION</th>
<th>VACANCY</th>
<th>JOB TITLE</th>
<th>PROGRAMMING SKILLS</th>
<th>WEBSITE</th>
<th>ACTION</th>
</tr>

<form name="frm">
<input type="hidden" name="id">

<tr>
<%
if(li!=null){
for(Postjob s: li){
%>
<td><%=s.getId()%></td>
<td><%=s.getCompanyName() %></td>
<td><%=s.getMobileNo() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getJobLocation() %></td>
<td><%=s.getVacancy() %></td>
<td><%=s.getJobTitle() %></td>
<td><%=s.getSkills() %></td>
<td><a href="${s.getSite()} "><%=s.getSite()%></a></td>
<td><button onclick="del('<%=s.getId()%>')" class="btn btn-success">DELETE</button></td>
</tr>
<%} }%>
</table>
</form>
</body>
</html>