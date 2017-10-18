<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple Shopping Mail</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language='JavaScript' src="script.js"></script>
</head>
<body bgcolor="#BEE5FA" topmargin="100">
	<%@ include file="Top.jsp" %>
	<table width="85%" align="center" bgcolor="#FFFF99" height = "100%">
	<%
		if(mem_id != null){
	%>
	<tr>
	<td align="center"><%=mem_id %>님 방문해 주셔서 감사합니다.</td>
	</tr>
	<%}else{ %>
	<tr>
	<td align="center">로그인 하신 후 이용해 주세요</td>	
	</tr><%} %>
	</table>
	<%@ include file="Bottom.jsp" %>
</body>
</html>