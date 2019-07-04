<%@page import="product.productDTO"%>
<%@page import="product.productDAO"%>
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
	dao.Update(dto);
%>

<script type="text/javascript">
	alert(<%= dto.getId()%>+"상품이 수정되었습니다.")
</script>

<%
	response.sendRedirect("main.html");
	System.out.println("Update완료!");
%>

</body>
</html>