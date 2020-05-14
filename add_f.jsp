<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
	<script language="javascript">
	function fun()
	{
  	var p=document.getElementById("Number").value;
  	var q=document.getElementById("Name").value;
  	var m1 = document.getElementById("Address").value;
  	var m2 = document.getElementById("Sex").value;
  	var m3 = document.getElementById("Description").value;
	if(p=="")
    {
	  alert("Id Number cannot be empty");
	  document.getElementById("Number").focus();
	  return false;
	}
   	if(q=="")
    {
	  alert("Name cannot be empty");
	  document.getElementById("Name").focus();
	  return false;
	}
	if(m1=="")
    {
	  alert("Address cannot be empty");
	  document.getElementById("Address").focus();
	  return false;
	}	
	if(m2=="")
    {
	  alert("Choose Gender");
	  document.getElementById("gender").focus();
	  return false;
	}
  	return true;
}
</script>
</head>
<body>
	<center>
		<%@include file = "header.jsp"%>
		<br><br><br>
		<form name="frm" method="post" action="add_p.jsp" onSubmit=" return fun();">
			<table>
			<tr>
				<td>Enter ID No.</td>
				<td><input type="text" name="Number" id="Number" value="";></td>
			</tr>
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
		<script>
document.getElementById("Number").focus();
</script>
	</center>
	<br><br><br>
	<%@include file= "footer.jsp"%>
</body>
</html>