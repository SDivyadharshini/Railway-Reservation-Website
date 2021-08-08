<%@ page import="java.sql.*" %>
<%
String names=request.getParameter("names");
String dob=request.getParameter("dob");
String gen=request.getParameter("gen");
String email=request.getParameter("email");
String nooo=request.getParameter("nooo");
String psw=request.getParameter("psw");
String repeatt=request.getParameter("repeatt");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/books","root","Ddteddy007_");
	Statement st=con.createStatement();
	st.executeUpdate("insert into register(names,dob,gen,email,nooo,psw,repeatt) values('"+names+"','"+dob+"','"+gen+"','"+email+"','"+nooo+"','"+psw+"','"+repeatt+"')");
	response.sendRedirect("login.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>