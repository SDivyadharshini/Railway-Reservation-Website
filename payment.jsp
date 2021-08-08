<%@ page import="java.sql.*" %>
<%
String card=request.getParameter("card");
String cardname=request.getParameter("cardname");
String cvv=request.getParameter("cvv");
String amnt=request.getParameter("amnt");




try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/books","root","Ddteddy007_");
	Statement st=con.createStatement();
	st.executeUpdate("insert into payment (card,cardname,cvv,amnt) values('"+card+"','"+cardname+"','"+cvv+"','"+amnt+"')");
	response.sendRedirect("saving.html");
	
	
}
catch(Exception e)
{
	response.sendRedirect("error.html");
}
%>