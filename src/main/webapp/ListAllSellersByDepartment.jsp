<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>  
<%@ page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List sellers by Department</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
	<body>
	<jsp:include page="header.jsp"></jsp:include>
		<main class="container-fluid pt-5">
			<% List<Seller> sellers = (List<Seller>) request.getAttribute("sellerstAttr"); %>
			
			<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
				<h1>List Sellers by department</h1>
			</div>
			
			<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
				<% for(Seller s : sellers){ %>
				<ul class="list-group" style="margin-top: 20px">
				    <li class="list-group-item active">Id: <%out.println(s.getId()); %>
					<li class="list-group-item">Name: <%out.println(s.getName());%></li>
					<li class="list-group-item">E-mail: <%out.println(s.getEmail());%></li>
					<li class="list-group-item">BirthDate: <%out.println(s.getBirthdate());%></li>
					<li class="list-group-item">Base Salary: <%out.println(s.getBaseSalary());%></li>
				</ul>
				<% } %>
			</div>	
		</main>
	<jsp:include page="footer.jsp"></jsp:include>
	
	</body>
</html>