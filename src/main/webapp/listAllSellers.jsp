<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="models.Seller"%>  
<%@ page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List All</title>
</head>
<body>
	<% List<Seller> sellers = (List<Seller>) request.getAttribute("listSellertAttr"); %>
	
	<h1>List Sellers</h1>
	<a href="seller.jsp">Seller System</a>
			<% for(Seller s : sellers){ %>
			<ul>
				<li>Id: <%out.println(s.getId()); %>
				<li>Name: <%out.println(s.getName());%></li>
				<li>Email: <%out.println(s.getEmail());%></li>
				<li>BirthDate: <%out.println(s.getBirthdate());%></li>
				<li>Base Salary: <%out.println(s.getBaseSalary());%></li>
			</ul>
			<% } %>
</body>
</html>