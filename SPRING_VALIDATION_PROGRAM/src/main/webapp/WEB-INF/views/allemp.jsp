<%@page import="com.nit.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 class="p-3 mb-2 bg-primary text-white">EMPLOYEE RECORD MANAGEMENT SYSTEM</h3>
<table class="table table-striped">
<tr>
<th>EMP_ID</th>
<th>EMP_NAME</th>
<th>EMP_SALARY</th>
<th>EMP_ADDRESS</th>
</tr>
<% 
List<Employee> list=(List<Employee>)request.getAttribute("li");
for(Employee emp:list){
	out.println("<tr><td>"+emp.getId()+"</td><td>"+emp.getName()+"</td><td>"+emp.getSalary()+"</td><td>"+emp.getAddress()+"</td></tr>");
}
%>
</table>
</body>
</html>