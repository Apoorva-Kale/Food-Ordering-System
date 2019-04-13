<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Menu</title>
<link rel="stylesheet" type="text/css" href="menu.css"/>
</head>
<body>
	<%
	Long s = (Long)session.getAttribute("Phone");
	out.println(s);
	%>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>

	<div id="largebox">
		<div id="box1">
			<form method="post" action="meal1.jsp" >
				<h2>100/- Meal</h2><br><br>
				<select name="sabzi">
					<option>Select sabzi</option>
					<option>Veg</option>
					<option>Non Veg</option>
				</select><br>
				<br><br>
				<select name="roti">
					<option>Select roti</option>
					<option>Chapati</option>
					<option>Phulke</option>
					<option>Lacche</option>
					<option>Bhakar</option>
				</select><br>
				<br><br>
				<select name="dal">
					<option>Select dal</option>
					<option>Plain Dal</option>
					<option>Dal Fry</option>
				</select><br>
				<br><br>
				<select name="rice">
					<option>Select Rice</option>
					<option>Plain Rice</option>
					<option>Jeera Rice</option>
				</select><br>
				<br><br>
				<input type="submit" value="Submit"><br><br>
			</form>	
		</div>
		<div id="box2">
			<form method="post" action="meal2.jsp" >
				<h2>180/- Meal</h2><br><br>
				<select name="sabzi">
					<option>Select sabzi</option>
					<option>Veg and Non Veg</option>
				</select><br>
				<br><br>
				<select name="roti">
					<option>Select roti</option>
					<option>Chapati +1</option>
					<option>Phulke +2</option>
					<option>Lacche+1</option>
					<option>Bhakar+1</option>
				</select><br>
				<br><br>
				<select name="dal">
					<option>Select dal</option>
					<option>Plain Dal</option>
					<option>Dal Fry</option>
				</select><br>
				<br><br>
				<select name="rice">
					<option>Select Rice</option>
					<option>Plain Rice</option>
					<option>Jeera Rice</option>
				</select><br>
				<br><br>
				<select name="dessert">
					<option>Select Dessert</option>
					<option>Gulab Jamun</option>
					<option>Rasgulla</option>
				</select><br>
				<br><br>
				<input type="submit" value="Submit"><br><br>
			</form>	
			
		</div>
</div>
</body>
</html>