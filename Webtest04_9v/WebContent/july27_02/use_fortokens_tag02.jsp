<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>forTokens태그</title>
</head>
<body>
콤마와 점을 구분자로 사용: <br>
<c:forTokens var="token"
			items="빨강, 주황, 노란, 초록. 파랑. 남색. 보라"
			delims=",.">
${token}
</c:forTokens>
</body>
</html>