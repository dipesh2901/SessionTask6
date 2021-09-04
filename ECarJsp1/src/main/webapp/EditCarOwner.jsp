<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecar.beans.*"%>
<%@page import="com.ecar.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%String sid=request.getParameter("id").trim();
int id=Integer.parseInt(sid);
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String smobile=request.getParameter("mobile");
long mobile=Long.parseLong(smobile);
CarOwnerBean bean=new CarOwnerBean(id,name, email, password, mobile);
CarOwnersDao.update(bean);
response.sendRedirect("ViewCarOwner.jsp"); %>
</body>
</html>