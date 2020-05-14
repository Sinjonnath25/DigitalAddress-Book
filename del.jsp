<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<center>
	<%@ include file="header.jsp"%>
<%
String number=request.getParameter("Number");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "9748");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM records WHERE number="+number);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</center>
<!DOCTYPE html>
<html>
<head>
	<title>Delete Page</title>
</head>
<body>
<center>
	Go to <a href="abc.jsp">Welcome</a> Page<br><br>
	<%@ include file="footer.jsp"%>
</center>
</body>
</html>
