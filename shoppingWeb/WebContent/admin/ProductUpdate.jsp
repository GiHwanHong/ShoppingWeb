<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.* , shop.dbcp.*" %>
<jsp:useBean id="proMgr" class="shop.dbcp.ProductMgr"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple Shopping Mail Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor = "#996600" topmargin="100"> 

<%@ include file= "../Top.jsp"%>
<% ProductBean product = proMgr.getProduct(request.getParameter("no")); %>
<table width="75%" align="center" bgcolor="#FFFF99">
<tr>
<td align="center" bgcolor="#FFFFCC">
<form method="post" action="ProductProc.jsp?flag=update" enctype="multipart/form-data">
<table width="95%" align="center" bgcolor="#FFFF99" border="1">
<tr bgcolor = "#996600">
<td colspan="2" align="center"><font color="#FFFFFF">상품 등록</font></td>
</tr>
<tr>
<td width="31%" align="center">상품 이름 </td>
<td width="69%" align="left">
<input type="text" name="name" value="<%=product.getName()%>">
</td>
</tr>
<td height="21" align="center">상품가격</td>
<td align = "left">
</table>
</td>
</table>
</body>
</html>