<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="models.Seller"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
	
			<%	Seller seller = (Seller) request.getAttribute("sellertAttr");	%>
			
			<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
				<h1>Seller</h1>
			</div>
			
			<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
				<ul class="list-group" style="margin-top: 20px">
					<li class="list-group-item active">Id: <%out.println(seller.getId()); %>
					<li class="list-group-item">Name: <%out.println(seller.getName());%></li>
					<li class="list-group-item">E-mail: <%out.println(seller.getEmail());%></li>
					<li class="list-group-item">BirthDate: <%out.println(seller.getBirthdate());%></li>
					<li class="list-group-item">Base Salary: <%out.println(seller.getBaseSalary());%></li>
				</ul>
			</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>