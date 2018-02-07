<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style type="text/css">
   .body{
	background-image: url("https://wallpaperscraft.com/image/black_stone_cherry_t-shirts_guitars_drum_print_6546_1920x1080.jpg");
	background-size: cover;
	-webkit-filter: blur(2px);
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	z-index: 0;
}
.grad{
	position: absolute;
	top: -20px;
	left: -20px;
	right: -40px;
	bottom: -40px;
	width: auto;
	height: auto;
	background-color:none; 
	
	z-index: 1;
	opacity: 0.7;
}
.header{
	position: absolute;
	top: calc(30% - 35px);
	left: calc(67% - 255px);
	z-index: 2;
}
.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}
.header div span{
	color: #5379fa !important;
}
.login{
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
	
}
.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}
.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}
.login input[type=button]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}
.login input[type=button]:hover{
	opacity: 0.8;
}
.login input[type=button]:active{
	opacity: 0.6;
}
.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}
.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}
.login input[type=button]:focus{
	outline: none;
}
::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}
::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
   
   </style>
</head>
<body>
<br> <br> <br>
<br> <br> <br>
<form class="form-horizontal" action="isvaliduser" method="post">

<div class="container">
			<h1 align="center">Login</h1>
			<br>
  <div class="form-group">
    <label id="mail" class="control-label col-sm-offset-2 col-sm-3" for="email">Email:</label>
    <div class="col-sm-3">
      <input type="email" class="form-control" name="emailId" id="email" placeholder="Enter email" required>
    </div>
  </div>
  <div class="form-group">
    <label id="pass" class="control-label col-sm-offset-2 col-sm-3" for="pwd">Password:</label>
    <div class="col-sm-3"> 
      <input type="password" class="form-control" name="password" id="pwd" placeholder="Enter password" required>
    </div>
  </div>
  
  <div class="form-group"> 
    <div class="col-sm-offset-5 col-sm-3">
      <button type="submit" class="btn" id="subbutton">Login!</button>
    <%--  <c:url value="/signup" var="register"></c:url>
	  <u><button id="btn" class= "btn"><a id="btn" href="${register}">New User?</a></button></u><br> --%>
    </div>
  </div>
</form>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br>
<br> <br> <br></body>
 <%-- <c:choose>
		<c:when test="${not empty LoginButtonClicked}">

			<%@include file="/WEB-INF/views/login.jsp"%>
		</c:when>
	</c:choose> --%>
</html>