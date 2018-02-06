<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<br><br><br><br><br>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
<style>
.product {
 margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background: black;
  color: white;
  border-radius: 10px;
  border: 1px solid black;
}
.product tr {
  border: 1px solid white;
}
.product tr:nth-child(odd) {
  background-color: transparent;
}
.product th {
 display: none;
  border: 1px solid white;
  background-color: white;
  color: black;
  padding: 1em;
}
.product th:first-child {
  display: table-cell;
  text-align: center;
}
.product th:nth-child(2) {
  display: table-cell;
}
.product th:nth-child(2) span {
  display: none;
}
.product th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .product th:nth-child(2) span {
    display: block;
    
  }
  .product th:nth-child(2):after {
    display: none;
  }
}
.product td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.product td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid white;
}
@media (min-width: 480px) {
  .product td {
    border: 1px solid white;
  }
}
.product th, .product td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .product th, .product td {
    display: table-cell;
    padding: 1em;
  }
}
a{
color:red;
}
body {
  background-color:white;
}
h1 {
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}
.navbar-default {
	background-color: #669999;
</style>
</head>
<body>
<table class="product">
  <tr>
    <th align="left">S.No</th>
		<th>Id</th>
		<th>Product Image</th>
		<th>Name</th>
		<th>Description</th>
		<th>Stock</th>
		<th>Price</th>
		<th>Category</th>
		<th>SupplierName</th>
		<th>Edit</th>
		<th>Delete</th>
  </tr>
  <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
    <td>${status.count}</td>
			<td>${product.productId}</td>
			<td> <img src="resources/product/${product.productId}.jpg" alt="${product.productId}" width=100px; height=100px;></td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.stock}</td>
			<td>${product.price}</td>
			<td>${product.category}</td>
			<td>${product.supplierName}</td>
			
			<td><a href="editProduct?productId=${product.productId}"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
			<td><a href="deleteProduct?productId=${product.productId}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.productName} ?')"><span
									class="glyphicon glyphicon-trash"></span></a></td>
  </tr>
  </c:forEach>
</table>
</body>