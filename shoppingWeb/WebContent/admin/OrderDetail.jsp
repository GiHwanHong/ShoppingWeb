<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.* , shop.dbcp.*" %>
<jsp:useBean id = "orderMgr" class = "shop.dbcp.OrderMgr"/>
<jsp:useBean id="proMgr" class="shop.dbcp.ProductMgr "/>

<%
	OrderBean order = orderMgr.getOrderDetail(request.getParameter("no"));
	ProductBean	product = proMgr.getProduct(order.getProduct_no());

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple Shopping Mail Admin</title>
<link href = "../style.css" rel = "stylesheet" type="text/css">
<script language ="JavaScript" src = "script.js"></script>
</head>
<body bgcolor="#996600" topmargin="100">
	<%@ include file = "../Top.jsp" %>
	
	<table width = "75%" align="center" bgcolor="#FFFF99">
	<tr> 
	<td align="center" bgcolor="#FFFFCC">
	<form method="post" name = "order" action = "OrderProc.jsp">
	<table width = "95%" align = "center" bgcolor = "#FFFF99" border= "1">
	<tr bgcolor="#996600">
	<td colspan="2" align = "center"><font color="#FFFFFF">주문 상세 내역</font></td>
	</tr>
	<tr>
	<td align="center">고객아이디</td>
	<td align="center"><%=order.getId() %></td>
	</tr>
	<tr>
	<td align="center">주문번호</td>
	<td align="center"><%=order.getNo() %></td>
	</tr>
	<tr>
	<td align="center">제품번호</td>
	<td align="center"><%=product.getNo() %></td>
	</tr>
	<tr>
	<td align="center">제품이름</td>
	<td align="center"><%=product.getName() %></td>
	</tr>
	<tr>
	<td align="center">제품가격</td>
	<td align="center"><%=product.getPrice() %> 원</td>
	</tr>
	<tr>
	<td align="center">주문수량</td>
	<td align="center"><%= order.getQuantity()%></td>
	</tr>
	<tr>
	<td align="center">주문수량</td>
	<td align="center"><%= order.getQuantity() + ""%> 개 </td>
	</tr>
	<tr>
	<td align="center">재고수량</td>
	<td align="center"><%= product.getStock()%> 개 </td>
	</tr>
	<tr>
	<td align="center">금 액</td>
	<td align="center"><%= order.getQuantity() * Integer.parseInt(product.getPrice())%> 원</td>
	</tr>
	<tr>
	<td align= "center"> 주문상태 </td>
	<td align= "center">
		<select name = "state">
		<option value="1">접수중</option>
		<option value="2">접수</option>
		<option value="3">입금확인</option>
		<option value="4">배송준비</option>
		<option value="5">배송중</option>
		<option value="6">완료</option>
		</select>	
		<scipt> document.order.stat.value=<%=order.getState() %></scipt>	
	</td>
	</tr>
	<tr>
	<td colspan="2" align = "center">
	<input type="button" value="수정" size = "3" onclick="javascript:orderUpdate(this.form)"> / 
	<input type="button" value="삭제" size = "3" onclick="javascript:orderDelete(this.form)"> 
	</td>
	</tr>
	</table>
	<input type = "hidden" name = "no" value ="<%= order.getNo()%>">
	<input type = "hidden" name = "flag">
	</form>
	</td>	
	</tr>
	</table>
	<%@ include file = "../Bottom.jsp" %>
</body>
</html>