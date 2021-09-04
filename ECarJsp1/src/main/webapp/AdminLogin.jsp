<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	if (email.equals("admin@admin.com") && password.equals("admin123")) {
		session.setAttribute("admin", "true");
		request.getRequestDispatcher("navAdmin.jsp").include(request, response);
		request.getRequestDispatcher("admincarousel.jsp").include(request, response);
		%>
	<jsp:include page="footerAdmin.html"></jsp:include>
	<%
	} else {
	
	request.getRequestDispatcher("navHome.jsp").include(request, response);
	%>
	<h1>Username or Password Error</h1>
	<%
	request.getRequestDispatcher("AdminLoginForm.jsp").include(request, response);
	}
	%>

</body>
</html>