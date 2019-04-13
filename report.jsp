<%@ page import="java.io.*"%>
<%@ page import="java.sql.*, javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Report</title>
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
	public class report extends HttpServlet
	{
		public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException 
		{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			long ph=Integer.parseLong(request.getParameter("ph"));
			//Long s = (Long)session.getAttribute("Phone");
			//long ph=s.longValue();
			out.println(ph);
			try
			{
				Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
				Connection cn = DriverManager.getConnection("jdbc:odbc:JSPDSN");
				PreparedStatement ps = new prepareStatement("select * from Meal1 where phone=?");
				ps.setInt(1,ph);
				ResultSet rs = ps.executeQuery();
				%>	

				<table>
				<tr>
					<!--<th>Order</th>-->
					<!--<th>Phone number</th>-->
					<th>Date</th>
					<th>Sabzi</th>
					<th>Roti</th>
					<th>Dal</th>
					<th>Rice</th>
				</tr>
				<%
					while(rs.next())
			{%>
				<tr>
					<!--<td><%= rs.getInt(1)%></td>
					<td><%= rs.getLong(7)%></td>-->
					<td><%= rs.getString(6)%></td>
					<td><%= rs.getString(2)%></td>
					<td><%= rs.getString(3)%></td>
					<td><%= rs.getString(4)%></td>
					<td><%= rs.getString(5)%></td>
				</tr>
			<%
			
			rs.close();
			stmt.close();
			cn.close();
			}	
			catch(Exception e)
			{
				out.println(e);
			}
		
		}
	}
	
%>
</body>
</html>