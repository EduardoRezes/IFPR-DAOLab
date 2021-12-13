<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD - SYSTEM</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div id="carousel" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="3000">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/cute-christmas-background-with-bokeh.jpg" class="d-block w-100 image-carousel">
			</div>
			<div class="carousel-item">
				<img src="img/christmas-greeting-with-garlands-on-a-red-table.jpg" class="d-block w-100 image-carousel2">
			</div>
			<div class="carousel-item">
				<img src="img/man-in-santa-claus-costume-winking.jpg" class="d-block w-100 image-carousel">
			</div>
		</div>
	</div>

	<main>
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
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>