<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css"/>
<style>
#h1:hover{
 transform: translateX(30px);
}
label{
font-size:large;
}

body{
background-image:url("images/carImage1.jpg");
background-repeat: no-repeat;
background-position: top;
background-size: cover;

}
</style>
<script>
function run(){
	alert("Please Login First!!!");
}
function customerLogin() {
// 	const customers=["dipesh","jaydeep","hitesh","suruchi"];
// 	const custPass=["Dipesh29","Jaydeep29","Hitesh29","Suruchi29"];
// 	var name=window.prompt("Enter your Name:");
// 	var pass=window.prompt("Enter your Password:");
// 	for(const value in customers){
// 		if(name===const){
// 			for(const passValue in custPass){
// 				if(pass===passValue){
// 					window.location.href="customerLogin.jsp";
// 				}
// 			}
// 		}
// 	}
}
</script>
</head>
<body>


<%request.getRequestDispatcher("indexNav.jsp").include(request,response); %>

<div class="container-fluid">
<h1 id="h1" style='color:black'><span class="bg bg-info">eCar Rental</h1>

<div class="row">
  <div class="col-md-6">
  <h2 style='color:black;font-weight:bolder;'><span class="bg bg-danger">Admin Login</span></h2>
  <form action="AdminLogin.jsp" method="post" style="width:300px">
  <div class="form-group">
    <label for="email1" class="label label-info" style="font-size: medium;"">Email address</label>
    <input type="email" class="form-control" name="email" id="email1" placeholder="Email" required/>
  </div>
  <div class="form-group">
    <label class="label label-primary" style="font-size: medium;" for="password1" required>Password</label>
    <input type="password" class="form-control" name="password" id="password1" placeholder="Password"/>
  </div>  
  <button type="submit" class="btn btn-success">Login</button>
    <button type="reset" class="btn btn-danger">Reset</button>
</form>
  
  </div>
  <div class="col-md-6">
  <h2 style='color:black;font-weight:bolder;'><span class="bg bg-danger">Car Owner Login</h2>
  <form action="CarOwnerLogin.jsp" method="post" style="width:300px">
  <div class="form-group">
    <label class="label label-info" style="font-size: medium;" for="email1" >Email address</label>
    <input type="email" class="form-control" id="email1" name="email" placeholder="Email"required/>
  </div>
  <div class="form-group">
    <label class="label label-primary" style="font-size: medium;" for="password1" >Password</label>
    <input type="password" class="form-control" id="password1" name="password" placeholder="Password"required/>
  </div>  
  <button type="submit" class="btn btn-success">Login</button>
  <button type="reset" class="btn btn-danger">Reset</button>
</form>
</div>
  </div>
</div>




  <script src="jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
</body>
</html>>