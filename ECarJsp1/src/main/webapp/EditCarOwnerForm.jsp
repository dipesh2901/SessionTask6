<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.ecar.beans.*" %>
		<%@page import="com.ecar.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='bootstrap.min.css' />
</head>
<body>
	<%
	request.getRequestDispatcher("navAdmin.jsp").include(request, response);
	%>
	<div class='container'>
		<%
		String sid = request.getParameter("id");
		int id = Integer.parseInt(sid);

		CarOwnerBean bean = CarOwnersDao.viewById(id);
		%>
		<form action='EditCarOwner.jsp' style='width: 300px'>
			<div class='form-group'>
				<input type='hidden' name='id' value='
<%=bean.getId()%>
' /> <label
					for='name1'>Name</label> <input type='text' class='form-control'
					value='
<%=bean.getName()%>
' name='name' id='name1'
					placeholder='Name' />
			</div>
			<div class='form-group'>
				<label for='email1'>Email address</label> <input type='email'
					class='form-control' value='
<%=bean.getEmail()%>
' name='email'
					id='email1' placeholder='Email' />
			</div>
			<div class='form-group'>
				<label for='password1'>Password</label> <input type='password'
					class='form-control' value='
<%=bean.getPassword()%>
'
					name='password' id='password1' placeholder='Password' />
			</div>
			<div class='form-group'>
				<label for='mobile1'>Mobile Number</label> <input type='text'
					class='form-control' value='
<%=bean.getMobile()%>

'
					name='mobile' id='mobile1' placeholder='Mobile' />
			</div>
			<button type='submit' class='btn btn-primary'>Update</button>
		</form>
	</div>

</body>
</html>