<%@page import="java.util.ArrayList"%>
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

	<%!ArrayList<String> carNumbers=new ArrayList<String>();
		static int i=0;%>
	<% try{
	carNumbers.add(0,"MH-707");
	carNumbers.add(1,"DD-708");
	carNumbers.add(2,"MP-709");
	carNumbers.add(3,"GA-810");
	carNumbers.add(4,"GJ-711");
	carNumbers.add(5,"RJ-712");
	carNumbers.add(6,"DD-713");
	carNumbers.add(7,"DD-714");
	carNumbers.add(8,"GJ-715");
	carNumbers.add(9,"MH-716");
	carNumbers.add(10,"GJ-717");
	carNumbers.add(11,"RJ-718");
	carNumbers.add(12,"MH-719");
	carNumbers.add(13,"DD-720");
	carNumbers.add(14,"MP-721");
	carNumbers.add(15,"GA-722");
	carNumbers.add(16,"GJ-723");
	carNumbers.add(17,"RJ-724");
	if (session.getAttribute("email") != null) {
		%>
		<jsp:include page="navCarOwner.jsp"></jsp:include>
		<%
		String carName=request.getParameter("Rent Car");
		carName=carName.substring(4).trim();
		System.out.println(carName);
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
						value='<%=carName %>' placeholder=carName required />
				</div>
				<div class="form-group">
					<label for="carNo1" class="label label-primary"
						style="color: white; font-size: medium;">Car Number</label> <input
						type="text" class="form-control" name="carNo" id="carNo1"
						value='<%=carNumbers.get(i++) %>' placeholder="CarNo" required />
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
	<%
	} else {
	%>
	<script>
		function run() {
			alert('Login again');
		}
		run();
	</script>
	<jsp:include page="navCarOwner.jsp"></jsp:include>
	<h1>Please Login Again</h1>
	<%
	}
	}
	catch(Exception e){
		request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
		%>
	<h1>Shortage of New car identities</h1>
	<%
	}
	%>
</body>
</html>