<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Category</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
body {
	background-image: url("resources/images/bg/background.jpg");
}
label{
	color: white;
}
</style>
  <script>
  function formProduct(){
		// Make quick references to our fields
		
		var productname = document.getElementById('productname');
		var productdescription = document.getElementById('productdescription');
		var category = document.getElementById('category');
		var productname = document.getElementById('productname');
		var price = document.getElementById('price');
		var stock = document.getElementById('stock');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(productname, "Prooduct Name Should not be empty")) {
							if (isAlphabet(productname,
									"Please enter only letters for Product Name")) {
								if (notEmpty(productdescription,"Product Description Should not be empty")){
								         if (isAlphabet(productdescription,
								        "Please enter only letters for Product Description")) {
								        	 if (notEmpty(category,"Category Should not be empty")){
								        		 if(notEmpty(productname, "Product Name should not be empty")){
								        	
										if (notEmpty(price,
												"Price Should not be empty")) {
											if (isNumeric(price,
													"Please enter only number for Price")) {
														if (notEmpty(stock,
																"Stock Should not be empty")) {
															if (isNumeric(
																	stock,
																	"Please enter a valid Stock")) {
																if(notEmpty(file, "File should not be empty")){
																return true;
															}
														}
													}
												}
											}
										}
									}
							    }
							}
					}
					}
	return false;
	}
  
   function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
  </script>

  </head>
  <body>
<br> <br> <br>
<br> <br> <br>
<form action="addProduct" class="form-horizontal" method="post" onsubmit="return formProduct()" enctype="multipart/form-data" > 
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="email">Product Name:</label>
    <div class="col-sm-3">
      <input type="text" class="form-control" name="ProductName" id="productname"  placeholder="Enter Product Name" required>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="password">Product description:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="ProductDescription" id="productdescription" placeholder="Enter Product Description" required>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="password">Supplier:</label>
    <div class="col-sm-3"> 
  <select class="form-control" name="SupplierName" id="suppliername">
    <option value="">Select Supplier</option>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  <option value="${supplier.supplierName}">${supplier.supplierName}</option>
  </c:forEach></select>
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="password">Category:</label>
    <div class="col-sm-3"> 
  <select class="form-control" name="Category" id="category">
    <option value="">Select Category</option>
  <c:forEach items="${categoryList}" var="category" varStatus="status">
  <option value="${category.categoryName}">${category.categoryName}</option>
  </c:forEach></select>
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="pwd">Price:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="Price" id="price" placeholder="Enter Price Amount" required>
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="passowrd">Stock:</label>
    <div class="col-sm-3"> 
      <input type="text" class="form-control" name="Stock" id="stock" placeholder="Enter Stock Number" required>
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-offset-2 col-sm-3" for="password">Image:</label>
    <div class="col-sm-3"> 
      <input type="file" class="form-control" name="file" id="file" placeholder="Enter Price Amount" required>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn btn-dark" id="subbutton">Submit</button>
    </div>
  </div>
</form>
<br> <br> <br>
<br> <br> <br>
 </body>
 </html>