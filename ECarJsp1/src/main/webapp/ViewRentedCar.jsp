
<%@page import="java.util.List"%>
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
<style>
body {
	background-color: #E0FFFF;
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("email") != null) {
		request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
	%>
	<div class='container table-responsive'>
		<%
		List<IssueCarBean> list = CarDao.viewIssuedBooks();
		%>
		<table class='table table-bordered table-striped table-hover'>
			<tr>
				<th>Carno</th>
				<th>CarName</th>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Customer Mobile</th>
				<th>Issued Date</th>
				<th>Return Status</th>
				<th>Delete Record</th>
			</tr>
			<%
			for (IssueCarBean bean : list) {
			%>
			<tr>
				<td><%=bean.getCarNo()%></td>
				<td><%=bean.getCarName()%></td>
				<td><%=bean.getCustomerid()%></td>
				<td><%=bean.getCustomername()%></td>
				<td><%=bean.getCustomermobile()%></td>
				<td><%=bean.getIssueddate()%></td>
				<td><%=bean.getReturnstatus()%></td>
				<td><a href='DeleteRecord.jsp?id=<%=bean.getCustomerid() %>'>Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<jsp:include page="footer.html"></jsp:include>	<%
	} else {
	%>
	<script>
		function run() {
			alert('Login again');
		}
		run();
	</script>
	<%
	request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
	%>
	<h1>Please Login Again</h1>
	<%} %>
	
</body>
</html>