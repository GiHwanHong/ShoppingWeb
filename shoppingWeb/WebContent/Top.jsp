<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String mem_id = (String)session.getAttribute("idKey");

	String log="";
	if(mem_id == null) log = "<a href=Login.jsp>로그인</a>";
	else log = "<a href=Logout.jsp>로그아웃</a>";
	
	String mem="";
	if(mem_id ==null) mem="<a href=Register.jsp>회원 가입</a>";
	else mem = "<a href=MemberUpdate.jsp>회원 수정</a>";
%>
<table width="85%" align="center" bgcolor="#FFF99">
	<tr bgcolor="#FFCC00">
		<td align="center"><b><%= log %></td>
		<td align="center"><b><%= mem %></td>
		<td align="center"><b><a href="ProductList.jsp">상품목록</a></b></td>
		<td align="center"><b><a href="CartList.jsp">장바구니</a></b></td>
		<td align="center"><b><a href="OrderList.jsp">구매목록</a></b></td>
	</tr>
</table>
</body>
</html>