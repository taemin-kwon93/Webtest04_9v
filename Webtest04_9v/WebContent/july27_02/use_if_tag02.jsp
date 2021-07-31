<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="EUC-KR">
<title>if 태그</title>
</head>
<body>
<c:if test="true">
무조건수행</c:if><br>
<c:if test="${param.name=='bk'}">
${param.name}이 이름</c:if>
<c:if test="${param.age>18}">
${param.age}살 이니깐 어른이네 열심히살자 ㅠ^ㅠ</c:if>
</body>
</html>