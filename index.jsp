<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>tiffinMausi</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<div class="main">
			<nav>
				<div class="logo">
					<img src="tiffinMausi logo.png">
				</div>

				<ul>
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Gallery</a></li>
				</ul>
			</nav>
		 </div>
		 
		<div class="title">
			<h1>tiffinMausi</h1>
		</div>

		<div class="button">
			<a href="cust.jsp" class="btn">Customer</a>
			<a href="admin.jsp" class="btn">Admin</a>
		</div>
	</header>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>