<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="CSS/carhome_style.css">
	<title></title>
	<style type="text/css">
	h1{
			color: yellow;
		}
		</style>
</head>
<body bgcolor="black">
	<div class="leftmenu">
			<img class="logo" src="../images/log.jpg" style="height:92px; width: 285px; margin-left: 25px; margin-top: 5px">
						
		</div>
	

	<?php
	$conn=mysqli_connect("localhost","root","");
	if(!$conn)
	{
		echo "connection_aborted";
	}
	if(!mysqli_select_db($conn,"carbi")){
		echo "Database Not Connected";
	}
	$name=$_POST['first_name'];
	$pass=$_POST['password'];
	$gender=$_POST['gender'];
	$sql="INSERT INTO accounts VALUES('$name','$pass','$gender')";
	$tr=mysqli_query($conn,$sql);
	if (!$tr) {
		# code...
		echo "<center><h1>Registration Failure:</h1>";
	}
	else
	{
		echo "<center><h1>Registered</h1></center>";
		header("refresh:2; url='../login.html'");
	}
	mysqli_close($conn)
?>


</body>
</html>
