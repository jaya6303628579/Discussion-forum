<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body class="p-3 mb-2 bg-warning-subtle text-warning-emphasis">
<table>
<fmt:setBundle basename="message"/>
<f:form modelAttribute="emp" action="insert" method="post">
<tr>
<td><fmt:message key="emp.insert.label.id"/> </td><td><f:input path="id"/></td>
</tr>
<tr>
<td><fmt:message key="emp.insert.label.name"/> </td><td><f:input path="name"/></td>
</tr>
<tr>
<td><fmt:message key="emp.insert.label.role"/> </td><td><f:input path="role"/></td>
</tr>
<tr>
<td><fmt:message key="emp.insert.label.salary"/> </td><td><f:input path="salary"/></td>
</tr>
<tr>
<td><fmt:message key="emp.insert.label.location"/> </td><td><f:input path="location"/></td>
</tr>
<tr><td><input class="btn btn-success" type="submit" value="UPDATE EMPLOYEE" ></td></tr>
</f:form>
</table>
</body>
</html>