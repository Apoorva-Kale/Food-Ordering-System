<!DOCTYPE html>
<html>
<body>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try
{
	String username=request.getParameter("username");
	String phno=request.getParameter("ph");
	String branch=request.getParameter("branch");
	String address=request.getParameter("addr");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	PreparedStatement ps=con.prepareStatement("insert into Customer values('"+username+"','"+phno+"','"+branch+"','"+address+"')");

	//ps.setInt(1,2);

	ps.executeUpdate();
	out.println("Registered!");

}
catch(Exception e)
{
	System.out.println(e);
}
%>

<a href="admin.jsp">Proceed</a>
</body>
</html>


