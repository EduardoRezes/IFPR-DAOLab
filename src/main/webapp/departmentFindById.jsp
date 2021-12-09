<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.Department"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
	<body>
		<!-- Header -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="#"> <img src="img/IFPR_logo.png"
					alt="" width="40" height="30" class="d-inline-block align-text-top">
					CRUD - SYSTEM
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="seller.jsp">Sellers</a></li>
						<li class="nav-item"><a class="nav-link" href="department.jsp">Departments</a></li>
					</ul>
					<form class="d-flex">
						<button class="btn btn-outline-success" type="submit">Logout</button>
					</form>
				</div>
			</div>
		</nav>
	
		<%	Department depart = (Department) request.getAttribute("departAttr");	%>
		
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
		<h1>Department</h1>
	</div>
		
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
			<ul class="list-group" style="margin-top: 20px">
				<li class="list-group-item active">Id: <%out.println(depart.getId()); %>
				<li class="list-group-item">Name: <%out.println(depart.getName());%></li>
			</ul>
		</div>
	</body>
</html>