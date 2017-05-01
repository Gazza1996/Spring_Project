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
<title>Customers</title>
</head>
<body>
	<h1>Customers</h1>
	<c:forEach items="${customers}" var="customer">
		<h1>${customer.cId} ${customer.cName}</h1>
		<h2>${customer.cName}'s Orders</h2>
		<table>
			<tr>
				<th>Order ID</th>
				<th>Quantity</th>
				<th>Product ID</th>
				<th>Product Description</th>
			</tr>
			<tr>
				<c:forEach items="${customer.orders}" var="order">
					<tr>
						<td>${order.oId}</td>
						<td>${order.qty}</td>
						<td>${order.prod.pId}</td>
						<td>${order.prod.pDesc}</td>
				</c:forEach>
			</tr>
		</table>
	</c:forEach>
	<a href="/">Home</a>
	<a href="/addCustomer">Add Customer</a>
	<a href="/showProducts">List Products</a>
	<a href="/showOrders">List Orders</a>
	<a href="/logout">Logout</a>
</body>
</html>