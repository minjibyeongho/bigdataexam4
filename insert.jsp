<%@page import="product.productDAO"%>
<%@page import="product.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dto" class="product.productDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	productDAO dao = new productDAO();
	dao.Insert(dto);	//insert OK
%>
	<script type="text/javascript">
		alert("상품이 등록되었습니다!");
		location.href = "main.html";
	</script>
<%
	System.out.println("Insert 완료!");
%>





</body>
</html>