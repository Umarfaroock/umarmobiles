<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Umar Mobiles</title>
</head>
<body>
<div class="wrapper">
		<div class="content">
	<%@ include file="header.jsp"%>
	<%@ include file="carousel.jsp"%>
	<%-- <%@ include file="displayproduct.jsp"%> --%>
	<c:if test="${pageContext.request.userPrincipal.name==null }">
					<%@ include file="displayfeatured.jsp"%>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<security:authorize access="hasRole('ROLE_USER')">
					<%@ include file="displayfeatured.jsp"%>
					</security:authorize>
					</c:if>
	</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
