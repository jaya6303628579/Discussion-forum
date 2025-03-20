<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.nit.model.Emp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="p-3 mb-2 bg-warning-subtle text-warning-emphasis">
<table class="table table-hover">
<tr>
<th>ID</th>
<th>NAME</th>
<th>ROLE</th>
<th>SALARY</th>
<th>LOCATION</th>
<%
Emp e=(Emp)request.getAttribute("employee");
%>
<tr>
<td><% out.println(e.getId());%></td>
<td><% out.println(e.getName());%></td>
<td><% out.println(e.getRole());%></td>
<td><% out.println(e.getSalary());%></td>
<td><% out.println(e.getLocation());%></td>
</tr>
</table>
</body>
</html>