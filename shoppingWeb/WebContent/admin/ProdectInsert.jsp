<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<table width = "75%" align="center" bgcolor="#FFFF99">
<tr>
<td align ="center" bgcolor="#FFFFCC">
	<form method="post" action="ProductProc.jsp?flag=insert" enctype="multipart/form-data">
	<table width="95%" align="center" bgcolor="#FFFF99" border="1">
	<tr bgcolor="#996600">
	<td colspan="2" align="center"><font color="#ffffff">상품 등록</font></td>
	</tr>
	<tr>
	<td align="center">상품 이름</td>
	<td align="left"><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
	<td align="center">상품 가격</td>
	<td align="left"><input type="text" name="price" size="20">원</td>
	</tr>
	<tr>
	<td align="center">상품 설명</td>
	<td><textarea cols="45" rows="10" name="detail"></textarea></td>
	</tr>
	<tr>
	<td align="center">상품 수량</td>
	<td><input type="text" name="stock" size="10">개</td>
	</tr>
	<tr>
	<td align="center">상품 이미지</td>
	<td><input type="file" name="image"></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="상품등록">&nbsp;&nbsp;&nbsp;
	<input type="reset" value="다시쓰기">
	</td>
	</tr>
	</table>
	</form>
	</td>
</tr>
</table>
<%@ include file = "../Bottom.jsp" %>

</body>
</html>