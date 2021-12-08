<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>  
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD SELLERS</title>
<link rel="stylesheet" type="text/css" href="sellers.css" media="screen" />
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
						<li class="nav-item"><a class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="seller.jsp">Sellers</a></li>
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
			Seller seller = (Seller) request.getAttribute("sellertAttr");
		%>	

		<!-- insert -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/insert" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Insert Seller</label> 
				 </div>
			</div>
			<div class="form-floating" style="margin-top: 10px">
				<input class="form-control" type="text" id="nome"  aria-label="default input example">
				<label for="floatingInputGrid nome">Name</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="email" id="email" aria-label="default input example">
				<label for="floatingInputGrid email">Email</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">
				<div class="input-group">
   					<span class="input-group-text">
       					<svg class="icon icon-xs" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
   					</span>
    				<input data-datepicker="" class="form-control" id="birthday" type="text" placeholder="dd/mm/yyyy" required>
				</div>	
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="number" id="baseSalary" aria-label="default input example">
				<label for="floatingInputGrid BaseSalary">Base Salary</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="number" id="baseSalary" aria-label="default input example">
				<label for="floatingInputGrid id">Department Id</label>
			</div>
			
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Submit</button>
			</div>
		</form>

		<!-- Update -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerUpdate" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Update Seller</label> 
				 </div>
			</div>
			<div class="form-floating" style="margin-top: 10px">
				<input class="form-control" type="number" id="id"  aria-label="default input example">
				<label for="floatingInputGrid id">Id</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">
				<input class="form-control" type="text" id="nome"  aria-label="default input example">
				<label for="floatingInputGrid nome">Name</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="email" id="email" aria-label="default input example">
				<label for="floatingInputGrid email">Email</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">
				<div class="input-group">
   					<span class="input-group-text">
       					<svg class="icon icon-xs" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path></svg>
   					</span>
    				<input data-datepicker="" class="form-control" id="birthday" type="text" placeholder="dd/mm/yyyy" required>
				</div>	
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="number" id="baseSalary" aria-label="default input example">
				<label for="floatingInputGrid BaseSalary">Base Salary</label>
			</div>
			<div class="form-floating" style="margin-top: 10px">	
				<input class="form-control" type="number" id="baseSalary" aria-label="default input example">
				<label for="floatingInputGrid id">Department Id</label>
			</div>
			
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Update</button>
			</div>
		</form>
		
		<!-- delete -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerDelete" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Delete Seller</label> 
				 </div>
			</div>
			<div class="form-floating">
				<input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
				<label for="id" >Id</label> 
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Delete</button>
			</div>
		</form>
		
		<!-- findById -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindById" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>Find Seller</label> 
				 </div>
			</div>
			<div class="form-floating">
				<input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
				<label for="id" >Id:</label> 
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Find</button>
			</div>
			<div class="item">
				<ul>
					<li><% out.print(seller);%></li>
				</ul>
			</div>
		</form>

		<!-- findAll -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindAll" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>List All Seller</label> 
				 </div>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">List</button>
			</div>
		</form>

		<!-- List Seller by Department -->
		<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindByDepartment" enctype="multipart/form-data">
			<div class="col-auto">		
				 <div class="col-mg-10">
				 	<label>List Seller by Department</label> 
				 </div>
				 <div class="form-floating">
					<input class="form-control" type="number" id="id" placeholder="Id" aria-label="default input example">
					<label for="id" >Id</label> 
				 </div>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">List</button>
			</div>
		</form>
	</body>
</html>