<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Admin</title>
<link rel="stylesheet" type="text/css" href="login.css" rel="stylesheet" />
</head>
<body>
	<div>
		<jsp:include page="aheader.jsp"></jsp:include>
	</div>	

	<div class="signin">
		<form method="post" action="aloginprocess.jsp">
			<h2>Log In</h2>
			<input type="text" name="username" placeholder="Username"><br><br>
			<input type="password" name="pass" placeholder="Password"><br><br>
			<a href=""><input type="submit" value="Log In"></a><br>
			<br>
		</form>
	</div>

	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>