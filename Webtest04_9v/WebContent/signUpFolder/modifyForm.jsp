<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "ez2.logon.*" %>
<%@ include file="color.jsp" %>
<!-- Webtest03_6v -->
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkIt(){
	var userinput = eval("document.userinput");
	if(!userinput.passwd.value){
		alert("��й�ȣ�� �Է��ϼ���.");
		return false;
	}
	if(userinput.passwd.value != userinput.passwd2.value){
		alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
		return false;
	}
	if(!userinput.username.value){
		alert("����� �̸��� �Է��ϼ���.");
		return false;
	}
	if(!userinput.jumin1.value || !userinput.jumin2.value){
		alert("�ֹι�ȣ�� �Է��ϼ���.");
		return false;
	}
}
//������ȣ�� �ּ� function �߰��ϱ�
function zipCheck(){
   	url="ZipCheck.jsp?check=y";
   	window.open(url,"post","toolbar=no ,width=500 ,height=300 ,directories=no,status=yes,scrollbars=yes,menubar=no");
} //function zipCheck()
</script>
<%
	String id = (String)session.getAttribute("memId");
	if(request.getParameter("id") == null) {
		id = (String)session.getAttribute("memId");
	}else{
		id = request.getParameter("id");
	}
	LogonDBBean manager = LogonDBBean.getInstance();
	LogonDataBean c = manager.getMember(id);

	
	try{
%>
</head>
<body bgcolor="<%=bodyback_c %>">
<form action="modifyPro.jsp" method="post"  name="userinput" onsubmit="return checkIt()">
<table width="600" border="1" cellspacing="0" cellpadding="3" align="center">
	<tr>
		<td colspan="2" height="39" bgcolor="<%=title_c %>" align="center">
		<font size="+1"><b>ȸ�� ��������</b></font></td>
	</tr>
	<tr>
		<td colspan="2" class="normal" align="center">ȸ�������� �����մϴ�.</td>
	</tr>
	<tr>
		<td width="200" bgcolor="<%= value_c %>"><b>���̵��Է�</b></td>
		<td width="400" bgcolor="<%=value_c %>"></td>
	</tr>
	
	<tr>
		<td width="200">����� ID</td>
		<td width="400"><%=c.getId() %></td>
	</tr>
	<tr>
	<td width="200"> ��й�ȣ</td>
	<td width="400">
	<input type="password" name="passwd" size="10" maxlength="10" value="<%=c.getPasswd() %>">
	</td>
	</tr>
	<tr>
		<td width="200" bgcolor="<%=value_c %>"><b>�������� �Է�</b></td>
		<td width="400" bgcolor="<%=value_c %>"></td>
	</tr>
	<tr>
		<td width="200">����� �̸�</td>
		<td width="400">
			<input type="text" name="name" size="15" maxlength="20" value="<%=c.getName() %>">
			</td>
	</tr>
	<tr>
	<td width="200">�ֹι�ȣ</td>
	<td width="400">
	<%=c.getJumin1() %>-<%=c.getJumin2() %>
	</td>
	</tr>
	<tr>
	<td width="200">��-Mai1</td>
	<td width="400">
	<%if(c.getEmail()==null){ %>
	<input type="text" name="email" size="40" maxlength="30">
	<%}else{%>
		<input type="text" name="email" size="40" maxlength="30" value="<%=c.getEmail() %>">
		<%}%>
		</td>
	</tr>
	<tr>
	<td width="200">Blog</td>
	<td width="400">
	<%if(c.getBlog()==null){ %>
	<input type="text" name="blog" size="60" maxlength="50" >
	<%}else{%>
	<input type="text" name="blog" size="60" maxlength="50" value="<%=c.getBlog() %>">
	<%} %>
	</td>
	</tr>
<!-- ������ȣ�� �ּ� �߰� -->
	    <tr> 
       <td width="200">������ȣ</td>
       <td> 
       <%if(c.getZipcode()==null){%>
       <input type="text" name="zipcode" size="7">
       <%}else{%>
       <input type="text" name="zipcode" size="7" value="<%=c.getZipcode() %>">
       <%}%>
               <input type="button" value="������ȣã��" onClick="zipCheck()">
               ������ȣ�� �˻� �ϼ���.</td>
          </tr>
    <tr>
    <tr> 
       <td>�ּ�</td>
       <td>
       <%if(c.getAddress()==null){%>
       <input type="text" name="address" size="70">
       <%}else{%>
       <input type="text" name="address" size="70" value="<%=c.getAddress() %>">
       <%}%>
       �ּҸ� ���� �ּ���.</td>
    </tr>
<!-- ������ȣ�� �ּ� �߰� ���� -->
	<tr>
	<td colspan="2" align="center" bgcolor="<%=value_c %>">
	<input type="submit" name="modify" value="����">
	<input type="button" value="���" onclick="javascript:window.location='main.jsp'">
	</td>
	</tr>
</table>
</form>
</body>
<%}catch(Exception e){} %>
</html>