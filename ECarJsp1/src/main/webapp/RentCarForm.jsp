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
	background-color: #DCDCDC;
}
</style>
</head>
<body>
	<%
	if (session.getAttribute("email") != null) {
		request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
	%>
	<div class='container'>
		<div align="center">
			<h2 style="color: #B22222">Rent Car Form</h2>
			<form action="RentCar.jsp" method="post"
				style="width: 300px; background-color: #2F4F4F; border-radius: 25px">
				<div class="form-group">
					<label for="carNo1" class="label label-info"
						style="color: white; font-size: medium;">Car Name</label> <input
						type="text" class="form-control" name="carName" id="carName1"
						placeholder="CarName" required />
				</div>
				<div class="form-group">
					<label for="carNo1" class="label label-primary"
						style="color: white; font-size: medium;">Car Number</label> <input
						type="text" class="form-control" name="carNo" id="carNo1"
						placeholder="CarNo" required />
				</div>
				<div class="form-group">
					<label for="id1" class="label label-success"
						style="color: white; font-size: medium;">Customer Id</label> <input
						type="text" class="form-control" name="customerId"
						id="customerId1" placeholder="customer Id" required />
				</div>
				<div class="form-group">
					<label for="name1" class="label label-warning"
						style="color: white; font-size: medium;">Customer Name</label> <input
						type="text" class="form-control" name="customerName"
						id="customerName1" placeholder="customer Name" required />
				</div>
				<div class="form-group">
					<label for="mobile1" class="label label-danger"
						style="color: white; font-size: medium;">Customer Mobile</label> <input
						type="number" class="form-control" name="customerMobile"
						id="customerMobile1" placeholder="customer Mobile" required />
				</div>
				<button type="submit" class="btn btn-primary">Issue Car for
					Rent</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.html"></jsp:include>
	<%
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
	<%
	}
	%>
</body>
</html>