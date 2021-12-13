<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="models.Department"%>  
<%@ page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
	<body>
	<jsp:include page="header.jsp"></jsp:include>
	
		<% List<Department> depart2 = (List<Department>) request.getAttribute("listDepartAttr"); %>	
			
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
			<h1>List Sellers</h1>
		</div>
		
		<div class="mb-3 column shadow p-3 mb-5 bg-body rounded w-50 mx-auto">
			<% for(Department d : depart2){ %>
			<ul class="list-group" style="margin-top: 20px">
				<li class="list-group-item active">Id: <%out.println(d.getId()); %>
				<li class="list-group-item">Name: <%out.println(d.getName());%></li>
			</ul>
			<% } %>
		</div>	
	<jsp:include page="footer.jsp"></jsp:include>	
	</body>
</html>