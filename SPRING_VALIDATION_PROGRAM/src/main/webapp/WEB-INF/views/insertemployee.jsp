<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Insert title here</title>
<style type="text/css">
table,tr,td{
border:solid 1px;
border-collapse: collapse;
}
.in{
border:none;
}
.error{
color: red;
border:none;
}
</style>
</head>
<body>

<form:form action="saveEmp" method="post" modelAttribute="employee">
<h3 class="p-3 mb-2 bg-primary text-white">EMPLOYEE RECORD MANAGEMENT SYSTEM</h3>
<table class="table table-striped">
<tr>
<td>EMPLOYEE ID</td>
<td><form:input path="id" cssClass="in"/></td>
<td><form:errors path="id" cssClass="error"/></td>
</tr>
<tr>
<td>EMPLOYEE NAME</td>
<td><form:input path="name" cssClass="in"/></td>
<td><form:errors path="name" cssClass="error"/></td>
</tr>
<tr>
<td>EMPLOYEE SALARY</td>
<td><form:input path="salary" cssClass="in"/></td>
<td><form:errors path="salary" cssClass="error"/></td>
</tr>
<tr>
<td>EMPLOYEE ADDRESS</td>
<td><form:input path="Address" cssClass="in"/></td>
<td><form:errors path="Address" cssClass="error"/></td>
</tr>
<tr>
<td colspan="2"><center><input type="submit" value="ADD EMPLOYEE"></center></td>
</tr>
</table>
</form:form>


</body>
</html>