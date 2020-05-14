<HTML>
<HEAD>
<TITLE>RESULT PORTAL</TITLE>
<script language="javascript">
function fun()
{ 
  var n=document.getElementById("name").value;
  var c=document.getElementById("class").value;
  var roll_num=document.getElementById("roll").value;
  var s1=document.getElementById("sub1").value;
  var s2=document.getElementById("sub2").value;
  var s3=document.getElementById("sub3").value;
  if(n=="")
    {
	  alert("Name cannot be empty");
	  document.getElementById("name").focus();
	  return false;
	}
  if(c=="")
    {
	  alert("Roll Number cannot be empty");
	  document.getElementById("class").focus();
	  return false;
	}
  if(roll_num=="")
    {
	  alert("Roll Number cannot be empty");
	  document.getElementById("roll").focus();
	  return false;
	}
  if(s1=="")
    {
	  alert("Subject 1 Marks cannot be empty");
	  document.getElementById("sub1").focus();
	  return false;
	}
   if(s2=="")
    {
	  alert("Subject 2 Marks cannot be empty");
	  document.getElementById("sub2").focus();
	  return false;
	}
	if(s3=="")
    {
	  alert("Subject 3 Marks cannot be empty");
	  document.getElementById("sub3").focus();
	  return false;
	}
	
  return true;
}

function check_data(x)
   {
      
      var str="0123456789.";
	  i=0;
	  number_of_decimal_point=0;
	  while(i<x.value.length)
	      {
		    
		    if(str.indexOf(x.value.charAt(i))==-1)
			    {
				  x.value=x.value.substring(0,i);
				  return false;
				}
			 if(".".indexOf(x.value.charAt(i))!=-1)
			    {
				  number_of_decimal_point++;
				  if(number_of_decimal_point>1)
				    {
					   x.value=x.value.substring(0,i);
				       return false;
					 }
				}
			 i++;
		  }
	 
   }


</script>
</HEAD>

<BODY>
<%@include file="header.jsp" %>
<br/><br/><br/><br/><br/><br/>
<center>
	<h1>Student Result Portal</h1>
<form name="frm" method="post" action="studentResult.jsp" onSubmit=" return fun();">
<table>
<tr>
 <td>Enter Name</td>
 <td><input type="text" name="name" id="name" value="";" ></td>
</tr>
<tr>
 <td>Enter Class</td>
 <td><input type="text" name="class" id="class" value="";" ></td>
</tr>
<tr>
 <td>Enter Roll Number</td>
 <td><input type="text" name="roll" id="roll" value="";" ></td>
</tr>
<tr>
 <td>Enter Marks of Subject 1</td>
 <td><input type="text" name="sub1" id="sub1" value="" onKeyUp="check_data(this);" ></td>
</tr>
<tr>
 <td>Enter Marks of Subject 2</td>
 <td><input type="text" name="sub2" id="sub2" value="" onKeyUp="check_data(this);" ></td>
</tr>
<tr>
 <td>Enter Marks of Subject 3</td>
 <td><input type="text" name="sub3" id="sub3" value="" onKeyUp="check_data(this);" ></td>
</tr>
</table>
<br/>
<input type="submit" value="SUBMIT">&nbsp;&nbsp;
<input type="reset" value="CLEAR">
</form>

</center>
</BODY>
</HTML>
