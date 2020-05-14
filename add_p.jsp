<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,javax.sql.*"%>
<center>
	<%@ include file="header.jsp"%>
<%
String number=request.getParameter("Number");
String name=request.getParameter("Name");
String address=request.getParameter("Address");
String dob=request.getParameter("DOB");
String sex=request.getParameter("gender");
String description=request.getParameter("Description");
/*out.println(number);
out.println(dob);
out.println(sex);*/

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "9748");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into records values('"+number+"','"+name+"','"+address+"','"+dob+"','"+sex+"','"+description+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<br>
<br>
Go to <a href="abc.jsp">Welcome</a> Page<br><br><br><br>
<%@ include file="footer.jsp"%>
</center>
