<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
	.box {
		border-style: solid;
		border-width: 3px;
		border-color: lightgrey;
		padding:50px;
	}
</style>
<title>User log on</title>
</head>
<body>
<div class="container col-5" style="margin-top: 50px"><h2 class="text-primary">Welcome to Contacts System</h2></div>
	<div class="container col-5 box" style="margin-top: 30px">
		<form:form action="logon" modelAttribute="user" method="POST">		
			<div class="form-group">
				<label for="username">User name: </label>
				<form:input class="form-control"  path="username" placeholder="username"/>
				<form:errors path="username" cssClass="text-danger"/>
				<small id="emailHelp" class="form-text text-muted">Please input your username.</small>
	  		</div>
			<div class="form-group">
				<label>Password: </label>
				<form:input path="password" class="form-control" placeholder="password"/>
				<form:errors path="password" cssClass="text-danger"/>
				<small id="emailHelp" class="form-text text-muted">Please input your password.</small>
			</div>
			<div class="form-group">
				<label>Confirm Password: </label>
				<form:input path="confirmpassword" class="form-control" placeholder="confirm password"/>
				<form:errors path="confirmpassword" cssClass="text-danger"/>
				<small id="emailHelp" class="form-text text-muted">Please confirm your password.</small>
			</div>
			<input type="submit" class="btn btn-primary" value="Register"/>		
		</form:form>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" ></script>
</body>
</html>