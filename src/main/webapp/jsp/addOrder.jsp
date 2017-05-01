<!-- Gary Mannion - G00319609  -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<style>
h1 {
	color: blue;
}
a:hover {
    color: red;
    background-color: transparent;
    text-decoration: underline;
}
a:visited {
    color: pink;
    background-color: transparent;
    text-decoration: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Order</title>
</head>
<body>
	<form:form modelAttribute="order1">
		<h1>New Order</h1>
		<table>
			<tr>
				<td>Customer id:</td>
				<td><form:input path="cust.cId"></form:input></td>
			</tr>
			<tr>
				<td>Product id:</td>
				<td><form:input path="prod.pId"></form:input></td>
			</tr>
			<tr>
				<td>Quantity:</td>
				<td><form:input path="qty"></form:input></td>
				<td><form:errors path="qty">Must be greater than 0</form:errors></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add" /></td>
			</tr>
		</table>
		<a href="/">Home</a>
		<a href="/showCustomers">List Customers</a>
		<a href="/showProducts">List Products</a>
	</form:form>
</body>
</html>