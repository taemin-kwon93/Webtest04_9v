<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>choose 태그</title>
</head>
<body>
<ul>
<c:choose>
<c:when test="${param.name=='taemin'}">
<li>당신의 이름은 ${param.name}입니다.
</c:when>
<c:when test="${param.age >= 20}">
<li>당신은 20세 이상입니다.
</c:when>
<c:otherwise>
<li>당신은 ${param.name}이 아니고 ${param.age}세 이상이 아닙니다.
</c:otherwise>
</c:choose>
</ul>
</body>
</html>