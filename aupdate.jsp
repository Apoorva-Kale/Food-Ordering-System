<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
try
{
	String name=request.getParameter("nm");
	String phno=request.getParameter("ph");
	String branch=request.getParameter("br");
	String address=request.getParameter("addr");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	PreparedStatement ps=con.prepareStatement("update Customer set username='"+name+"', branch='"+branch+"',address='"+address+"'  where phno= '"+phno+"'");
	ps.executeUpdate();

	out.println("Updated!");
}

catch(Exception e)
{
	System.out.println(e);
}
%>
