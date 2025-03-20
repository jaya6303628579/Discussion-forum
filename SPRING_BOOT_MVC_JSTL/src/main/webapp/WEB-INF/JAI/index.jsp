<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="salary" value="${1000}"/>
THE SALARY IS : <c:out value="${salary}"/>
<c:remove var="salary"/>
THE SALARY IS : <c:out value="${salary}"/><br>
<c:catch var="e">
<% int a=10/0; %>
</c:catch>
EXCEPTION : <c:out value="${e}"/><br>
MESSAGE :<c:out value="${e.message}"></c:out>
<c:if test="${10>2}"><br>
<c:out value="10 is a greater"/>
</c:if><br>
<c:set var="num" value="${10}"/>
<c:choose>
<c:when test="${num==2}">
<c:out value="10 is a greater"/>
</c:when>
<c:when test="${(num==2)}">
<c:out value="10 is not a greater"/>
</c:when>
<c:otherwise>
<c:out value="bye bye jagan"></c:out>
</c:otherwise>
</c:choose>
</body>
</html>