<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>catch태그</title>
</head>
<body>
<q.catch var="ex">
name 파라미터의 값 = <%=request.getParameter("name") %>
<% if(request.getParameter("name").equals("test")){ %>
${param.name}은 test입니다.
<%}%>
</q.catch>
<p>
<q:if test="${ex != null}">
예외발생<br>
${ex}
</q:if>
</body>
</html>