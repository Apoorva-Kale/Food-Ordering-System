<%@page language="java" import="java.util.*, java.text.SimpleDateFormat" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Meal1</title>
</head>
<body>

<%	
try
{
	//to fetch phone number through session
	Long s = (Long)session.getAttribute("Phone");
	long ph=s.longValue();
	out.println(ph);
	String sabzi=request.getParameter("sabzi");
	String roti=request.getParameter("roti");
	String dal=request.getParameter("dal");
	String rice=request.getParameter("rice");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:JSPDSN");
	//java.util.Date d = new java.util.Date();

		java.util.Date date=new java.util.Date();
		SimpleDateFormat dt = new SimpleDateFormat("dd-MM-yyyy");
		String dd = dt.format(date);
		out.println(dd);

		int count = 0;

	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from Meal1");

	while(rs.next())
	{
		count++;
	}

	int id=count++;

	PreparedStatement ps=con.prepareStatement("insert into Meal1 values("+id+",'"+sabzi+"','"+roti+"','"+dal+"','"+rice+"','"+dd+"',"+ph+")");
	
/*	//out.println(d);
	ps.setInt(1,105);
	ps.setString(2,sabzi);
	ps.setString(3,roti);
	ps.setString(4,dal);
	ps.setString(5,rice);
	ps.setString(6,dd);
	ps.setLong(7,ph);*/

	ps.executeUpdate(); 
	out.println("Your order is placed!");



}
catch(Exception e)
{
	System.out.println(e);
}
%>

<a href="report.html">Proceed</a>
</body>
</html>