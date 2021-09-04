<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-color: #FDF5E6
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
<style>body{background-color:#FDF5E6}</style>
</head>
<body>

<%request.getRequestDispatcher("navCarOwner.jsp").include(request, response);
   session=request.getSession();
		if(session.getAttribute("email")!=null) {%>
	<div align="center">
<h2 style="color:#8B0000">Add Car Form</h2>
  <form action="AddCar.jsp" method="post" style="width:300px;background-color:#2F4F4F;border-radius:25px">
  <div class="form-group">
    <label class="label label-info" style="color:white;font-size:medium;" for="name1">Name</label>
    <input type="text" class="form-control" for="carNo" name="name" id="name1" placeholder="Name" required/>
  </div>
  <div class="form-group">
    <label class="label label-primary" style="color:white;font-size: medium;" for="author1">Fuel</label>
    <input type="text" class="form-control" name="fuel" id="author1" placeholder="Fuel"  required/>
  </div>
  <div class="form-group">
    <label class="label label-success" style="color:white;font-size: medium;" for="publisher1">Engine-Capacity</label>
    <input type="text" class="form-control" name="engineCapacity" id="publisher1" placeholder="Engine-Capacity" required/>
  </div>
  <div class="form-group">
    <label class="label label-warning" style="color:white;font-size: medium;" for="quantity">Quantity</label>
    <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Quantity" required/>
  </div>
  <button type="submit" class="btn btn-danger">Save Car</button>
</form>
</div>
<jsp:include page="footer.html"></jsp:include>
<%}
		else {%>
<script>function run(){alert('Login again');} run();</script>
<h1>Login Again!!</h1>
<%}%>
</body>
</html>