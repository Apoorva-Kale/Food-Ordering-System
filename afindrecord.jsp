<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Display Data</title>
<style>
	body{
		background: skyblue;
	}

	table{
		width: 800px;
		margin: auto;
		text-align: center;
		table-layout: fixed;
		margin-top: 160px;

	}

	table, tr, th, td{
		padding: 20px;
		color: white;
		border: 1px solid #080808;
		border-collapse: collapse;;
		font-size: 18px;
		font-family: Arial;
		background: linear-gradient(top, #3c3c3c 0%, #222222 100%);
		background: -webkit-linear-gradient(top, #3c3c3c 0%, #222222 100%);
	}

	td:hover{
		background: #938bbf;
	}
</style>
</head>
<body>
<jsp:include page="aheader.jsp"></jsp:include>
<% 
	String phno = request.getParameter("ph");
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cn = DriverManager.getConnection("jdbc:odbc:JSPDSN");
		Statement stmt = cn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Customer where phno = '"+phno+"';");%>	

		<table>
			<tr>
				<th>Name</th>
				<th>Phone number</th>
				<th>Branch</th>
				<th>Address</th>
			</tr>
	<%
		while(rs.next())
		{%>
		<tr>
			<td><%= rs.getString(1)%></td>
			<td><%= rs.getString(2)%></td>
			<td><%= rs.getString(3)%></td>
			<td><%= rs.getString(4)%></td>
		</tr>
	<%
		}
		rs.close();
		stmt.close();
		cn.close();
	}

	catch(Exception e)
	{
		out.println(e);
	}
		
%>
</body>
</html>