<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
<%	
	long ph=0;
	String cname = request.getParameter("nm");
	String password = request.getParameter("pass");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con = DriverManager.getConnection("jdbc:odbc:JSPDSN");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from CustomerAccount where cname='"+cname+"' ");
	if(rs.next())
	{
		ph=rs.getLong(4);
		if(rs.getString(3).equals(password));
		{
			out.println("welcome" + " " + cname);
		}
	}

	session.setAttribute("Phone",ph);
%>

 <a href="menu.jsp">Proceed</a>
</body>
</html>