<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="royal.css">
	<title>Cars List</title>
</head>
<body>
	<div class="bg">
		<div class="menu">
			<div class="leftmenu">
				<img class="logo" src="../images/log.jpg" style="height:92px; width: 285px; margin-left: 25px; margin-top: 5px">
			</div>
			<div class="rightmenu">
				<ul>
					<a href="..\home.html"><li >Home</li></a>
					<a href="..\Car_home.html"><li id="firstlist">Car</li></a>
					<a href="..\Bike.html"><li >Bikes</li></a>
					
					<a href="Login.html"><li>Log Out</li></a>

				</ul>
			</div>
		</div><br>
	
	<div class="bg">
	<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("carbi");
$value="400000";
$query="SELECT *FROM cars WHERE price <= $value";
$result=mysql_query($query);
echo "<table border=2><tr><th>Brand</th><th>Name</th><th>Displacement</th><th>Power</th><<th>Milage</th><th>Price</th><th>Type</th></tr></table>";

while ($res=mysql_fetch_array($result)) {
	# code...
	 echo "<table border=2><tr><td>$res[1]</td><td>$res[2]</td><td>$res[3]</td><td>$res[4]</td><td>$res[5]</td><td>$res[6]</td><td>$res[7]</td>";
}
mysql_close($con);
?>
</div>

</body>
</html>

