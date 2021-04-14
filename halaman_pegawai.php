<!DOCTYPE html>
<html>
<head>
	<title>PEKERJAAN PEGAWAI</title>
	<link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
	<?php 
	session_start();

	// cek apakah yang mengakses halaman ini sudah login
	if($_SESSION['level']==""){
		header("location:index.php?pesan=gagal");
	}

	?>
	<main>
	<nav style="float: left;">
		<header>
			<ul>
				<a href=""><li>PEKERJAAN</li></a>
				<a href=""><li>RIWAYAT</li></a>
				
			</ul>
		</header>
		<a href="logout.php"><footer style="bottom: 0;">LOGOUT</footer></a>
	</nav>

<div class="">
	<div class="selesai">
		<table >
		<tr>
			<th>NO</th>
			<th>Nama</th>
			<th>NIM</th>
			<th>OPSI</th>
		</tr>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"SELECT * FROM pekerjaan");
		while($d = mysqli_fetch_array($data)){
			?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['deadline']; ?></td>
				<td><?php echo $d['desc']; ?></td>
				<td><a href="selesai.php?id=<?php echo $d['id']; ?>" style="color: blue;">SELESAI</a></td>
			</tr>
			<?php 
		}
		?>
	</table>

	</div>
	</div>
</main>

</body>
</html>