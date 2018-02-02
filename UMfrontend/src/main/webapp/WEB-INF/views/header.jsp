<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.navbar {
	background-color: teal;
}

a {
	color: red !important;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index">Umar Mobiles</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
			<li><a href="#">About</a></li>
			<security:authorize access="hasRole('ROLE_ADMIN')">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory">View</a></li>
						<li><a href="Category">Add</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Supplier <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewSupplier">View</a></li>
						<li><a href="Supplier">Add</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewProduct">View</a></li>
						<li><a href="Product">Add</a></li>
					</ul></li>
					</security:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${pageContext.request.userPrincipal.name==null }">
				<c:url value="/signup" var="signup"></c:url>
					<c:url value="/login" var="login"></c:url>
					<li><a href="${signup}"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
					<li><a href="${login}"><span class="glyphicon glyphicon-log-in"></span>
							Login</a></li>
				</c:if>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="logout"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	</nav>
	<%-- <c:choose>
		<c:when test="${not empty SignupButtonClicked}">
		
			<%@include file="/WEB-INF/views/signup.jsp"%>
		</c:when>
	</c:choose> --%>
</body>
</html>