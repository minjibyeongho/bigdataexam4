<%@page import="product.productDTO"%>
<%@page import="product.productDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<%
	String id = request.getParameter("id");
	productDAO dao = new productDAO();
	productDTO dto = new productDTO();
	dto = dao.Select(id);
%>

<table>
	<tr>
		<td>아이디 : </td>
		<td><%= dto.getId() %></td>
	</tr>
	<tr>
		<td>상품제목 : </td>
		<td><%= dto.getTitle() %></td>
	</tr>
	<tr>
		<td>상품설명 : </td>
		<td><%= dto.getDetail() %></td>
	</tr>
	<tr>
		<td>가격 : </td>
		<td><%= dto.getPrice() %>원</td>
	</tr>
	<tr>
		<td colspan="2"><button type="button"><a href="main.html">메인으로</a></button></td>
	</tr>
</table>



</body>
</html>