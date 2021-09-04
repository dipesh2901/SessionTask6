<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecar.beans.CarBean" %>
     <%@page import="com.ecar.dao.CarDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
<style>body{background-color:#FFEFD5;}</style>
</head>
<body>
<%if(session.getAttribute("email")!=null) {
	request.getRequestDispatcher("navCarOwner.jsp").include(request, response); %>
	<div class='container'>
	<% List<CarBean> list=CarDao.view(); %>
	<table class='table table-bordered table-striped table-hover'>
	<tr><th>Name</th><th>Fuel</th><th>Engine Capacity</th><th>Quantity</th><th>Issued</th><th>Delete</th></tr>
	<%for(CarBean bean:list){ %>
	<tr><td>
	<%=bean.getName() %>
	</td><td>
	<%=bean.getFuel() %>
	</td><td>
	<%=bean.getEngineCapacity() %>
	</td><td>
	<%=bean.getQuantity() %>
	</td><td>
	<%=bean.getIssued() %>
	</td><td><a href='DeleteCar.jsp?name=
	<%=bean.getName() %>
	'>Delete</a></td></tr>
	<%} %>
	</table>
	</div>
	<jsp:include page="footer.html"></jsp:include>
	<%}
	else { %>
	<script>function run(){alert('Login again');} run();</script>
	<%request.getRequestDispatcher("navCarOwner.jsp").include(request, response); %>
	<h1>Please Login Again</h1>
	<%} %>
	
	

</body>
</html>