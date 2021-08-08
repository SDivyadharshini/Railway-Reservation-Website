<%@ page import="java.sql.*" %>
<%
String reser=request.getParameter("reser");
String froms=request.getParameter("froms");
String tooo=request.getParameter("tooo");
String trains=request.getParameter("trains");
String adults=request.getParameter("adults");
String child=request.getParameter("child");
String dates=request.getParameter("dates");
String classes=request.getParameter("classes");



try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/books","root","Ddteddy007_");
	Statement st=con.createStatement();
	st.executeUpdate("insert into tickets (reser,froms,tooo,trains,adults,child,dates,classes) values('"+reser+"','"+froms+"','"+tooo+"','"+trains+"' ,'"+adults+"' ,'"+child+"' ,'"+dates+"' ,'"+classes+"')");
	response.sendRedirect("payment.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>