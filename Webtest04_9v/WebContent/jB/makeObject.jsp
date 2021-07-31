<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="member" scope="request"
	class="ez2.member.MemberInfo"/>
<%
	member.setId("kwon");
	member.setName("taemin");
%>
<jsp:forward page="./useObject.jsp"/>