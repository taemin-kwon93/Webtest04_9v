<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<html>
<head>
<meta charset="EUC-KR">
<title>Expression Language Example02</title>
</head>
<body>
<h3>표현언어 예제2</h3>
<form action="eLEx2_02.jsp" method="post">
이름 : <input type="text" name="name" value="${param.name}">
<input type="submit" value="확인">
</form>
이름은: ${param.name} 입니다.<br>
이름은: <%=request.getParameter("name") %> 입니다.
</body>
</html>