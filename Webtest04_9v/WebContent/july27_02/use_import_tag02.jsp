<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("euc-kr");%>
<c:choose>
	<c:when test="${param.type==youtube}">
	<c:import url="https://www.youtube.com/results">
	<c:param name="search_query" value="ryu"/>
	</c:import></c:when>

	<c:otherwise>
		<c:import url="use_import_tag_help.jsp">
			<c:param name="message" value="선택해주세요"/>
		</c:import>
	</c:otherwise>
</c:choose>