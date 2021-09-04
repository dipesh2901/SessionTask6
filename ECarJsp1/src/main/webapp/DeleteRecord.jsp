<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecar.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>You have Successfully Deleted the record</h1>
<%CarDao.deleteCar(request.getParameter("id"));
response.sendRedirect("ViewRentedCar.jsp"); %>
</body>
</html>