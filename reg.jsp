<!DOCTYPE html>
<html>
<body>
<div>
		<jsp:include page="header.jsp"></jsp:include>
</div>
	<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*"%>
<%
try
{
	String cname=request.getParameter("nm");
	String email=request.getParameter("eid");
	String password=request.getParameter("pass");
	long phone=Integer.parseLong(request.getParameter("ph"));
	String branch=request.getParameter("br");
	String address=request.getParameter("addr");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	PreparedStatement ps=con.prepareStatement("insert into CustomerAccount values('"+cname+"','"+email+"','"+password+"',"+phone+",'"+branch+"','"+address+"')");

	//ps.setInt(1,2);

	ps.executeUpdate();
	out.println("Registered!");

}
catch(Exception e)
{
	System.out.println(e);
}
%>



</body>
</html>


