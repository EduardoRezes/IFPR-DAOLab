<header>
	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" data-cy="navCrud"> 
				<img src="img/IFPR_logo.png" width="40" height="30" class="d-inline-block align-text-top" data-cy="imgLogoIf">
				CRUD - SYSTEM
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page" href="index.jsp" data-cy="navHome">Home</a></li>
					
					<li class="nav-item"><a class="nav-link" aria-current="page" href="seller.jsp" data-cy="navSeller">Sellers</a></li>
					
					<li class="nav-item"><a class="nav-link" href="department.jsp" data-cy="navDepartment">Departments</a></li>
				</ul>
				<div class="d-flex">
					<button class="btn btn-outline-success" type="submit" data-cy="logoutButton">Logout</button>
				</div>
			</div>
		</div>
	</nav>
</header>