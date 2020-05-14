<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Created a Database</title>
</head>
<body>
	<center>
		<%@ include file="header.jsp"%>
		<br><br>
<h2>Created Records</h2>
<%
Connection connection = null;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TEST", "root", "9748");
Statement statement = con.createStatement();
String query = "SELECT *FROM records";
ResultSet resultSet = statement.executeQuery(query);

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
<%
while(resultSet.next()){%>
<tr>
<td><%=resultSet.getString("number") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("sex") %></td>
<td><%=resultSet.getString("description") %></td>
</tr>
<%
}
con.close();
}
catch (Exception e)
{
out.println("An error occurred.");
}
%>
</table>
<br><br><br>
Go to <a href="abc.jsp">Welcome</a> Page<br><br>
<%@ include file="footer.jsp"%>
</center>
</body>
</html>