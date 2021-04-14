<!DOCTYPE html>
<html>
<head>
	<title>PEKERJAAN ADMIN</title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
	

	<main>
	<nav style="float: left;">
		<header>
			<ul>
				<a href="halaman_admin.php?page=pekerjaan"><li>DASHBOARD</li></a>
				<a href="halaman_admin.php?page=pegawai"><li>PEGAWAI</li></a>
				
			</ul>
		</header>
		<a href="logout.php"><footer style="bottom: 0;">LOGOUT</footer></a>
	</nav>

	<div class="badan">
		<?php 
		if (isset($_GET['page'])) {
		 	$page = $_GET['page'];

		 	switch ($page) {
		 		case 'pekerjaan':
		 			include "halaman/pekerjaan.php";
		 			break;
		 		case 'pegawai':
		 			include "halaman/data_pegawai.php";
		 			break;
		 	}
		 }else{
		 	include "halaman/pekerjaan.php";
		 } 

		 ?>

	</div>
	</main>

		
</body>
</html>



