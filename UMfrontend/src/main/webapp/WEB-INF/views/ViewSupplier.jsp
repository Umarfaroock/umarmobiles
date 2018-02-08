<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewSupplier</title>
<style>
.artist {
  margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background: black;
  color: red;
  border-radius: 10px;
  border: 1px solid red;
}
.artist tr {
  border: 1px solid red;
}
.artist tr:nth-child(odd) {
  background-color: black;
}
.artist th {
  display: none;
  border: 1px solid red;
  background-color: black;
  color: red;
  padding: 1em;
}
.artist th:first-child {
  display: table-cell;
  text-align: center;
}
.artist th:nth-child(2) {
  display: table-cell;
}
.artist th:nth-child(2) span {
  display: none;
}
.artist th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .artist th:nth-child(2) span {
    display: block;
    
  }
  .artist th:nth-child(2):after {
    display: none;
  }
}
.artist td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.artist td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid red;
}
@media (min-width: 480px) {
  .artist td {
    border: 1px solid red;
  }
}
.artist th, .artist td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .artist th, .artist td {
    display: table-cell;
    padding: 1em;
  }
}
a{
color:red;
}
body {
  padding: 0 2em;
  background-color: black;
}
h1 {
  font-weight: normal;
  color: #024457;
}
h1 span {
  color: #167F92;
}
#albums{
background: threedlightshadow;
color: red;
font-size: x-large;
font-family: fantasy;
margin-top: 55px;
margin-bottom: 5px;
}
.navbar-fixed-top {
    top: 0;
    border-width: 0 0 0px;
    }
.Latest{
padding-top: 10px;
margin-left: 0px;
background-color: black;
}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div id="albums"> <!-- class="col-sm-12"> -->
			<p class="Latest">Supplier</p>
	</div>
	</div>
	</div>
<table class="artist">
	<thead>
		<tr>
		<th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">ContactNumber</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		</tr>
		 <c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.contactNumber}</td>
			<td><a href="editSupplier?supplierId=${supplier.supplierId}"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
			<td><a href="deleteSupplier?supplierId=${supplier.supplierId}"onclick="return confirm('Are You Sure? Do you Want Delete this Supplier : ${supplier.supplierName} ?')"><span
									class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>