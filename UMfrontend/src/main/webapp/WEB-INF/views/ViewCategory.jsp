<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Category</title>
<style>
.responstable {
  margin: 1em 8em;
  width: 80%;
  overflow: hidden;
  background-color: black;
  color: red;
  border-radius: 10px;
  border: 1px solid red;
}
.responstable tr {
  border: 1px solid red;
}
.responstable tr:nth-child(odd) {
  background-color: black;
}
.responstable th {
  display: none;
  border: 1px solid red;
  background-color: black;
  color: red;
  padding: 1em;
}
.responstable th:first-child {
  display: table-cell;
  text-align: center;
}
.responstable th:nth-child(2) {
  display: table-cell;
}
.responstable th:nth-child(2) span {
  display: none;
}
.responstable th:nth-child(2):after {
  content: attr(data-th);
}
@media (min-width: 480px) {
  .responstable th:nth-child(2) span {
    display: block;
    
  }
  .responstable th:nth-child(2):after {
    display: none;
  }
}
.responstable td {
  display: block;
  word-wrap: break-word;
  max-width: 7em;
}
.responstable td:first-child {
  display: table-cell;
  text-align: center;
  border-right: 1px solid red;
}
@media (min-width: 480px) {
  .responstable td {
    border: 1px solid red;
  }
}
.responstable th, .responstable td {
  text-align: center;
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .responstable th, .responstable td {
    display: table-cell;
    padding: 1em;
  }
}
a{
color:blue;
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
		<div id="albums"> <!-- class="col-sm-12" -->
			<p class="Latest">Category</p>
	</div>
	</div>
	</div>
<table class="responstable">
  
  <tr>
    <th align="left">S.No</th>
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Description</th>
		<th align="left">Edit</th>
		<th align="left">Delete</th>
		
  </tr>
  
  <c:forEach items="${categoryList}" var="category" varStatus="status">
		<tr>
			<td>${status.count}</td>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.categoryDescription}</td>
			<td><a href="editCategory?categoryId=${category.categoryId}"><span
									class="glyphicon glyphicon-pencil"></span></a></td>
			<td><a href="deleteCategory?categoryId=${category.categoryId}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.categoryName} ?')"><span
									class="glyphicon glyphicon-trash"></span></a></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>