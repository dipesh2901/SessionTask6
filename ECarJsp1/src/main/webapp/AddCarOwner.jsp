<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.beans.CarOwnerBean"%>
<%@page import="com.ecar.dao.CarOwnersDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>
body {
	background-color: lightblue;
}
</style>
</head>
<body>
	<%
	String regex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$";
	request.getRequestDispatcher("navAdmin.jsp").include(request, response);
	%>
	<div class='container'>
		<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String smobile = request.getParameter("mobile");
		long mobile = Long.parseLong(smobile);
		if (Pattern.matches(regex, password)) {
			CarOwnerBean bean = new CarOwnerBean(name, email, password, mobile);
			CarOwnersDao.save(bean);
		%>
		<h3>Car Owner added successfully</h3>
	</div>
	<%
	} else {
	%>
	<h2 style='color: red'>Password should have minimum 8 chars;
		minimum 1 digit, 1 lowercase, 1 uppercase, 1 special
		character[!@#$%^&*_]</h2>
	<%
	}
	%>

</body>
</html>