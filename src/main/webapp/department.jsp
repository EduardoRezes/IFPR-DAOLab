<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Department"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD - DEPARTMENTS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
	
		<main class="container-fluid pt-5">
		
			<!-- insert -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentInsert" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10" data-cy="formInsertDepartment">
						<h3>Insert Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="nome-id" name="nameInsert" data-cy="formInputInsertNameDepartment"> 
					<label for="floatingInputGrid name" data-cy="formLabelInsertNameDepartment">Name</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnInsertNameDepartment">Submit</button>
				</div>
			</form>
	
			<!-- update -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentUpdate" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10" data-cy="formUpdateDepartment">
						<h3>Update Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="id" data-cy="formInputUpdateIdDepartment" name="IdUpdate">
					<label for="floatingInputGrid id" data-cy="formLabelUpdateIdDepartment">Id</label>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="text" id="name-id" data-cy="formInputUpdateNameDepartment" name="nameUpdate"> 
					<label for="floatingInputGrid name" data-cy="formLabelUpdateNameDepartment">Name</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnUpdateNameDepartment">Update</button>
				</div>
			</form>
	
			<!-- delete -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentDelete" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10" data-cy="formDeleteDepartment">
						<h3>Delete Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="IdDelete" data-cy="formInputDeleteDepartment" name="IdDelete"> 
					<label for="id" data-cy="formLabelDeleteDepartment">Id</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn mb-3 btn-outline-danger disabled" data-cy="formBtnDeleteDepartment">Delete</button>
				</div>
			</form>
	
			<!-- findById -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentFindById" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10" data-cy="formFindDepartment">
						<h3>Find Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<input class="form-control" type="number" id="idFind" data-cy="formInputFindDepartment" name="idFind">
					<label for="floatingInputGrid id" data-cy="formLabelFindDepartment">Id</label>
				</div>
				<div class="col-auto" style="margin-top: 10px">
					<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnFindDepartment">Find</button>
				</div>
			</form>
	
			<!-- findAll -->
			<form class="mb-3 column shadow p-3 mb-5 bg-body rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/departmentFindAll" enctype="multipart/form-data">
				<div class="col-auto">
					<div class="col-mg-10" data-cy="formFindAllDepartment">
						<h3>List All Department</h3>
					</div>
				</div>
				<div class="form-floating" style="margin-top: 10px">
					<button type="submit" name="idFindAll" value="List-all" class="btn btn-primary mb-3" data-cy="formBtnFindAllDepartment">List</button>
				</div>
			</form>
		</main>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>