<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="login.css"/>
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>

	<div class="signin">
		<form method="post" action="reg.jsp" >
				<h2>Sign In</h2><br><br>
				<input type="text" name="nm" placeholder="Username"><br>
				<input type="text" name="eid" placeholder="Email ID"><br>
				<input type="password" name="pass" placeholder="Password"><br>
				<input type="text" name="ph" placeholder="Phone Number"><br><br>
				<select name="branch">
					<option>Select Branch</option>
					<option>Pimpri</option>
					<option>Chinchwad</option>
					<option>Nigdi</option>
				</select><br>
				<input type="text" name="addr" placeholder="Address"><br><br>
				<a href=""><input type="submit" value="Sign In"></a><br><br>
				Already have an account?<a href="cust.jsp">&nbsp;Log In</a>
		</form>	
	</div>

	<div>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>