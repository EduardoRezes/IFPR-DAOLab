<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD SELLERS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

	<body>
		<jsp:include page="header.jsp"></jsp:include>
		
		<main class="container-fluid pt-5">
			<div class=row>
				<!------------------------------------------- insert --------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" method="get" action="${pageContext.request.contextPath}/sellerInsert" data-cy="formInsert" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formInsertDescriptionSeller">
							<h3>Insert Seller</h3>
						</div>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="text" id="name" name="nameInsert" data-cy="formInsertInputName" required> 
						<label for="floatingInputGrid name" data-cy="formInsertLabelName">Name</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="email" id="email" name="emailInsert" data-cy="formInsertInputEmail" required> 
						<label for="floatingInputGrid email" data-cy="formInsertLabelEmail">Email</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<div class="input-group">
							<input data-cy="formInsertDate" class="form-control" id="dateInsert" type="date" name="dateInsert" placeholder="dd/mm/yyyy" required>
						</div>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="number" id="baseSalary" data-cy="formInsertImputBaseSalary" name="SalaryInsert" required> 
						<label for="floatingInputGrid BaseSalary" data-cy="formInsertLabelBaseSalary">Base Salary</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="number" id="idInputDepartment" name="DepartmentId" data-cy="formInsertDepartmentId" required> 
						<label for="floatingInputGrid id" data-cy="formInsertLabelDepartmentId">Department Id</label>
					</div>
	
					<div class="col-auto mt-5" style="margin-top: 10px">
						<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnInsertSubmit">Submit</button>
					</div>
				</form>
	
				<!------------------------------------- Update ----------------------------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" method="get" action="${pageContext.request.contextPath}/sellerUpdate" data-cy="formUpdate" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formUpdateDescriptionSeller">
							<h3>Update Seller</h3>
						</div>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="number" id="id" name="idUpdate" required> 
						<label for="floatingInputGrid id" data-cy="formUpdateLabelId">Id</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="text" id="nome" name="nameUpdate" data-cy="formUpdateInputName" required> 
						<label for="floatingInputGrid name" data-cy="formUpdateLabelName">Name</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="email" id="email" data-cy="formUpdateInputEmail" name="emailUpdate" required> 
						<label for="floatingInputGrid email" data-cy="formUpdateLabelEmail">Email</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<div class="input-group">
							<input data-cy="formUpdateDate" class="form-control" id="dateUpdate" name="dateUpdate" type="date" placeholder="dd/mm/yyyy" required>
						</div>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="number" id="baseSalary" data-cy="formUpdatInputBaseSalary" name="SalaryUpdate" required> 
						<label for="floatingInputGrid BaseSalary" data-cy="formUpdatLabelBaseSalary">Base Salary</label>
					</div>
					<div class="form-floating" style="margin-top: 10px">
						<input class="form-control" type="number" id="id" data-cy="formUpdateDepartmentId" name="DepartmentIdUpdate" required> 
						<label for="floatingInputGrid id" data-cy="formUpdateLabelDepartmentId">Department Id</label>
					</div>
	
					<div class="col-auto" style="margin-top: 10px">
						<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnUpdateSubmit">Update</button>
					</div>
				</form>
			</div>
	
			<div class=row>
	
				<!-------------------------------- deleted --------------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerDelete" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formDeletSeller">
							<h3>Delete Seller</h3>
						</div>
					</div>
					<div class="form-floating">
						<input class="form-control" type="number" id="id" name="IdDeleteSeller" data-cy="formDeletInputSeller" required>
						<label data-cy="formDeletLabelSeller" for="id">Id</label>
					</div>
					<div class="col-auto" style="margin-top: 10px">
						<button type="submit" class="btn btn-outline-danger mb-3" data-cy="formDeletBtnSeller">Delete</button>
					</div>
				</form>
	
				<!------------------------------- findById -------------------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindById" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formFindSeller">
							<h3>Find Seller</h3>
						</div>
					</div>
					<div class="form-floating">
						<input class="form-control" type="number" id="id" name="idFindSeller" data-cy="formFindInputSeller" required> 
						<label for="id" data-cy="formFindLabelSeller">Id</label>
					</div>
					<div class="col-auto" style="margin-top: 10px">
						<button type="submit" class="btn btn-primary mb-3" data-cy="formFindBtnSeller">Find</button>
					</div>
				</form>
	
			</div>
			
			<div class=row>
	
				<!------------------------------- findAll -------------------------------------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindAll" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formFindAllSeller">
							<h3>List All Seller</h3>
						</div>
					</div>
					<div class="col-auto" style="margin-top: 10px">
						<button type="submit" name="idFindAll" value="List-all" class="btn btn-primary mb-3 " data-cy="formBtnFindAllSeller">List Sellers</button>
					</div>
				</form>
	
				<!----------------------------------- List Seller by Department ------------------------------------------------->
				<form class="col shadow m-3 p-3 rounded" style="margin-top: 50px" method="get" action="${pageContext.request.contextPath}/sellerFindByDepartment" enctype="multipart/form-data">
					<div class="col-auto">
						<div class="col-mg-10" data-cy="formListSellerByDepartment">
							<h3>List Seller by Department</h3>
						</div>
						<div class="form-floating">
							<input class="form-control" type="number" id="id" name="idDepart" data-cy="formInputListSellerByDepartment" required> 
							<label for="id" data-cy="formLabelListSellerByDepartment">Id</label>
						</div>
					</div>
					<div class="col-auto" style="margin-top: 10px">
						<button type="submit" class="btn btn-primary mb-3" data-cy="formBtnListSellerByDepartment">List</button>
					</div>
				</form>
			</div>
		</main>	
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>