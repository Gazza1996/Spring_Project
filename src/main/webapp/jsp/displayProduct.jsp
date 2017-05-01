<!-- Gary Mannion - G00319609  -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style>
h1{
	color: blue;
}
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<h1>List of Products</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Description</th>
			<th>Quantity</th>
		</tr>
		<tr>
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${product.pId}</td>
					<td>${product.pDesc}</td>
					<td>${product.qtyInStock}</td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<a href="/">Home</a>
	<a href="/addProduct">Add Product</a>
	<a href="/showCustomers">List Customers</a>
	<a href="/showOrders">List Orders</a>
	<a href="/logout">Logout</a>
</body>
</html>