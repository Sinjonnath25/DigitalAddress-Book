<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String number = request.getParameter("number");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "TEST";
String userid = "root";
String password = "9748";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<center>
<%@ include file="header.jsp"%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from records where number="+number;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update_process.jsp">
<input type="hidden" name="number" value="<%=resultSet.getString("number") %>">
<table>
			<tr>
				<td>Enter Name</td>
				<td><input type="text" name="Name" id="Name" value="";></td>
			</tr>
			<tr>
				<td>Enter Address</td>
				<td><input type="text" name="Address" id="Address" value="";></td>
			</tr>
			<tr>
				<td>Enter DOB</td>
				<td><input type="date"  name="DOB" id="DOB" ></td>
			</tr> 
			<tr>
				<td>Choose Sex</td>
				<td><input type="radio" name="gender" id="gender" value="M"> Male 
  				<input type="radio" name="gender" id="gender" value="F"> Female
  				<input type="radio" name="gender"  id="gender" value="O"> Other</td>
			</tr>
			<tr>
				<td>Add Description</td>
				<td><input type="text" name="Description" id="Description"></td>
			</tr>
		</table>
		<br><br>
		<input type="submit" name="Submit" value="SUBMIT">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="Clear" value="CLEAR">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<%@ include file="footer.jsp"%>
</center>
</body>
</html>