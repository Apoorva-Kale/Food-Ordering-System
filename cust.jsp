<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="login.css"/>
</head>
<body>
	<div">
		<jsp:include page="header.jsp"></jsp:include>
	</div>	

	<div class="signin">
		<form method="post" action="login.jsp">
			<h2>Log In</h2><br>
			<input type="text" name="nm" placeholder="Username">
			<input type="password" name="pass" placeholder="Password"><br><br>
			<a href=""><input type="submit" value="Log In"></a><br>
			<br>
			<div id="container">
				<a href="" style="margin-right: 0px; font-size: 13px;">Reset password</a>
			</div>
			<br><br><br>
			Don't have an account?<a href="signin.jsp">&nbsp;Sigin In</a>
		</form>
	</div>

	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>