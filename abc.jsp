<!DOCTYPE html>
<html>
<head>
	<title>Address Book</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
	<center>
		<%@ include file = "header.jsp"%>
	</center>
<div class= "container">
	<div class="row row-cols-1 row-cols-md-2">
<div class="card text-white bg-success mb-3" style="max-width: 12rem;">
  <div class="card-header"><h5 class="card-title">Add</h5></div>
  	<div class="card-body">
    <p class="card-text">Add a new record</p>
    <a href="add_f.jsp" class="btn btn-primary">Add Record</a>
  </div>
</div>&nbsp;&nbsp;&nbsp;&nbsp;
<div class="card text-white bg-danger mb-3" style="max-width: 12rem;">
  <div class="card-header"><h5 class="card-title">View</h5></div>
  	<div class="card-body">
    <p class="card-text">View records</p>
    <a href="profile.jsp" class="btn btn-primary">View Details</a>
  	</div>
</div>&nbsp;&nbsp;&nbsp;&nbsp;
<div class="card text-white bg-warning mb-3" style="max-width: 12rem;">
  <div class="card-header"><h5 class="card-title">Delete</h5></div>
  	<div class="card-body">
    <p class="card-text">Delete a record</p>
    <a href="delete.jsp" class="btn btn-primary">Delete Record</a>
  	</div>
  	</div>&nbsp;&nbsp;&nbsp;&nbsp;
<div class="card text-white bg-dark mb-3" style="max-width: 12rem;">
  <div class="card-header"><h5 class="card-title">Search</h5></div>
  	<div class="card-body">
    <p class="card-text">Search a record</p>
    <a href="search.jsp" class="btn btn-primary">Search Record</a>
  	</div>
    </div>&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="card text-white bg-secondary mb-3" style="max-width: 12rem;">
  <div class="card-header"><h5 class="card-title">Update</h5></div>
    <div class="card-body">
    <p class="card-text">Update records</p>
    <a href="update1.jsp" class="btn btn-primary">Update Records</a>
    </div>
</div>
</div>
</div>
<center>
<%@ include file="footer.jsp"%>
</center>
</body>
</html>