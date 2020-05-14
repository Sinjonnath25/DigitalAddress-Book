<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*,javax.sql.*" %>
<html>
<head>
<title>Created a Database</title>
</head>
<body>
<center>
	<%@ include file="header.jsp"%>
<%String number=request.getParameter("Number");%>
<br><br>
<h1>Searched Records</h1>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "9748");
Statement statement = con.createStatement();
//int i=statement.executeUpdate("DELETE FROM records WHERE number="+number);
//String query = "SELECT *FROM records where number="+number+";";
//String sql ="select * from user_data where roll_no="+roll_no+"' ";
ResultSet r = statement.executeQuery("SELECT * FROM records where number='"+number+"'");

%>
<table border="1">
<tr>
<td>Number</td>
<td>Name</td>
<td>Address</td>
<td>DOB</td>
<td>Sex</td>
<td>Description</td>
</tr>
<%if(r.next()){%>
<tr>
<td><%=r.getString("number") %></td>
<td><%=r.getString("name") %></td>
<td><%=r.getString("address") %></td>
<td><%=r.getString("dob") %></td>
<td><%=r.getString("sex") %></td>
<td><%=r.getString("description") %></td>
</tr>
<%
}
%>
</table>
<br><br><br>
Go to <a href="abc.jsp">Welcome</a> Page<br><br>
<%@ include file="footer.jsp"%>
</center>
</body>
</html>