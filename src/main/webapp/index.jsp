<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD - SYSTEM</title>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="seller.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="seller.jsp">Sellers</a></li>
					<li class="nav-item"><a class="nav-link" href="department.jsp">Departments</a></li>
				</ul>
				<form class="d-flex">
					<button class="btn btn-outline-success" type="submit">Logout</button>
				</form>
			</div>
		</div>
	</nav>
	<div>
		<section class="vh-100">
			<div class="container py-5 h-100">
				<div
					class="row d-flex align-items-center justify-content-center h-100">
					<div class="col-md-8 col-lg-7 col-xl-6">
						<img
							src="https://mdbootstrap.com/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
							class="img-fluid" alt="Phone image">
					</div>
					<div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
						<form>
							<!-- Email input -->
							<div class="form-outline mb-4">
								<input type="email" id="form1Example13"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form1Example13">Email address</label>
							</div>

							<!-- Password input -->
							<div class="form-outline mb-4">
								<input type="password" id="form1Example23"
									class="form-control form-control-lg" /> <label
									class="form-label" for="form1Example23">Password</label>
							</div>

							<div
								class="d-flex justify-content-around align-items-center mb-4">
								<!-- Checkbox -->
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="form1Example3" checked /> <label
										class="form-check-label" for="form1Example3"> Remember
										me </label>
								</div>
								<a href="#!">Forgot password?</a>
							</div>

							<!-- Submit button -->
							<button type="submit" class="btn btn-primary btn-lg btn-block">Sign
								in</button>

							<div class="divider d-flex align-items-center my-4">
								<p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
							</div>

							<a class="btn btn-primary btn-lg btn-block"
								style="background-color: #3b5998" href="#!" role="button"> <i
								class="fab fa-facebook-f me-2"></i>Continue with Facebook
							</a> <a class="btn btn-primary btn-lg btn-block"
								style="background-color: #55acee" href="#!" role="button"> <i
								class="fab fa-twitter me-2"></i>Continue with Twitter
							</a>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>