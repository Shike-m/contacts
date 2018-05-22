<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<h2>List of Contacts</h2>
		</div>
		<input type="button" name=btn value="Add contact"
			onclick="window.location.href='addPerson',return false;"
			class="add-buttion"
		>
		<div class="content">
			<table>
			<tr>
				<th>No.</th>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
			</tr>
			</table>
		</div>	
		
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" ></script>
</body>
</html>