<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String sid = request.getParameter("id");
	int id = Integer.parseInt(sid);
	CarOwnersDao.delete(id);
	response.sendRedirect("ViewCarOwner.jsp");
	%>
</body>
</html>