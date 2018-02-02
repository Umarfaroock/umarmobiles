<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.body{
	background-image: url("https://wallpaperscraft.com/image/daath_band_members_t-shirts_look_3934_1920x1080.jpg");
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
}
.login input[type=number]{
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
	/* margin-top: 10px; */
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
	/* margin-top: 10px; */
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
.login input[type=number]:focus{
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
<%@ include file="header.jsp"%>
<%@ include file="footer.jsp"%>
<form action="addNewUser" method="post" onsubmit="return formRegister()" class="form-horizontal">
	<div class="body"></div>
	<div class="grad"></div>
	<div class="header">
		<div>
			Sign<span>In</span> as ..
		</div>
	</div>
	<br>
	<div class="login">
		<input type="text" placeholder="First Name:" name="userName"><br>
		<br><input type="number" placeholder="Contact number:" name="contactNumber"><br>
		<br><input type="text" placeholder="Email:" name="emailId"><br>
		<br><input type="password" placeholder="Password:" name="password"><br>
		 <br><input type="text" placeholder="Address:" name="address"><br>
		 <br><input type="number" placeholder="Zipcode:" name="zipcode"><br>
		<br>
		<!-- <input type="button" value="Signup"> -->
		        <button type="submit" class="btn btn-default">SignUp</button>
		
	</div>
	</form>
</body>
</html>