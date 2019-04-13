<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%
if((request.getParameter("username").equalsIgnoreCase("Apoorva"))&& (request.getParameter("pass").equalsIgnoreCase("apo")))
{
%>
<jsp:forward page="asendname.jsp"></jsp:forward>
<% 
}else{
%>
<jsp:forward page="index.jsp"></jsp:forward>
<% 
}
%>

 