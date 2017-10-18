<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="proMgr" class="shop.dbcp.ProductMgr"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String flag = request.getParameter("flag");
	boolean result = false;
	if(flag.equals("insert")){
		result = proMgr.insertProduct(request);
	}else if(flag.equals("update")){
		// result = proMgr.updateProduct(request);
	}
	else if(flag.equals("delete")){
		// result = proMgr.deleteProduct(request);
	}else{
		response.sendRedirect("ProductMgr.jsp");
	}
	if(result){
%>
<script>
	alert("처리하였습니다.");
	location.href = "ProductMgr.jsp";
</script>
<%
	} else{ %>
	<script>
		alert("오류가 발생하였습니다.");
		location.href = "ProductMgr.jsp";
	</script>
<% }%>
<body>

</body>
</html>