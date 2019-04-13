<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*"%>
<%	
try
{
	String sabzi=request.getParameter("sabzi");
	String roti=request.getParameter("roti");
	String dal=request.getParameter("dal");
	String rice=request.getParameter("rice");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	PreparedStatement ps=con.prepareStatement("insert into Order values('"+sabzi+"','"+roti+"','"+dal+"','"+rice+"')");
	//ps.setInt(1,2);

	ps.executeUpdate();
	out.println("Registered!");

}
catch(Exception e)
{
	System.out.println(e);
}
%>