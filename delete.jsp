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

	<%
		
		String id = request.getParameter("id");
		productDAO dao = new productDAO();
		dao.Delete(id);
	%>
		<script type="text/javascript">
			alert(<%= id%>+"정보가 삭제 되었습니다!");
		</script>
	<%
		response.sendRedirect("main.html");
		System.out.println("delete 완료!");
	%>

</body>
</html>