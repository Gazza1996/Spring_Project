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
<title>Orders</title>
</head>
<body>
	<h1>List of Orders</h1>
	<c:forEach items="${orders}" var="order">
		<br>
		<h2>${order.oId}</h2>
		<table>
			<tr>
				<th>Quantity</th>
				<th>Order Date</th>
				<th>Customer ID</th>
				<th>Customer Name</th>
				<th>Product ID</th>
				<th>Product Description</th>
			</tr>
			<tr>
			<tr>
				<td>${order.qty}</td>
				<td>${order.orderDate}</td>
				<td>${order.cust.cId}</td>
				<td>${order.cust.cName}</td>
				<td>${order.prod.pId}</td>
				<td>${order.prod.pDesc}</td>
			</tr>
		</table>
	</c:forEach>
	<a href="/">Home</a>
	<a href="/addOrder">Add Order</a>
	<a href="/showProducts">List Products</a>
	<a href="/showCustomers">List Customers</a>
	<a href="/logout">Logout</a>
</body>
</html>