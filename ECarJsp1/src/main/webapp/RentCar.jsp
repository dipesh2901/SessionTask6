<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.beans.IssueCarBean"%>
<%@page import="com.ecar.dao.CarDao"%>

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
		String carName = request.getParameter("carName");
		String carNo = request.getParameter("carNo");
		String customerId = request.getParameter("customerId");
		String customerName = request.getParameter("customerName");
		String customerMobile = request.getParameter("customerMobile");
		long customer_Mobile = Long.parseLong(customerMobile);

		IssueCarBean bean = new IssueCarBean(carName, carNo, customerId, customerName, customer_Mobile);
		int i = CarDao.issueCar(bean);
		if (i > 0) {
		%>
		<h3>Car issued successfully</h3>
		<%
		} else {
		%>
		<h3>Sorry, unable to give you car for rent.</h3>
		<p>The stock of car has been sold as it was in trending demand.
			Kindly visit after 24 hours.</p>
		<%
		}
		%>
	</div>
</body>
</html>