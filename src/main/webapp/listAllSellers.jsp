<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>  
<%@ page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
		<% List<Seller> sellers = (List<Seller>) request.getAttribute("listSellertAttr"); %>
		
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
			<h1>List Sellers</h1>
		</div>
		
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
			<% for(Seller s : sellers){ %>
			<ul class="list-group" style="margin-top: 20px">
				<li class="list-group-item active">Id: <%out.println(s.getId()); %>
				<li class="list-group-item">Name: <%out.println(s.getName());%></li>
				<li class="list-group-item">Email: <%out.println(s.getEmail());%></li>
				<li class="list-group-item">BirthDate: <%out.println(s.getBirthdate());%></li>
				<li class="list-group-item">Base Salary: <%out.println(s.getBaseSalary());%></li>
			</ul>
			<% } %>
		</div>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>