<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>
body {
	background-color: #FAF0E6;
}
</style>
</head>
<body>
	<%if(session.getAttribute("email")!=null) {
	request.getRequestDispatcher("navCarOwner.jsp").include(request, response); %>
	<div class='container'>
		<div align="center">
			<h2 style='color: green'>Return Car Form</h2>
			<form action="ReturnCar.jsp" method="post"
				style='width: 400px; background-color: #2F4F4F; border-radius: 25px'>
				<div class="form-group">
					<label class="label label-info"
						style='color: white; font-size: medium;' for="carNo">Car
						No</label> <input type="text" class="form-control" name="carNo"
						id="carNo1" placeholder="carNo" required />
				</div>
				<div class="form-group">
					<label class="label label-success"
						style='color: white; font-size: medium;' for="carName">Car
						Name</label> <input type="text" class="form-control" name="carName"
						id="carName1" placeholder="carName" required />
				</div>
				<div class="form-group">
					<label class="label label-primary"
						style='color: white; font-size: medium;' for="customerid1">Customer
						Id</label> <input type="text" class="form-control" name="customerId"
						id="customerid1" placeholder="customerid" required />
				</div>
				<button type="submit" class="btn btn-danger">Return Car</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
	<%}
	else { %>
	<script>function run(){alert('Login again');} run();</script>
	<%request.getRequestDispatcher("navCarOwner.jsp").include(request, response); %>
	<h1>Please Login Again</h1>
	<%} %>
</body>
</html>