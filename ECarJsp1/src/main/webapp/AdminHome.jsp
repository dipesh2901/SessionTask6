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
	if (session.getAttribute("admin") != null) {
		request.getRequestDispatcher("navAdmin.jsp").include(request, response);
		request.getRequestDispatcher("admincarousel.jsp").include(request, response);
	%><jsp:include page="footerAdmin.html"></jsp:include>
	<%
	} else {
	%>
	<script>
		function run() {
			alert('Login again');
		}
		run();
	</script>
	<h1>Login Again!!</h1>
	<%
	request.getRequestDispatcher("navAdmin.jsp").include(request, response);
	}
	%>

	<script src="jquery.min.js"></script>
	<script src="bootstrap.min.js"></script>
</body>
</html>