<!DOCTYPE html>
<html>
<head>
	<title>Feedback management</title>
	<style type="text/css">
		body
		{
			background-image: url("bk.jpg");
			background-size: 1550px;
			 

		}
		#div
		{
			width: 600px;
			height: 800px;
			background-color: white;
			opacity: 0.3;

			
		}
		.log
		{
			font-size: 35px;
			text-decoration: none;
			color: black;
		}
		#d
		{
			background-color: none;
			color: white;
			opacity: 1.2;
			
			
		}
		#d a
		{
			font-size: 25px;
		}

		#sig
		{
			text-decoration: none;
			color: blue;
			font-size: 20px;
		}
		#ld
		{
			background-color: black;
			width: 1500px;
			height: 230px;
			font-size: 20px;


		}
		#ld a
		{
			color: white;
			text-decoration: none;
		}
		.in
		{
			width: 300px;
			height: 20px;
			border-color: lightblue;
		}
		#in
		{
			width: 300px;
			background-color: red;
			color: white;
			height: 30px;
		}
		.table
		{
			background-color: white;
			height: 400px;
			width: 400px;
		}
		img
		{
			border-radius: 360px;
		}



	</style>
</head>
<body>
	
	<nav id="d" align="right">
		<div id="lg">

		<a class="log" href="index.php">&nbsp;&nbsp;Log in&nbsp;&nbsp;&nbsp;</a>
		</div>	
	</nav>
	<br><br><br><br>

	<center>
		<div class="div">
			
			<div>
				
				<table class="table">
					<tr>
						<td  align="center"><img src="https://khitguntur.ac.in/grievancemaster/images/student.png" height="130" width="180"></td>
					</tr>
					<form  method="post">
						<tr>
							<td><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email</label></td>
						</tr>
						<tr>
							<td align="center"><input class="in" type="text" name="email" required placeholder="email"></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>

						<tr>
							<td><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;New Password</label></td>
						</tr>
						<tr>
							<td align="center"><input class="in" type="Password" name="pass" required placeholder="password"></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr>
							<td><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Re-type Password</label></td>
						</tr>
						<tr>
							<td align="center"><input class="in" type="Password" name="rpass" required placeholder="Re-type password"></td>
						</tr>
						<tr>
							<td><br></td>
							<td><br></td>
						</tr>
						<tr><td align="center"><input id="in" type="submit" name="reset" value="Reset"></td></tr>
					</form>
					<tr><td align="center">
				
				<tr>
					<td></td>
				</tr>
				</table>
				<br>
				
				
			</div>

		</div><br><br>
		
	</center>
	

</body>
</html>
<?php
	$conn=mysqli_connect('localhost','root','','feedback_system');
	if (isset($_POST['reset'])) {
		# code...
		$email=$_POST['email'];
		$password=$_POST['pass'];
		$password1=$_POST['rpass'];
   
		if ($password==$password1) {
			# code...
			$sq="SELECT * FROM faculty where email='$email'";
			$res=mysqli_query($conn,$sq);
			$ro=mysqli_num_rows($res);
			if ($ro>0) {
				$password=md5($password);

				# code...
				$q="UPDATE `faculty` SET `pass`='$password' WHERE email='$email'";
				$qr=mysqli_query($conn,$q);
				if ($qr) {
					# code...
					echo "<center><h1>Password Changed</h1></center>";

				}
				else
				{
					echo "<center><h1>Failed</h1></center>";
				}
			}
			else
			{
				echo "<center><h1>Rollno not exists</h1></center>";
			}
		}
		else
		{
			echo "<center><h1>Passwords doesn't match </h1></center>";
		}
	}
   
?>