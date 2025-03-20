<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="jakarta.tags.core" %>
    <%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style type="text/css">
table,th,tr,td{
border:1px solid;
border-collapse: collapse;
text-align: center;
}
</style>
<script type="text/javascript">
function editemp(id) {
	if(confirm("Do you want edit??"))
	{
		document.frm.id.value = id;
		document.frm.action = "edit";
		document.frm.method = "POST";
		document.frm.submit();
	}
	
}
function del(id){
	if(confirm("DO U WANT TO DELETE THIS ??")){
		document.frm.id.value=id;
		document.frm.action="delete";
		document.frm.method="POST";
		document.frm.submit();
	}
}
</script>
</head>
<body class="p-3 mb-2 bg-warning-subtle text-warning-emphasis">
<a href="addemployee" class="btn btn-warning">ADD EMPLOYEE</a><br><br><br>
<form name="frm">
<input type="hidden" name="id">
<table width=100%;>
<tr>
<th>ID</th>
<th>NAME</th>
<th>ROLE</th>
<th>SALARY</th>
<th>LOCATION</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<c:forEach items="${e}" var="emp">
<tr>
<td><c:out value="${emp.id}"/></td>
<td><c:out value="${emp.name}"/></td>
<td><c:out value="${emp.role}"/></td>
<td><c:out value="${emp.salary}"/></td>
<td><c:out value="${emp.location}"/></td>
<td><button onclick="editemp(${emp.id})" class="btn btn-success">EDIT</button></td>
<td><button onclick="del(${emp.id})" class="btn btn-success">DELETE</button> </td>
</tr>
</c:forEach>

</table>
</form>
</body>
</html>