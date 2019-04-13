<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Display Data</title>
<link rel="stylesheet" type="text/css" href="login.css"/>

</head>
<body>
	<div>
		<jsp:include page="aheader.jsp"></jsp:include>
	</div>

	<div class="signin">
		<form method="post" action="asave.jsp">
			<style type="text/css">
	.signin:before{
		content: '';
		position: absolute;
		top: 0;
		right: 0;
		width: 50px;
		height:50px;
		background: #007ce0;
	}

	.signin:hover:before{
		background: ##938bbf;
	}
</style>
			<input type="text" name="username" placeholder="Username"><br><br>
			<input type="text" name="ph" placeholder="Phone Number"><br><br>
			<select name="branch">
				<option>Select Branch</option>
				<option>Pimpri</option>
				<option>Chinchwad</option>
				<option>Nigdi</option>
			</select>
			<input type="text" name="addr" placeholder="Address"><br><br>
			<a href=""><input type="submit" value="Create"></a><br>
		</form>
	</div>

	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>	
</html>