<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="royal.css">
	<title>Bike List</title>
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
					<a href="..\Car_home.html"><li>Car</li></a>
					<a href="..\Bike.html"><li id="firstlist">Bikes</li></a>
					
					<a href="Login.html"><li>Log Out</li></a>

				</ul>
			</div>
		</div><br>
	
	<div class="tab">
	<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("carbi");
$value_min="60000";
$value_max="100000";
$query="SELECT *FROM bikes where price > $value_min AND price < $value_max";
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

