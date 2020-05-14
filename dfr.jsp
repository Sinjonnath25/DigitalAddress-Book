<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/TEST";%>
<%!String user = "root";%>
<%!String psw = "9748";%>
<%
String number=request.getParameter("number");
String name=request.getParameter("Name");
String address=request.getParameter("Address");
String dob=request.getParameter("DOB");
String sex=request.getParameter("gender");
String description=request.getParameter("Description");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update records set number=?,name=?,address=?,dob=?,sex=?,description=? where number="+number;
ps = con.prepareStatement(sql);
ps.setString(1,number);
ps.setString(2, name);
ps.setString(3, address);
ps.setString(4, dob);
ps.setString(5, sex);
ps.setString(5, description);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>