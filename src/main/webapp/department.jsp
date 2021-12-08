<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.Department"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD - DEPARTMENTS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
	<body>
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
						<li class="nav-item"><a class="nav-link" aria-current="page"
							href="seller.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="seller.jsp">Sellers</a></li>
						<li class="nav-item"><a class="nav-link" href="department.jsp">Departments</a></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2" type="search" placeholder="Search"
							aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	
		<%
		Department depart = (Department) request.getAttribute("departAttr");
		%>
	
		<!-- insert -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/insert" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Insert Department</label> 
				 </div>
			</div>
			<div class="col-auto">
				<input class="form-control" type="text" id="nome-id" placeholder="Name" aria-label="default input example">
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Submit</button>
			</div>
		</form>
	
		<!-- update -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/update" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Update Department</label> 
				 </div>
			</div>
			<div class="col-auto">
				<label for="id" >Id:</label> <input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
				<label for="name-id" >Name:</label> <input class="form-control" type="text" id="name-id" placeholder="Name Updated" aria-label="default input example">
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Update</button>
			</div>
		</form>
	
		<!-- delete -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/delete" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Delete Department</label> 
				 </div>
			</div>
			<div class="col-auto">
				<label for="id" >Id:</label> <input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Delete</button>
			</div>
		</form>
	
		<!-- findById -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentFindById" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Find Department</label> 
				 </div>
			</div>
			<div class="col-auto">
				<label for="id" >Id:</label> <input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Find</button>
			</div>
			<div class="item">
				<ul>
					<li>
						<%
						out.print(depart);
						%>
					</li>
				</ul>
			</div>
		</form>
	
		<!-- findAll -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentFindAll" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>List All Department</label> 
				 </div>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">List    </button>
			</div>
		</form>
	</body>
</html>