<%@page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%	
try
{
	String s = (String)session.getAttribute("Phone");
	out.println(s);
	String sabzi=request.getParameter("sabzi");
	String roti=request.getParameter("roti");
	String dal=request.getParameter("dal");
	String rice=request.getParameter("rice");
	String dessert=request.getParameter("dessert");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	out.println("driver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	out.println("conn");
	PreparedStatement ps=con.prepareStatement("insert into Meal2 values(?,?,?,?,?)");

	//out.println("check");
	ps.setString(1,sabzi);
	ps.setString(2,roti);
	ps.setString(3,dal);
	ps.setString(4,rice);
	ps.setString(5,dessert);

	ps.executeUpdate();
	out.println("Your order is placed!");

}
catch(Exception e)
{
	System.out.println(e);
}
%>
