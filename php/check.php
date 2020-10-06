<!DOCTYPE html>
<html>
<head>
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
	$conn=mysqli_connect('localhost','root','');
	if (!$conn) {
		# code...
		echo "connection_aborted";
	}
	if (!mysqli_select_db($conn,"carbi")) {
		# code...
		echo "Database Not Selected";
	}
	if (isset($_POST['login'])) {
		# code...
		$name=$_POST['username'];
		$pass=$_POST['password'];
		$sql="SELECT * FROM accounts WHERE name='$name' AND password='$pass'";
		$query=mysqli_query($conn,$sql);
		$db_name="";
		$db_pass="";
		while ($column=mysqli_fetch_array($query)) {
			# code...
			$db_name=$column['name'];
			$db_pass=$column['password'];
		}
		if ($name==$db_name && $pass==$db_pass) {
			# code...
			echo "<center><h1>Login Success</h1></center>";
			header("refresh:3; url='../home.html'");
		}
		else
		{
			echo "<script>alert('Enter Correct Credential');</script>";
		}
	}
	?>
</body>
</html>



