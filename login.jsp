<%@ page import="java.sql.*" %>
<%
String uname=request.getParameter("uname");
String psw=request.getParameter("psw");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/books","root","Ddteddy007_");
	Statement st=con.createStatement();
	st.executeUpdate("insert into login (uname,psw) values('"+uname+"','"+psw+"')");
	response.sendRedirect("ticket.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>