<%@page import="product.productDTO"%>
<%@page import="java.util.ArrayList"%>
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
	productDAO dao = new productDAO();

	ArrayList<productDTO> list= dao.SelectAll();
	
%>
<br>
<br>
<br>

<div align="center">
	<table id="table1">
		<tr class="t1">
			<td>아이디</td>
			<td>상품제목</td>
			<td>상품설명</td>
			<td>가격</td>
		</tr>
		<%
			if(list.size()==0){
		%>
		<tr class="t2">
			<td colspan="4">등록된 상품이 없습니다!</td>
		</tr>
		<%
			}else{
				productDTO dbdto = null;
				for(int i=0;i<list.size();i++){
					dbdto = list.get(i);
		%>			
			<tr class="t2">
				<td><%= dbdto.getId() %></td>
				<td><%= dbdto.getTitle() %></td>
				<td><%= dbdto.getDetail() %></td>
				<td><%= dbdto.getPrice() %>원</td>
			</tr>		
		<%			
				}	//for문 end
			}	//if~else문 end
		%>
		<tr>
			<td colspan="4"><a href="main.html">메인으로</a></td>
		</tr>
		
	</table>
</div>





</body>
</html>