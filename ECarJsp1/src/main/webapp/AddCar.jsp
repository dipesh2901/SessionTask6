<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.beans.*"%>
<%@page import="com.ecar.dao.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<jsp:include page="navCarOwner.jsp"></jsp:include>
	<div class='container'>
		<%
		String name = request.getParameter("name");
		String fuel = request.getParameter("fuel");
		String engineCapacity = request.getParameter("engineCapacity");
		String quantity_user = request.getParameter("quantity");
		int quantity = Integer.parseInt(quantity_user);
		CarBean bean = new CarBean(name, fuel, engineCapacity, quantity);
		int i = CarDao.save(bean);
		if (i > 0) {
		%>
		<h3>Car saved successfully</h3>
		<%
		}
		%>
	</div>


</body>
</html>