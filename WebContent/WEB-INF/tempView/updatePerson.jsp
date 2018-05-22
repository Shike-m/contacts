<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Contacts</title>
	<style type="text/css">
		.head1{			
			margin-top: 30px;
			
		} 
		#top-hr{
			margin-top: 10px;
		}
		.bottom-special{
			padding-bottom: 5px;
			margin-bottom: 5px;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2 class="head1 text-primary">Contacts list</h2>	<br><br>
		
		<form:form action="updatePerson" modelAttribute="person" method="POST">	
			<div class="form-row">		
				 <div class="col-md-5 mb-5">
						<label>First name</label>
						<form:input path="firstname"/>
				 </div>
				 <div class="col-md-5 mb-5">
						<label>Last Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
						<form:input path="lastname"/>
				 </div>
			</div>
			<div class="form-row bottom-special">
				<div class="col-md-5 mb-5">
						<label>E - mail&nbsp&nbsp&nbsp&nbsp&nbsp</label>
						<form:input path="email"/>
				</div>
				<div class="col-md-5 mb-5">
						<label>Phone number</label>
						<form:input path="phone"/>		
				</div>
			</div>	
					
						<h3 class="text-primary">The detail address</h3><br><br>
			<div class="form-group">
						<label>Street</label>
						<form:input path="address.street" class="form-control"/>
			</div>
			 <div class="form-row">
			 	<div class="form-group col-md-5">
						<label>City</label>
						<form:input path="address.city" class="form-control" />
				</div>
				<div class="form-group col-md-4">
						<label>State</label>
						<form:input path="address.state" class="form-control" />
				</div>
				<div class="form-group col-md-3">
						<label>Zip Code</label>
						<form:input path="address.zipcode" class="form-control" />	
				</div>			
			</div>	
			
			<input type="submit" value="update" class="btn btn-primary"/>
			
			</form:form>
		
		
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" ></script>
</body>
</html>