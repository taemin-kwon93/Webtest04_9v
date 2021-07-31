<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<meta charset="EUC-KR">
<title>표현언어 Expression Language 예제</title>
</head>
<body>
<h3>Expression Language 예제</h3>
<p>
연산자를 사용한 예와 내장객체 사용한 예:
<table border="1">
<thead>
<td><b>표현식</b></td>
<td><b>값</b></td>
</thead>
<tr>
	<td>\${2+5}</tr>
	<td>${2+5}</td>
</tr>
<tr>
	<td>\${4/5}</td>
	<td>${4/5}</td>
</tr>
<tr>
	<td>\${5 div 6}</td>
	<td>${5 div 6 }</td>
</tr>
<tr><!--(modulo) 나머지(영어: remainder)는 산술에서 두 정수의 나눗셈 이후, 
온전한 정수 몫으로 표현할 수 없이 남은 양을 가리킨다. 잉여(剩餘)라고도 한다. -->
	<td>\${5 mod 7}</td>
	<td>{5 mod 7}</td>
</tr>
<tr>
	<td>\${2 < 3}</td>
	<td>${2 < 3}</td>
</tr>
<tr>
	<td>\${2 gt 3}</td>
	<td>${2 gt 3}</td>
</tr>
<tr>
	<td>\${3.1 le 3.2}</td>
	<td>${3.1 le 3.2}</td>
</tr>
<tr>
	<td>\${(5 > 3) ? 5 : 3}</td>
	<td>${(5 > 3) ? 5 : 3}</td>
</td>
<tr>
	<td>\${header.host.}</td>
	<td>${header.host}</td>
</tr>
<tr>
	<td>\${header["user-agent"]}</td>
	<td>${header["user-agent"]}</td>
</tr>
	</table>
</body>
</html>