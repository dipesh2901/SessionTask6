<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>body{background-color:lightblue;}</style>
<% request.getRequestDispatcher("navAdmin.jsp").include(request, response);
   session=request.getSession();
		if(session.getAttribute("admin")!=null) {%>
<div align="center">
	<h1 style="color: #B22222">Add Car Owner</h1>
	<form action="AddCarOwner.jsp" method="post"
		style="width: 300px; background-color: #2F4F4F; border-radius: 25px">
		<div class="form-group">
			<label class="label label-info"
				style='color: white; font-size: medium;' for="name1">Name</label> <input
				type="text" class="form-control" name="name" id="name1"
				placeholder="Name" required />
		</div>
		<div class="form-group">
			<label class="label label-primary"
				style='color: white; font-size: medium;' for="email1">Email
				address</label> <input type="email" class="form-control" name="email"
				id="email1" placeholder="Email" required />
		</div>
		<div class="form-group">
			<label class="label label-warning"
				style='color: white; font-size: medium;' for="password1">Password</label>
			<input type="password" class="form-control" name="password"
				id="password1" placeholder="Password" required />
		</div>
		<div class="form-group">
			<label class="label label-danger"
				style='color: white; font-size: medium;' for="mobile1">Mobile
				Number</label> <input type="number" class="form-control" name="mobile"
				id="mobile1" placeholder="Mobile" required />
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
</div>
<jsp:include page="footer.html"></jsp:include>
<%}
		else {%>
<script>function run(){alert('Login again');} run();</script>
<h1>Login Again!!</h1>
<%}%>