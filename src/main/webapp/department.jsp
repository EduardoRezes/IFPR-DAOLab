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
		<jsp:include page="header.jsp"></jsp:include>
	
		<main class="container-fluid pt-5">
			<!-- insert -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded"
				style="margin-top: 50px" method="get"
				action="${pageContext.request.contextPath}/departmentInsert"
				enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>Insert Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="nome-id"
						name="nameInsert"> <label for="floatingInputGrid name">Name</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3">Submit</button>
				</div>
			</form>
	
			<!-- update -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded"
				style="margin-top: 50px" method="get"
				action="${pageContext.request.contextPath}/departmentUpdate"
				enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>
							Update Department
							</g3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="id" name="IdUpdate">
					<label for="floatingInputGrid id">Id</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="name-id"
						name="nameUpdate"> <label for="floatingInputGrid name">Name</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3">Update</button>
				</div>
			</form>
	
			<!-- delete -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded"
				style="margin-top: 50px" method="get"
				action="${pageContext.request.contextPath}/departmentDelete"
				enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>Delete Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="IdDelete"
						name="IdDelete"> <label for="id">Id</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn mb-3 btn-outline-danger disabled">Delete</button>
				</div>
			</form>
	
			<!-- findById -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded"
				style="margin-top: 50px" method="get"
				action="${pageContext.request.contextPath}/departmentFindById"
				enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>Find Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="idFind" name="idFind">
					<label for="floatingInputGrid id">Id</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3">Find</button>
				</div>
			</form>
	
			<!-- findAll -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded"
				style="margin-top: 50px" method="get"
				action="${pageContext.request.contextPath}/departmentFindAll"
				enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10">
						<h3>List All Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<button type="submit" name="idFindAll" value="List-all"
						class="btn btn-primary mb-3">List</button>
				</div>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>