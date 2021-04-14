<html>
<head>
 <title>Login</title>
 <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
 

 <?php
 	if(isset($_GET['pesan'])){
 		if($_GET['pesan']=="gagal"){
 			echo "Username dan Password tidak sesuai !";
 		}
 	}
 ?>
 </div>
 <div class="kotak">
	 <h3 align="center">SILAHKAN LOGIN</h3>
	 
	 <form action="cek_login.php" method="post">
		 <label>Username</label>
		 <input type="text" name="username" placeholder="Username" required="required">
		 
		 <label>Password</label>
		 <input type="password" name="password" placeholder="Password" required="required">

		 <input type="submit" value="LOGIN">
	 </form>
 
 </div>
 
 
</body>
</html>