<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD SELLERS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body class="container-fluid">
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
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="seller.jsp">Sellers</a></li>
					<li class="nav-item"><a class="nav-link" href="department.jsp">Departments</a></li>
				</ul>
				<form class="d-flex">
					<button class="btn btn-outline-success" type="submit">Logout</button>
				</form>
			</div>
		</div>
	</nav>

	<div class="container-fluid pt-5">
		<div class=row>
			<!------------------------------------------- insert --------------------------------------------->
			<form class="col shadow p-3 rounded" method="get" action="${pageContext.request.contextPath}/sellerInsert" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>Insert Seller</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="name" name="nameInsert" required> 
					<label for="floatingInputGrid name">Name</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="email" id="email" name="emailInsert" required> 
					<label for="floatingInputGrid email">Email</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<div class="input-group">
						<input data-datepicker="" class="form-control" id="dateInsert" type="date" name="dateInsert" placeholder="dd/mm/yyyy" required>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="baseSalary" name="SalaryInsert" required> 
					<label for="floatingInputGrid BaseSalary">Base Salary</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="id" name="DepartmentId" required> 
					<label for="floatingInputGrid id">Department Id</label>
				</div>

				<div class="col-auto mt-5" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3">Submit</button>
				</div>
			</form>
			
			<!------------------------------------- Update ----------------------------------------------------------------->
			<form class="col shadow p-3 rounded" method="get" action="${pageContext.request.contextPath}/sellerUpdate" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>Update Seller</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="id" name="idUpdate" required>
					 <label for="floatingInputGrid id">Id</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="nome" name="nameUpdate" required> 
					<label for="floatingInputGrid name">Name</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="email" id="email" name="emailUpdate" required> 
					<label for="floatingInputGrid email">Email</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<div class="input-group">
						<input data-datepicker="" class="form-control" id="dateUpdate" name="dateUpdate" type="date" placeholder="dd/mm/yyyy" required>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="baseSalary" name="SalaryUpdate" required> 
						<label for="floatingInputGrid BaseSalary">Base Salary</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="id" name="DepartmentIdUpdate" required>
					<label for="floatingInputGrid id">Department Id</label>
				</div>

				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3">Update</button>
				</div>
			</form>
		</div>
	</div>

	<div class=row>
	
		<!-------------------------------- deleted --------------------------------------------------->
		<form class="col shadow p-3 rounded" style="margin-top: 50px" method="get"
			action="${pageContext.request.contextPath}/sellerDelete" enctype="multipart/form-data">
			<div class="col-auto">
				<div class="col-mg-10">
					<h3>Delete Seller</h3>
				</div>
			</div>
			<div class="form-floating">
				<input class="form-control" type="number" id="id" name="IdDeleteSeller" required> 
				<label for="id">Id</label>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-outline-danger mb-3">Delete</button>
			</div>
		</form>

		<!-- findById -->
		<form class="col shadow p-3 rounded"
			style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindById" enctype="multipart/form-data">
			<div class="col-auto">
				<div class="col-mg-10">
					<h3>Find Seller</h3>
				</div>
			</div>
			<div class="form-floating">
				<input class="form-control" type="number" id="id" name="idFindSeller" required> 
				<label for="id">Id</label>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">Find</button>
			</div>
		</form>

		</div>
		<div class=row>
		
		<!-- findAll -->
		<form class="col shadow p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindAll" enctype="multipart/form-data">
			<div class="col-auto">
				<div class="col-mg-10">
					<h3>List All Seller </h3>
				</div>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" name="idFindAll" value="List-all" class="btn btn-primary mb-3 ">List Sellers</button>
			</div>
		</form>

		<!-- List Seller by Department -->
		<form class="col shadow p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindByDepartment" enctype="multipart/form-data">
			<div class="col-auto">
				<div class="col-mg-10">
					<h3>List Seller by Department</h3>
				</div>
				<div class="form-floating">
					<input class="form-control" type="number" id="id" name="idDepart" required> 
					<label for="id">Id</label>
				</div>
			</div>
			<div class="col-auto" style="margin-top: 10px">
				<button type="submit" class="btn btn-primary mb-3">List</button>
			</div>
		</form>
		
		
		<!-- Modal -->
<!-- 		<div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Título do modal</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					</div>
					<div class="modal-body">
					  ...
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
						<button type="button" class="btn btn-primary">Salvar mudanças</button>
					</div>
					</div>
				</div>
			</div> -->
	</div>
</body>
</html>