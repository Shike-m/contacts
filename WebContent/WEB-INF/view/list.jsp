<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<title>List of contacts</title>
</head>
<body>

	<div class="container">
		<div class="header">
			<h2>List of Contacts</h2>
			<p class="">welcome ${user.username}</p>
		</div><br>
		<input type="button" name= "btn" value="Add new Contact"
				   onclick="window.location.href='addPerson'; return false;"
				   class="btn btn-primary" style="margin-bottom: 30px; margin-left: 30px"/>
		<div class="col">
			<table class="table table-striped">
				<thead class="table-primary">
				<tr>
					<th scope="col">#</th>
					<th scope="col">First name</th>
					<th scope="col">Last name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone</th>
					<th scope="col">Address</th>			
				</tr>
				</thead>
					<c:forEach var="person" items="${persons}">
						<c:url var="updateOne" value="/updateOne">
							<c:param name="personId" value="${person.id}"></c:param>
						</c:url>
						<c:url var="deleteOne" value="/deleteOne">
							<c:param name="personId" value="${person.id}"></c:param>
						</c:url>
						
						<tr>						
							<th scope="row">${person.id}</th>
							<td>${person.firstname}</td>
							<td>${person.lastname}</td>
							<td>${person.email}</td>
							<td>${person.phone}</td>							
							<td><p class="detail">Details</p></td>	
							<td>
								<a href="${updateOne}">Update</a>
								|
								<a href="${deleteOne}">Delete</a>
							</td>								
						</tr>
						<tr class="hiden">
							<td colspan="7" align="center"><span>${person.address.street}&nbsp;&nbsp;${ person.address.city}&nbsp;&nbsp;
							 ${ person.address.state}&nbsp; &nbsp;${ person.address.zipcode}</span></td>
						</tr>
						
					</c:forEach>
			
		</table>
		</div>
		
		
		<a href="/contacts/logout" style="margin-left:30px">logout</a>
		
	</div>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			$(".hiden").hide();
		});
		$(".detail").click(function(){	
				if($(".hiden").is(":hidden")){
					$(".hiden").show();
				}else{
				$(".hiden").hide();
				}
			});
			
		
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" ></script>
</body>
</html>