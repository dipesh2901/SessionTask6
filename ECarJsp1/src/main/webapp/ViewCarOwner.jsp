<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecar.beans.*" %>
     <%@page import="com.ecar.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>body{background-color:lightblue;}</style>
</head>
<body>
<%if(session.getAttribute("admin")!=null) {
	request.getRequestDispatcher("navAdmin.jsp").include(request, response); %>
	<div class='container'>
	<%List<CarOwnerBean> list=CarOwnersDao.view(); %>
	<table class='table table-bordered table-striped table-hover'>
	<tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Mobile</th><th>Edit</th><th>Delete</th></tr>
	<%for(CarOwnerBean bean:list){ %>
	<tr><td>
	<%=bean.getId() %>
	</td><td>
	<%=bean.getName() %>
	</td><td>
	<%=bean.getEmail() %>
	</td><td>
	<%=bean.getPassword() %>
	</td><td>
	<%=bean.getMobile() %>
	</td><td><a href='EditCarOwnerForm.jsp?id=<%=bean.getId() %>'>Edit</a></td><td><a href='DeleteCarOwner.jsp?id=
	<%=bean.getId() %>
	'>Delete</a></td></tr>
	<%} %>
	</table>
	</div>
	<jsp:include page="footer.html"></jsp:include>
	<%}
else { %>
<script>function run(){alert('Login again');} run();</script>
<%request.getRequestDispatcher("navAdmin.jsp").include(request, response); %>
<h1>Login Again!!!</h1>
<%} %>
	
</body>
</html>