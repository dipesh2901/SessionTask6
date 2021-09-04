<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.dao.CarDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%
	request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
	%>
	<div class='container'>
		<%
		String carNo = request.getParameter("carNo");
		String carName = request.getParameter("carName");
		String customerId = request.getParameter("customerId");
		int i = CarDao.returnBook(carName, carNo, customerId);
		if (i > 0) {
		%>
		<h3>Car returned successfully</h3>
		<%
		} else {
		%>
		<h3>Sorry, unable to return Car.</h3>
		<p>This car has not been issued by the provided customerId.</p>
		<%
		}
		%>
	</div>

</body>
</html>