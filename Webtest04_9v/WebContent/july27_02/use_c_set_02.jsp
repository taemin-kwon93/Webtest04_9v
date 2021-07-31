<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="ez2.Member" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member member = new Member();
	HashMap<String, String> pref = new HashMap<String, String>();
%>
<html>
<body>
<c:set var="member" value="<%=member%>" scope="page"/>
<c:set target="${member}" property="name" value="권태민"/>
<c:set var="pref" value="<%=pref%>"/>
<c:set var="favoriateColor" value="#{pref.color}"/>
회원이름: ${member.name},
좋아하는 색: ${favoriateColor}
<br/>
<c:set target="${pref}" property="color" value="red"/>
설정 이후 좋아하는 색: ${favoriateColor}
</body>
</html>