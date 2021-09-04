<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@page import="com.ecar.dao.CarOwnersDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css'/>
</head>
<body>
<%  String email = request.getParameter("email");
	String password = request.getParameter("password");
	System.out.print("here");
	if (CarOwnersDao.authenticate(email, password)) {
			session = request.getSession();
			session.setAttribute("email", email);
			request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
			request.getRequestDispatcher("CarOwnerCarousel.jsp").include(request, response);
		} else {
			request.getRequestDispatcher("navHome.jsp").include(request, response);
			request.getRequestDispatcher("carOwnerLoginForm.jsp").include(request, response);
		}
		
	%>
</body>
</html>