<html>
<head>
<link rel="stylesheet" type="text/css" href="login.css" rel="stylesheet" />
</head>
<body>
	<div>
		<jsp:include page="aheader.jsp"></jsp:include>
	</div>	

	<div class="signin">
		<form method="post" action="afindrecord.jsp">
			<h2>Search Customer</h2>
			<input type="text" name="ph" placeholder="Phone Number"></input><br><br>
			<a href=""><input type="submit" value="Search"></a><
		</form>

			<div id="container">
				<a href="acreate.jsp" style="margin-right: 5px; font-size: 20px; flood-color: white";>Create New Customer</a><br><br>
			</div>
	</div>


	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>

