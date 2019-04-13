<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Display Data</title>
<link rel="stylesheet" type="text/css" href="login.css" />
</head>
<body>
	<div>
		<jsp:include page="aheader.jsp"></jsp:include>
	</div>
	
	<div class="signin">	
		<form action="aupdate.jsp" method="post">
			<input type="text" name="nm" placeholder="Name"></input><br><br>
			<input type="text" name="ph" placeholder="Phone Number"></input><br><br>
				<select name="br">
					<option>Select Branch</option>
					<option>Pimpri</option>
					<option>Chinchwad</option>
					<option>Nigdi</option>
				</select>
			<input type="text" name="addr" placeholder="Address"></input><br><br>
			<a href=""><input type="submit" value="Edit & Save"></a><br>
		</form>
	</div>	
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>