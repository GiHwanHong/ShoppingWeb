<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, shop.dbcp.*" %>
<jsp:useBean id="proMgr" class="shop.dbcp.ProductMgr"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple Shopping Mail Admin</title>
<link href="../style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
<%@ include file="../Top.jsp" %>
<table width="75%" align="center" bgcolor="#FFFF99">
<tr>
<td align="center" bgcolor = "#FFFFCC">
<table width = "95%" align="center" bgcolor="#FFFF99" border="1">
<tr bgcolor="#996600">
<td align="center"><font color="#FFFFFF">이름</font></td>
<td align="center"><font color="#FFFFFF">가격</font></td>
<td align="center"><font color="#FFFFFF">날짜</font></td>
<td align="center"><font color="#FFFFFF">재고</td>
<td align="center">&nbsp;</font></td>
</tr>
<%
	Vector vResult = proMgr.getProductList();
	if(vResult.size() == 0){
%>
<tr>
<td align="center" colspan="5">등록된 상품이 없습니다.</td>
</tr>
<% }else{
	for(int i=0;i<vResult.size();i++){
		ProductBean product = (ProductBean)vResult.get(i);
%>
<tr>
<td align="center"><%=product.getName() %></td>
<td align="center"><%=product.getPrice()%></td>
<td align="center"><%=product.getDate() %></td>
<td align="center"><%=product.getStock() %></td>
<td align="center"><a href="javascript:productDetail('<%=product.getNo() %>')">상세보기</a></td>
</tr>
<%}} %>
<tr>
<td colspan="5" align="center"><a href ="ProdectInsert.jsp">상품등록</a></td>
</tr>
</table>
<%@ include file="../Bottom.jsp" %>
<form name ="detail" method="post" action="ProductDetail.jsp">
<input type="hidden" name="no">
</form>
</body>
</html>