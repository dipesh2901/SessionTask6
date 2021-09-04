<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">eCar Rental</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav nav-pills">
        <li><a href="index.jsp" class="active">Home</a></li>
        <li><a onclick="run()">Admin</a></li>
        <li><a onclick="run()">Car Owner</a></li>
        <li><a href="BasicCarShowroom.jsp">Car Showroom</a></li>
        <li><a href="Aboutus.jsp">About Us</a></li>
        <li><a href="Contactus.jsp">Contact Us</a></li>
       </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>